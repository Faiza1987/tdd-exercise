# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'King', 'Queen', 'Jack']

def blackjack_score(hand)
    score = 0
    hand.each do |i|
        # puts i
        if (i == "King") || (i == "Queen") || (i == "Jack")
            i = 10
        end
        # puts i
        score += i
    end
    return score
end

# def blackjack_score(facecards)
    # facecards.each_value {|value| puts value } 
    # hand.each_value do |value|
    #     score += value
    # end
# end

facecards = ["King", "Queen", "Jack"]
hand = [3, 4]

# puts blackjack_score(hand)
puts blackjack_score(hand)