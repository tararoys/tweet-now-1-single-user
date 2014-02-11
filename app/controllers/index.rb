get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/tweet' do
  params[:tweet]
  CLIENT.update(params[:tweet])
end