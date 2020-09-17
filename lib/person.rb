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
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness += 2
        @hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.each { |person| person.happiness += 3}
        friend.each { |friend| friend.happiness += 3}
    end

    def start_conversation

    end



end
