# # your code goes here

class Person 

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def happiness=(index)
        @happiness = index

        if @happiness > 10 
            @happiness = 10 
        elsif @happiness < 0 
            @happiness = 0 
        else 
            @happiness
        end
    end

    def hygiene=(index)
        @hygiene = index

        if @hygiene > 10 
            @hygiene = 10 
        elsif @hygiene < 0 
            @hygiene = 0 
        else 
            @hygiene
        end
    end

    def happy? 
        if @happiness > 7 
            true 
        else
            false
        end
    end

    def clean? 
        if @hygiene > 7 
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account = salary + self.bank_account #these methods bank_account & happiness are created by our macros
        self.happiness = self.happiness + 1
        "all about the benjamins"
    end

    def take_bath 
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics" 
            self.happiness = self.happiness - 2 && person.happiness = person.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1 && person.happiness = person.happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end

    end
end


























# class Person 

#     attr_reader :name
#     attr_accessor :bank_account, :hap_points, :hyg_points

#     def initialize(name)
#         @name = name
#     end

#     def bank_account(bank_balance=25) 
#         @bank_balance = bank_balance
#     end

#     def happiness_points(hap_points=8)
#         max = 10
#         min = 0 
#         @hap_points = hap_points 
#         if hap_points <= max && hap_points >= min
#             hap_points
#         else 
#             puts "Invalid entry! Please pick between 0 and 10."
#         end 
            
#     end

#     def hygiene_points(hyg_points)
#         @hyg_points = hyg_points
#     end

#     def clean?
#         if @hyg_points > 7
#             true
#         else
#             false
#         end
#     end

#     def happy?
#         if @hap_points > 7
#             true
#         else
#             false
#         end 
#     end

#     def get_paid(salary)
#         @salary = salary
#         @bank_balance = @salary + @bank_balance
#         "all about the benjamins"
#     end

#     def take_bath
#         @hyg_points += 4
#         "♪ Rub-a-dub just relaxing in the tub ♫"
#     end

#     def work_out
#         @hap_points += 2
#         @hyg_points -= 3
#         "♪ another one bites the dust ♫"
#     end


#     def call_friend(friend)
#         self.hap_points += 3
#         friend.hap_points += 3
#         "Hi #{friend}! It's #{self.name} How are you?"
#     end

# end 


