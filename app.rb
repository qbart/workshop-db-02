class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    haml :index
  end

  get '/joins/inner' do
    get_books_and_categories
    @result = []
    haml :'joins/inner'
  end

  get '/joins/left' do
    get_books_and_categories
    @result = []
    haml :'joins/left'
  end

  get '/joins/right' do
    get_books_and_categories
    @result = []
    haml :'joins/right'
  end

  get '/joins/full' do
    get_books_and_categories
    @result = []
    haml :'joins/full'
  end

  get '/joins/cross' do
    @result = []
    haml :'joins/cross'
  end

  def get_books_and_categories
    @books      = Book.order(:id)
    @categories = Category.order(:id)
  end

end
