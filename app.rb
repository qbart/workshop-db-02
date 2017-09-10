class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    haml :index
  end

  get '/joins/inner' do
    get_all
    @result_1 = []
    @result_2 = []
    @result_3 = []

    haml :'joins/inner'
  end

  get '/joins/left' do
    get_all
    @result = []

    haml :'joins/left'
  end

  get '/joins/right' do
    get_all
    @result = []
    haml :'joins/right'
  end

  get '/joins/full' do
    get_all
    @result = []
    haml :'joins/full'
  end

  get '/joins/cross' do
    get_all
    @result = []

    haml :'joins/cross'
  end

  def get_all
    @books      = Book.order(:id)
    @categories = Category.order(:id)
    @abc        = Abc.order(:label)
    @xyz        = Xyz.order(:label_reversed)
  end

end
