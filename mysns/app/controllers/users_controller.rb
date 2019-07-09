class UsersController < ApplicationController
  skip_before_action :login_required, {only: [:new, :create]}
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    @user.icon_image_name = 'default_user.jpg'

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end

  def show
    @user = User.find_by(name: params[:name])
    @posts = @user.posts
  end

  def edit
    @user = User.find_by(name: params[:name])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(personal_params)
      redirect_to "/#{@user.name}", notice: "こうしんしました"
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def personal_params
    params.require(:user).permit(:image, :name, :introduction)
  end
end
