class StarSystem
  attr_reader :name, :planets

  def initialize (name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map{|planet| planet.name}
  end

  def get_planet_by_name(what_ever)
    return @planets.find{|planet| planet.name == what_ever}
  end

  def get_largest_planet()
    largest_planet = @planets.max_by{|planet| planet.diameter}
    return largest_planet
  end

  # def get_smallest_planet()
  #   return @planets.map.find.diameter{|planet| planet.diameter.size.min}
  # end
  def get_smallest_planet()
    smallest_planet = @planets.min_by{|planet| planet.diameter}
    return smallest_planet
  end

  def get_planets_with_no_moons()
      return @planets.find_all {|planet| planet.number_of_moons == 0}
  end
# didnt get these ones was stuck with max/min missed out the _by and was reasearching how to do it
  def get_planets_with_more_moons(number)
   planets_found = @planets.find_all { |planet| planet.number_of_moons > number}
   return planets_found.map { |planet| planet.name }
 end

  def get_number_of_planets_closer_than(distance)
      return @planets.count { |planet| planet.distance_from_sun < distance }
    end

end
