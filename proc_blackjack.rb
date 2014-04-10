suits = []
cards = []
deck = []

suits = %w[diamonds clubs hearts spades]
cards = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
suits.each do |suit|
  cards.each do |card|
  deck << "#{card} of #{suit}"
  end
end

deck.shuffle!

puts 'Hello, what\'s your name?'
player = gets.chomp

puts "Hello, #{player}, here are your first cards:"
hand = deck.last(2)
puts hand

puts "#{player}, would you like to hit or stay?"
choice = gets.chomp

if choice == 'hit'
	hand = hand + deck.last(1)
	puts hand
else
	puts "You chose to stay. Your hand is #{hand}"
end



#give two random cards from the deck (suit + card)

#ask hit or stay (loop?)
#depending on what they choose, they can either get another random card or stop

#if hit, give them the value of random card and ask hit or stay again
#if over 21, they have busted

#if stop, record what it is if under 21. 
#dealer starts
	#if value is less than 17
		#hit, keep going until value at least 17
	#else over 17, hit or stop?
		#if stay (must be over 17)
			#record value

#compare player value against dealer value
	#if player > dealer, player wins "you win!"
	#else dealer wins "house wins"
	




