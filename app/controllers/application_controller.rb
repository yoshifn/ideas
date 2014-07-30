class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def index
    @app = Idea.all
  end
  
  def new
  end
  
  def show
    @app = Idea.find_by_id(params['id']) 
  end

  def create
    @app = Idea.new
    @app.idea = params['idea']
    @app.save
    redirect_to "/idea/#{@app.id}"
  end
  
  def edit
    @app = Idea.find_by(id: params['id'])
  end

  def update
    @app = Idea.new
    @app.idea = params['idea']
    @app.save
    redirect_to "/idea/#{@app.id}"
  end

end
