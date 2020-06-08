module CMG
  require 'active_model'

  class Game 
    include ::ActiveModel::Validations

    attr_reader :player
    attr_accessor :turns

    validate :player, presence: true
    validates :turns, presence: true

    def initialize(name)
      @player = CMG::Player.new(name)
      @turns = 0
    end
  end
end
