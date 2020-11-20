class Actor < ActiveRecord::Base
  attr_accessor :full_name
  has_many :characters
  has_many :shows

  def full_name
   self.full_name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.collect {|character|"#{character.name} - #{character.show.name}"}
  end
end