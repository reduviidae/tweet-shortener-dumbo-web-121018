require "pry"

dictionary = {
    "hello" => "hi", 
    "to" => "2", 
    "two" => "2", 
    "too" => "2", 
    "for" => "4", 
    "four" => "4", 
    "be" => "b", 
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
    
def word_substituter(tweet)
  
dictionary = {
    "hello" => "hi", 
    "to" => "2", 
    "two" => "2", 
    "too" => "2", 
    "for" => "4",
    "For" => "4",
    "four" => "4", 
    "be" => "b", 
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
   
  tweet_array = tweet.split(" ")
  # binding.pry
  changed_array = []
  tweet_array.map do |word|
    # binding.pry
    dictionary.map do |key, value|
      if word == key
        word = value
        # binding.pry
      end
    end
    changed_array << word
  end
  changed_array.join(" ")
  # binding.pry
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)
  # binding.pry
  if tweet.length > 140
    word_substituter(tweet)
  else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  word_substituter(tweet)
  if tweet.length > 140
    tweet[0..137].concat("...")
  end
end














