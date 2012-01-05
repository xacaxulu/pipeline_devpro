class PracticeGroup < ActiveRecord::Base
  has_many :divisions
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"
end
