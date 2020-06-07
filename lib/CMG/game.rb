module CMG
  require 'active_model'

  class Game
    include ::ActiveModel::Validations
    attr_reader :player

    validates :player, presence: true

    def initialize(name)
      @player = CMG::Player.new(name)
    end
  end
end
