
#Magic 8-Ball Ruby Script

#Accept a question for the 8-Ball
puts "What is your \"Yes/No\" question?"
question = gets.chomp

#Create Magic-8-Ball List of Possible Answers
possible_answers = ["It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"]

#Generate a random answer from the possible_answers array
magic_answer = possible_answers[rand(0..19)]



require 'rubygems'
require 'twilio-ruby'

account_sid = "AC4fe0229a4d0d7f61d2c55a00f786f0f3"
auth_token = "466a678bc66c6f885e1002cc6c38cdf3"
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "+441286727054", 
  :to =>"+44 7958 041177", 
  :body => "You asked: #{question} The Magic 8-Ball says: #{magic_answer}"
)
 
#print message info to the terminal
puts "The following message was texted to #{message.to}:" 
puts message.to

