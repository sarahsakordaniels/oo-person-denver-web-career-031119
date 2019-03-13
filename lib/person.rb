class Person


def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account


def happiness=(happiness)
  @happiness=happiness
  if @happiness > 10
    @happiness = 10
  elsif @happiness < 0
    @happiness = 0
  end
end


def hygiene=(hygiene)
  @hygiene=hygiene
  if @hygiene > 10
    @hygiene = 10
  elsif @hygiene < 0
    @hygiene = 0
  end
end


def happy?
   @happiness > 7 ? true : false
end


def clean?
   @hygiene > 7 ? true : false
 end

 def get_paid(salary)
@bank_account += salary
return "all about the benjamins"
 end

def take_bath
@hygiene += 4
self.hygiene=(hygiene)
"♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  @hygiene -=3
  @happiness +=2
  self.hygiene=(hygiene)
  self.happiness=(happiness)
  '♪ another one bites the dust ♫'
end

def call_friend(name)
  self.happiness +=3
  name.happiness += 3
  "Hi #{name.name}! It's #{self.name}. How are you?"
end


def start_conversation(friend, topic)

if topic == "politics"
  self.happiness -=2
  friend.happiness -=2
  return "blah blah partisan blah lobbyist"
elsif topic == "weather"
  self.happiness +=1
  friend.happiness +=1
  return "blah blah sun blah rain"
else
  return "blah blah blah blah blah"
end



end
end
