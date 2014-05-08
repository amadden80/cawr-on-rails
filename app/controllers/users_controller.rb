class UsersController < ApplicationController


  #     users GET    /users(.:format)                        users#index
  def index
    @users = User.all
  end


  #           POST   /users(.:format)                        users#create
  def create
    user = User.create(premitted_params)
    redirect_to user_path(user)
  end


  #  new_user GET    /users/new(.:format)                    users#new
  def new
  end


  # edit_user GET    /users/:id/edit(.:format)               users#edit
  def edit
    @user = User.find(params[:id])
  end


  #      user GET    /users/:id(.:format)                    users#show
  def show
    @welcome_message = ['Be bold. Be strong. Caw loudly', 'Why tweet?  There is no tweeting in baseball.', 'Poe cawed.  Your turn.  Alwaysmore.', 'Caws are like grandpa\'s tweets.'].sample
    @user = User.find(params[:id])
  end


  #           PATCH  /users/:id(.:format)                    users#update
  #           PUT    /users/:id(.:format)                    users#update
  def update
    user = User.find(params[:id])
    user.update(premitted_params)
    redirect_to user_path(user)
  end


  #           DELETE /users/:id(.:format)                    users#destroy
  def destroy
    User.delete(params[:id])
    redirect_to users_path
  end


  private

  def premitted_params
    params.require(:user).permit(:username)
  end


end
