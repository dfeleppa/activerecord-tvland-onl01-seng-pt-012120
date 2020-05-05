class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors
  belongs_to :network
  
  def actors_list
      self.actors.collect do |actor|
        "#{self.actor.first_name} - #{self.actor.lastname}"
      end.join(' ')
  end
end