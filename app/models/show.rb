class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors
  belongs_to :network
  
  def actors_list
      actorss.collect do |actor|
        "#{actor.first_name} - #{actor.lastname}"
      end.join(' ')
  end
end