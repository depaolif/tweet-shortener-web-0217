require "pry"

# Write your code here.
def dictionary
	{"hello" => "hi",
	"to" => "2",
	"two" => "2",
	"too" => "2",
	"for" => "4",
	"four" => "4",
	"For" => "4",
	"be" => "b",
	"you" => "u",
	"at" => "@",
	"and" => "&"}
end

def word_substituter(string)
	string = string.split(' ')
	string.each_with_index do |el,index|
		if dictionary.keys.include? el
			string[index] = dictionary[el]
		end
	end
	string.join(' ')
end

def bulk_tweet_shortener(array)
	array.each do |el|
		puts word_substituter(el)
	end
end

def selective_tweet_shortener(string)
	if string.length > 140
		return word_substituter(string)
	else
		return string
	end
end

def shortened_tweet_truncator(string)
	if string.length > 140
		string.slice(0,140)
	else
		string
	end
end

tweet_one = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
tweet_three = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

puts shortened_tweet_truncator(tweet_three)
