class Player
    attr_reader :name, :hp

DEFAULT_HIT_POINTS = 100
DEFAULT_DAMAGE = 10

    def initialize(name)
        @name = name
        @hp = DEFAULT_HIT_POINTS
    end

    # def attack(player)
    #     player.receive_damage
    # end

    def receive_damage
        @hp -= DEFAULT_DAMAGE
    end
end
