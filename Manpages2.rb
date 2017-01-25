#SUDDO CODE

#1) loop over main menu
#if user choses cmd line
#- call cmd line menu
# If user chooses search- done
#- Call search method
#If user chooses exit - done
#- Close Program - done

#This is test program for Github

def main_menu
  puts "CHEATSHEET"
  puts "1: Command Line"
  puts "2: Search"
  puts "3: Exit"
  puts "*****Make a Selection*****"

  user_input = gets.chomp
  case user_input.to_i
  when 1
    cmd_line
  when 2
    search
  when 3
    exit_program
  end
end

  def cmd_line

  puts "1: CP"
  puts "2: MV"
  puts "3: CD"
  puts "4: Main Menu"

  user_input = gets.chomp

  if user_input.to_i == 1
    puts `man cp`
  elsif user_input.to_i == 2
    puts `man mv`
  elsif user_input.to_i == 3
    puts `man cd`
  elsif user_input.to_i == 4
    main_menu
  end

end

def search
  puts "Enter a cmd"
  cmd = gets.chomp
  puts `man #{cmd}`
end

def exit_program
  puts "Goodbye See You Again!"
  exit(0)
end

main_menu
