require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].split('').reverse.join('')
  end

  get '/square/:number' do
    (params[:number].to_i * params[:number].to_i).to_s
  end

  get '/say/:number/:phrase' do
    s = params[:phrase]
    n = params[:number].to_i
    st = ""
    n.times do
      st += s
    end
    st
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    int1 = params[:number1].to_i
    int2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      (int1 + int2).to_s
    when 'subtract'
      (int1 - int2).to_s
    when 'multiply'
      (int1 * int2).to_s
    when 'divide'
      (int1 / int2).to_s
    end
  end
end
