def calculate_total(cards)
	arr = cards.map{|e| e[1]}

	total = 0
	arr.each do |a|
		if a == 'A'
			total += 11
		elsif a.to_i == 0
			total += 10
		else
			total += a.to_i
		end
	end

	arr.select{|e| e == 'A'}.count.times do
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

if playertotal == 21
	puts "Congratulations, #{player}!"
	exit
end

while playertotal < 21
	puts "#{player}, would you like to hit or stay?"
	choice = gets.chomp

	if !['hit', 'stay'].include?(choice)
		puts "Error: enter hit or stay."
		next
	end

	if choice == "stay"
		puts "You chose to stay. Your total is #{playertotal}"
		break
	else
		newhand = deck.pop
		puts "Your new card is #{newhand}"
		playerhand << newhand
		playertotal = calculate_total(playerhand)
		if playertotal == 21
			puts "Congratulations, #{player}!"
		elsif playertotal > 21
			puts "You busted! Game over."
			exit
		else
			puts "Your new total is #{playertotal}"
		end
	end
end

if dealertotal == 21
	puts "Too bad, the house won."
end

while dealertotal <= 17
	dealernewhand = deck.pop
	dealerhand << dealernewhand
	dealertotal = calculate_total(dealerhand)
		if dealertotal == 21
			puts "The dealer\' new card is #{dealernewhand} for a total of #{dealertotal}. The house won."
		elsif dealertotal > 21
			puts "The dealer\' new card is #{dealernewhand} for a total of #{dealertotal}. Dealer busted! #{player} wins!"
			exit
		else
			puts "The dealer\'s new card is #{dealernewhand} for a total of #{dealertotal}"
		end
end

if dealertotal < 21
	if playertotal > dealertotal
		puts "Congratulations, #{player}, you won!"
	else
		puts "Too bad, the house won."
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
	




