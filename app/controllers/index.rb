get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/tweet' do
  params[:tweet]
  CLIENT.update(params[:tweet])
  redirect "/thank_you?tweet=#{params[:tweet]}"
end

get "/thank_you" do 
  @tweet = params[:tweet]
end