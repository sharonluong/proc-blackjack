def calculate_total(cards)
	arr = cards.map{|e| e[1]}

	total = 0
	arr.each do |a|
		if a == 'A'
			total += 11
		if a.to_i == 0
			total += 10
		else
			total += value.to_i
		end

	arr.select(|e| e == 'A').count.times do
		if total > 21
			total -=10
		end
	end

	total
end

suits = %w[diamonds clubs hearts spades]
cards = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
deck = suits.product(cards)
deck.shuffle!

playerhand = []
dealerhand = []

playerhand << deck.pop
dealerhand << deck.pop
playerhand << deck.pop
dealerhand << deck.pop

playertotal = calculate_total(playerhand)
dealertotal = calculate_total(dealerhand)

puts "Hello, what\'s your name?"
player = gets.chomp

puts "Hello, #{player}! Here are your cards: #{playerhand[0]} and #{playerhand[1]}"
puts "Dealer has #{dealerhand[0]} and #{dealerhand[1]}"

while playertotal < 21
	puts "#{player}, would you like to hit or stay?"
	choice = gets.chomp

	if choice == "hit"
		playerhand << deck.pop
		puts "You now have "
	else
		puts "Your total is #{playertotal}"
	end
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
	




