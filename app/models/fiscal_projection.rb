class FiscalProjection < ActiveRecord::Base
  belongs_to :program
  validates_presence_of :program_id, :on => :create, :message => "can't be blank"
  validates_presence_of :year, :on => :create, :message => "can't be blank"
  validates_presence_of :month, :on => :create, :message => "can't be blank"
  validates_presence_of :amount, :on => :create, :message => "can't be blank"
  validates_numericality_of :amount, :on => :create, :message => "is not a number"
  validates_numericality_of :amount, :on => :update, :message => "is not a number"
  has_many :comments
  
  def self.find_current(programs)
    month = Date.today.month
    year = Date.today.year
    program_ids = programs.collect {|p| p.id}
    where(:program_id => program_ids).where("(fiscal_projections.month >= ? AND fiscal_projections.year = ?) OR (fiscal_projections.month < ? AND fiscal_projections.year = ?)", month, year, month, year+1)
  end
end