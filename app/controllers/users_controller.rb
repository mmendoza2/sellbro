class UsersController < ApplicationController
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.all
  end

  def show
    @user = User.friendly.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      respond_to do |format|
        format.html { redirect_to(:back) }
        format.js
      end
      redirect_to :back
    else
      render 'new'
    end
  end

  def edit
    @micrositio = Micrositio.friendly.find(params[:id])
    @estado = Estado.friendly.find(params[:id])
    @user = User.friendly.find(params[:id])

  end

  def update
    if @user.update_attributes(user_params)
      respond_to do |format|
        format.html { redirect_to(:back) }
        format.js
      end

    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end


  def following
    @title = "Following"
    @user = User.friendly.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.friendly.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end




    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :photo, :lat, :lng, :admin)
    end

    # Before filters

    def correct_user
      @user = User.friendly.find(params[:id])
      redirect_to(root_url) unless signed_in?
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  end
