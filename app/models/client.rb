class Client < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :divisions, :dependent => :destroy
  validates_presence_of :name

end
