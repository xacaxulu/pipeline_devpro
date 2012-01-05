class Division < ActiveRecord::Base
  validates_uniqueness_of :name, :scope => :client_id
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :practice_group_id, :on => :create, :message => "can't be blank"
  validates_presence_of :client_id, :on => :create, :message => "can't be blank"
  belongs_to :client
  has_many :programs
  belongs_to :practice_group

end
