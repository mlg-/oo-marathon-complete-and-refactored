# require 'pry'
class ZooAtCapacity < StandardError
end

class Zoo
  attr_reader :season_opening_date, :season_closing_date, :cages, :employees
  def initialize(zoo_name, season_opening_date, season_closing_date)
    @zoo_name = zoo_name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    10.times do
      @cages << Cage.new
    end
    @employees = []

  end

  def add_employee(employee_object)
    @employees << employee_object
  end

  def open?(date_object)
    date_object <= season_closing_date && date_object >= season_opening_date
  end

  def add_animal(animal_object)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal_object
      elsif condition

        raise ZooAtCapacity
      end
    end
  end

end
