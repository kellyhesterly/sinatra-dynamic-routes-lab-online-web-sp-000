require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    square_number = @number.to_i * @number.to_i
    "#{square_number}"
  end

  get '/say/:number/:phrase' do
    params[:phrase]
    binding.pry
  end
end
