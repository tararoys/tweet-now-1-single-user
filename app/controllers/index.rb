get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/tweet' do 

  puts params[:tweet]
  CLIENT.update(params[:tweet])
  "You just posted" + params[:tweet]

end
