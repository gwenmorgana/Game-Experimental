

* Map
  - next_scene
  - opening_scene
* Engine
  - play
* Scene
  - enter
  * Death
  * Central Corridor
  * Laser Weapon Armory
  * The Bridge
  * Escape Pod


class Scene
  def enter()
  end
end


class Engine

  def initialize(scene_map)
  end

  def play()
  end
end

class Death < Scene

  @@quips = [
    "You died.  You kinda suck at this.",
     "Your mom would be proud...if she were smarter.",
     "Such a luser.",
     "I have a small puppy that's better at this."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
  end
end

class LaserWeaponArray < Scene

  def enter()
  end
end

class TheBridge < Scene

  def enter()
  end
end

class EscapePod < Scene

  def enter()
  end
end


class Map

  def initialize(start_scene)
  end

  def next_scene(scene_name)
  end

  def opening_scene()
  end
end


a_map = Map.new(central_corridor)
a_game = Engine.new(a_map)
a_game.play()
