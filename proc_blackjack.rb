suit = []
card = {}

suit = %w[diamonds clubs hearts spades]
card = {
	:'ace'		=> 	1, 
	:'two'		=>	2,
	:'three'	=>	3,
	:'four'		=>	4,
	:'five'		=>	5,
	:'six'		=>	6,
	:'seven'	=> 	7,
	:'eight'	=> 	8,
	:'nine'		=> 	9,
	:'ten'		=> 	10,
	:'jack' 	=> 	10,
	:'queen'	=> 	10,
	:'king'		=>	10
}

card_names = card.keys
random_card_names = card_names[rand(card_names.length)]


puts 'Hello, what\'s your name?'
player = gets.chomp

puts "Hello, #{player}, here are your first cards:"

hand = " #{random_card_names.to_s} of #{suit.sample.to_s} and #{random_card_names.to_s} of #{suit.sample.to_s} "

puts hand


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
	




