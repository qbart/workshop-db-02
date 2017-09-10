class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    haml :index
  end

  get '/joins/inner' do
    haml :'joins/inner'
  end

  get '/joins/left' do
    haml :'joins/left'
  end

  get '/joins/right' do
    haml :'joins/right'
  end

  get '/joins/full' do
    haml :'joins/full'
  end

  get '/joins/cross' do
    haml :'joins/cross'
  end

end
