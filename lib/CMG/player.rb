module CMG

  require 'active_model'
  
  # Class that will be used to create new instances of players
  class Player
    include ::ActiveModel::Validations
    attr_reader :name
    attr_accessor :points

    validates :name, presence: true

    def initialize(name)
      @name = name
      @points = { power: 0,
                  research: 0,
                  faith: 0
                }
    end
  end
end
