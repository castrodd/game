# This is a text-based adventure game played in the terminal

# Title and prompt
puts " "
puts "\t\t' A NIGHT OUT: an interactive vignette '"
puts " "
puts "\tYou are standing at a podium. You don't know how you got there."
puts "You look down and see a stack of papers. Someone in the crowd coughs impatiently."
puts "You wonder to yourself, 'Do I start reading? Do I dare to look around?'"
puts " "
print ">> "

# Get answer to question 1 and assign prompt for question 2
round_one = gets.chomp.downcase
done = false
round_two = nil

while !done
  if round_one.include?('read')
    round_two = 'a'
    done = true
  elsif round_one.include?('look')
    round_two = 'b'
    done = true
  else
    puts " "
    puts "You are so confused. To read, to look?"
    round_one = gets.chomp.downcase
  end
end

# Ask question 2 and assign prompt for question 3
case round_two
when 'a'
  puts " "
  puts "\tYou clear your throat and read the title at the top of the first page."
  puts "' INSTRUCTIONS FOR YOUR SURVIVAL '"
  puts "You hesitate. 'Should I continue reading? Should I make something up?'"
when 'b'
  puts " "
  puts "\tYou decide to look around. You cover your eyes to shield the blinding spotlight."
  puts "To your right, you see an empty row of folding chairs."
  puts "To your left, you see a large kiddie pool. You see something moving inside of it."
  puts "You look ahead into the audience. You start. The auditorium is fully booked."
  puts "And everybody in the crowd is dressed in a bear costume."
  puts "You think, 'What is in that pool? Or should I start reading this speech?'"
end

puts " "
print ">> "
round_three = gets.chomp.downcase
done = false

while !done
  if round_three.include?('read') && round_two == 'a'
    round_four = 'aa'
    done = true
  elsif round_three.include?('make') || round_three.include?('something')
    round_four = 'ab'
    done = true
  elsif round_three.include?('pool')
    round_four = 'ba'
    done = true
  elsif round_three.include?('read')
    round_four = 'bb'
    done = true
  else
    if round_two == 'a'
      puts " "
      puts "You are so confused. To read, to make something up?"
    else
      puts " "
      puts "You are so confused. Look at the pool, continue reading?"
    round_three = gets.chomp.downcase
  end
  end
end

# Ask question 3 and deliver ending

case round_four
when 'aa'
  puts " "
  puts "\tYou continue reading the lines on the page. 'I am proud to be here tonight before all of you,' you recite."
  puts "'And it is my honor to present myself for your consumption.' Consumption? That is odd."
  puts "Maybe it is a typo. You look up and see that the entire crowd is dressed in bear costumes."
  puts "'Do I really want to keep reading this thing? Or should I get the hell off stage?'"
when 'ab'
  puts " "
  puts "\tYou fumble for words. You slowly crumple up the pages on the podium."
  puts "You look out into the crowd for inspiration. You notice everybody is dressed as a bear."
  puts "You blurt out, 'What in the world...?'"
  puts "The bears in the first row begin to stand up. You look around and see empty folding chairs to your right."
  puts "'Time to grab a chair and fight or run for my pathetic life,' you whisper to yourself."
when 'ba'
  puts " "
  puts "\tYou slowly walk towards the kiddie pool. The water is black. Wait, that's not water."
  puts "The kiddie pool is full of slithering black snakes. You stop breathing."
  puts "Then you stick out your hand and plunge it into the pool. You need to know if the snakes are real."
  puts "You feel two fangs pierce the thin protection of your skin."
  puts "For a moment, you wonder, 'Do I scream out for help? Or do I thrash and beat these snakes?'"
when 'bb'
  puts " "
  puts "\tYou finally focus on the stack of paper on the podium."
  puts "' INSTRUCTIONS FOR YOUR SURVIVAL '"
  puts "'What a strange title,' you think."
  puts "Then you read the first line, 'I am proud to be here tonight before all of you."
  puts "And it is my honor to present myself for your consumption.'"
  puts "The bears in the first row begin rubbing their paws."
  puts "'Hold on,' you think. 'I need to get the hell out of here.'"
  puts "You stare stage left (past the kiddie pool), you stare stage right. Which way?"
end

puts " "
print ">> "
round_five = gets.chomp.downcase
done = false

while !done
  if round_four == 'aa'
    if round_five.include?('read')
      puts " "
      puts "\tYou take a deep breath. You faithfully read the speech before you."
      puts "Word for word. And at the end of it, the bears stand up and clap their furry paws."
      puts "A deer comes on stage while you are bowing and hands you a gold envelope."
      puts "Inside, a check for a handsome sum. Your reward for a job well done."
      done = true
    elsif round_five.include?('stage')
      puts " "
      puts "\tYou begin heading toward the right wing of the stage."
      puts "The bears in the crowd are softly growling. Once you reach backstage, you hear a roar."
      puts "A hungry lion is standing before you. Your vision goes black."
      done = true
    else
      puts " "
      puts "You are so confused. Keep reading, or get off stage?"
      round_five = gets.chomp.downcase
    end
  elsif round_four == 'ab'
    if round_five.include?('chair') || round_five.include?('fight')
      puts " "
      puts "\tYou lunge for a chair and start swinging at the bears climbing on stage."
      puts "They howl and spin in circles. You jump down into the crowd and start whacking more bears."
      puts "A rush towards the exits commences. You laugh at the top of your lungs."
      puts "Later that night, you decide to to have dinner at an Italian restaurant."
      done = true
    elsif round_five.include?('run')
      puts " "
      puts "\tYou jump off the stage and begin running up the main aisle."
      puts "The doors to the lobby open and you see three giraffes standing by the concession stand."
      puts "Outside the theatre, you hail a taxi. You feel safe until the driver turns around."
      puts "He is an alligator. He leaps into the backseat and attempts to eat you."
      puts "You survive with only two and a half limbs intact."
      done = true
    else
      puts " "
      puts "You are so confused. Do you want to fight for your life, or run for your life?"
      round_five = gets.chomp.downcase
    end
  elsif round_four == 'ba'
    if round_five.include?('scream') || round_five.include?('help')
      puts " "
      puts "\tThe pain is overwhelming. You cry out for help. A pack of bears surround you."
      puts "You fear for your life. But the bears grab the snake by the jaws and release your arm."
      puts "You are rushed to a hospital where a team of koala nurses and panda doctors restore you to health."
      puts "The bill comes to $87,541."
      done = true
    elsif round_five.include?('snakes')
      puts " "
      puts "\tYou swing out at the snakes in the pool. The fangs sink deeper."
      puts "You feel yourself slowly slipping deeper into the pool."
      puts "Snakes are swarming all over your body."
      puts "The last thing you hear is someone yelling, 'You didn't even read your speech.'"
      done = true
    else
      puts " "
      puts "You are so confused. Cry for help, or attack these damn snakes?"
      round_five = gets.chomp.downcase
    end
  elsif round_four == 'bb'
    if round_five.include?('left')
      puts " "
      puts "\tYou tip-toe to the left. The kiddie pool draws your attention. It is full of black snakes."
      puts "You are staring at the slithering creatures in horror when a bag is thrown over your head."
      puts "A rope is tied around your waist and you are dragged off stage."
      puts "'Next,' yells the stage manager, Leo K. Potamkin. You are never hired again to give a TED talk."
      done = true
    elsif round_five.include?('right')
      puts " "
      puts "\tYou sprint to the right. Backstage, you find an emergency exit."
      puts "You are in a long, narrow alleyway. A rat scuttles past your feet."
      puts "You notice a white Maserati is parked under a fire escape."
      puts "The headlights come on and your butler steps out of the car."
      puts "He hands you a pair of driving gloves."
      puts "'Thank you, Robert,' you say, seating yourself in the driver's seat."
      done = true
    else
      puts " "
      puts "Left, or right?"
      round_five = gets.chomp.downcase
    end
  end
end
puts " "
puts "\t\t\tTHE END"
puts " "
