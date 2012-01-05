class FunnelStage < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :programs
  attr_accessible :funnel_stage_id
end
