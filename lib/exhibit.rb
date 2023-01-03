class Exhibit
    attr_reader :name,
                :cost,
                :interests
    def initialize(info)
        @name = info[:name]
        @cost = info[:cost]
    end

end