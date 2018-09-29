#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
 "Go Go GO" => 'home/maayankfir/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'home/maayankfir/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '< home/maayankfir/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'home/maayankfir/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => 'home/maayankfir/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => 'home/maayankfir/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'home/maayankfir/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  puts  "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program "
end



def list(my_songs)

  count = 1
  my_songs.collect do |k, v|
    puts "#{count}. #{k} "
    count += 1
  end
end


def play(my_songs)

  "Please enter a song name or number:"
  user_choice = gets.chomp
  if my_songs.has_key?(user_choice)
    puts "Playing #{user_choice}"
    system "open #{my_songs[user_choice]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_command = gets.chomp
  if user_command == "help"
    help
  elsif user_command == "list"
      list(my_songs)
    elsif user_command == "play"
      play(my_songs)
    elsif user_command == "exit"
      exit_jukebox
  end
end
