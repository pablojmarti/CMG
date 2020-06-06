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
      @resources = {  iron: generate_resources,
                      wood: generate_resources,
                      food: generate_resources,
                      water: generate_resources,
                      clay: generate_resources
      }
    end

    def generate_resources
      return rand(0..4)
    end

    def update_resources(resource, value)
      if ( @resources[resource] + value ) >= 99
        @resources[resource] = 99
      elsif ( @resources[resource] + value ) <= 0
        @resources[resource] = 0
      else
        @resources[resource] += value
      end
    end
  end
end
