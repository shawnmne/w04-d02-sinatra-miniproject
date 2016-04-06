require "pry"
require "sinatra"


get '/home' do
	erb :home
end

get '/temp-convert' do 
	erb :temp_convert
end

get '/temp-convert-results' do
	@temperature = params['temperature'].to_i
	@units = params['units']
	erb :temp_convert_results
end

get '/reverser' do 
	erb :reverser
end

get '/reverser-results' do 
	@phrase = params['phrase']
	erb :reverser_results
end	

def convert_the_temp(temp, unit)
	if unit == "f"
		temp = ((temp - 32) * 5) / 9
	elsif unit == "c"
		temp = (temp * 9 ) / 5  + 32 
	end
	return temp
end

def convert_the_unit(unit)
	if unit == "f"
		unit = "c"
	elsif unit == "c"
		unit = "f"
	end
end

def reverse_the_phrase(phrase)
	phrase.reverse
end

