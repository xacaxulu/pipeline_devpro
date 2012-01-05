class OpportunityType < ActiveRecord::Base
  has_many :programs
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"
end
