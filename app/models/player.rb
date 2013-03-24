require 'digest/sha1'

class Player
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :password, type: String

  belongs_to :account
  has_one :entry, autobuild: true

  attr_accessible :name, :password, :entry_attributes

  validates_presence_of :name, :entry, :account, :password
  validates_uniqueness_of :name

  accepts_nested_attributes_for :entry

  def password=(value)
    self.write_attribute(:password, Digest::SHA1.hexdigest(value))
  end
end
