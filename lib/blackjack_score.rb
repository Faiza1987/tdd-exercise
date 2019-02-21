# blackjack_score.rb

VALID_CARDS = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 'King', 'Queen', 'Jack']

def blackjack_score(hand)
    score = 0
    if hand.length > 5 
        raise ArgumentError, "Cards in hand are more than the allowed number."
    end

    hand.each do |i|
        if (i == "King") || (i == "Queen") || (i == "Jack")
            i = 10
        end

        if (i == "Ace") && (score >= 20) 
            i = 1
        end
        
        score += i
    end
    # puts score
    return score
end

facecards = ["King", "Queen", "Jack"]
hand = [3, 4]
ace = [10, 10, "Ace"]

puts blackjack_score(ace)
puts blackjack_score(hand)
puts blackjack_score(facecards)