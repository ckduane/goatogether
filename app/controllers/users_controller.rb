class UsersController <  ApplicationController

  before_action :require_login, except: [:new, :create]

  def new
    render 'login'
  end

  def create

  end

  def edit

  end

  def index

  end

  def show
    @journey = find_journey
    if current_user
      render :show
    else
      redirect_to new_user_path
    end
  end

  private

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
      current_user != nil
    end

    def require_login
      unless logged_in?
        flash[:notice] = "Please sign up to start creating your journeys!"
        redirect_to new_user_path
      end
    end

  def find_journey
    Journey.find_by(id: [params: id])
  end

end
