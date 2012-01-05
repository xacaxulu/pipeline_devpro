class Program < ActiveRecord::Base
  validates_uniqueness_of :name, :scope => :division_id
  validates_presence_of :division_id, :on => :create, :message => "Program must belong to a Division"
  validates_presence_of :opportunity_type_id, :on => :create, :message => "can't be blank"
  validates_presence_of :funnel_stage_id, :on => :create, :message => "can't be blank"
  belongs_to :division
  belongs_to :opportunity_type #current_opportunity_type
  belongs_to :funnel_stage #current_funnel_stage
  has_many :fiscal_projections
  
  def full_name
    "#{division.name}: #{name}"
  end
  
end
  
