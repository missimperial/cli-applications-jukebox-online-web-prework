require "pry"
def prompt
  puts "Please enter a command:"
end

def user_input
  input = gets.strip
end

def help
  puts "I accept the following commands:"
  puts " - help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(list)
  puts "Please enter a song name or number:"
  user = user_input
   if user.to_i <= list.length && user.to_i > 0
     puts "Playing #{list[user.to_i - 1]}"
     
   elsif list.include?(user.to_s)
     puts "Playing #{user.to_s}"
   else
     puts "Invalid input, please try again"
   end 
end

def list(list)
 list.each_with_index{|obj, i| puts "#{i + 1}. #{obj}"}
end

def exit_jukebox
  puts "Goodbye"
end 


def run(song)
#help
loop do
  prompt
  jukebox = user_input
  case jukebox
  when 'help'
    help
  when 'list'
    list(song)
  when 'play'
    play(song)
  when 'exit'
    exit_jukebox
   break
  end 
end
end 


  