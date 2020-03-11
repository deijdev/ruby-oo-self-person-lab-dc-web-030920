# your code goes here
require 'pry'

class Person 

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account= 25
        @happiness = 8
        @hygiene = 8
        
    end

    def happiness= (num)
        if num > 10
            @happiness = 10
        elsif num < 0 
            @happiness = 0 
        else
             @happiness = num
        end
    end

    def hygiene=(num)
        #binding.pry
        if num > 10
            @hygiene = 10
        elsif num < 0 
            @hygiene = 0 
        else
             @hygiene = num
        end
        return @hygiene
    end

    def happy?
        if  @happiness > 7 
            true
        else
            false
        end
    end

    def clean?
        if  @hygiene > 7 
            true
        else
            false
        end
    end

    def get_paid(salary)  
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
       # binding.pr
        self.hygiene=(self.hygiene + 4)
        #binding.pry
        # self.hygiene=(self.hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
       
             
    end

    


    # def bank_account= (balance)
    #     @bank_account = balance
    # end f
    
    # def bank_account
    #     @bank_account
    # end
    


end

