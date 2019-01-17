class TowersOfHanoi

    attr_reader :towers

    def initialize
        @towers = Array.new(3){[]}
        populate
    end

    def populate
        3.downto(1) do |int|
            @towers[0] << int
        end
    end

    def move_disc(from_tower, to_tower)
			if valid_move?(from_tower,to_tower)
				self.towers[to_tower] << self.towers[from_tower].pop
			end
    end

    def play

    end
        
    def render

    end
		# if self.towers[to_tower].empty? || disc > self.towers[to_tower].last
		# 	return true
		
		def valid_move?(from_tower, to_tower)#these are indexes
			return false if self.towers[from_tower].empty? 
			disc = self.towers[from_tower].last 
			return true if self.towers[to_tower].empty? 
			return false if disc < self.towers[to_tower].last
			true
    end
end