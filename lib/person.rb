require 'pry'

class Person
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    @@all = []

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @@all << self
    end

    def self.all
        @all
    end

    def happiness=(num)
        @happiness = num
        # self.happiness.clamp(0, 10)
        @happiness = 10 if @happiness > 10 
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(num)
        @hygiene = num
        # self.hygiene.clamp(0, 10)
        @hygiene = 10 if @hygiene > 10 
        @hygiene = 0 if @hygiene < 0
    end


    def happy?
       @happiness > 7 
    end


    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        elsif topic != "politics" && topic != "weather"
            "blah blah blah blah blah"
        end
    end
        
end

