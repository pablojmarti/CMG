module CMG

  require 'active_model'
  
  # Class that will be used to create new instances of players
  class Player
    include ::ActiveModel::Validations
    attr_reader :name
    attr_accessor :points, :resources

    validates :name, presence: true

    def initialize(name)
      @name = name
      @points = { power: 0,
                  research: 0,
                  faith: 0
                }
      @resources = {  iron: generateResources,
                      wood: generateResources,
                      food: generateResources,
                      water: generateResources,
                      clay: generateResources
                  }
    end

    def generateResources
      return rand(0..4)
    end
  end
end
