module CMG

  require 'active_model'
  
  # Class that will be used to create new instances of players
  class Player
    include ::ActiveModel::Validations
    attr_reader :name, :points

    validates :name, presence: true

    def initialize(name)
      @name = name
    end
  end
end
