class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    put "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    characters.collect do |char|
      "#{char.name} - #{char.show.name}"
    end
  end
end