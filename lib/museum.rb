class Museum
    attr_reader :name,
                :exhibits,
                :patrons
    def initialize(name)
        @name = name
        @exhibits = []
        @patrons = []
    end

    def add_exhibit(exhibit)
        @exhibits << exhibit
    end

    def recommend_exhibits(patron)
        patron.interests.map do |interest|
            @exhibits.find { |exhibit| exhibit.name == interest}
        end
    end

    def admit(patron)
        @patrons << patron
    end

end