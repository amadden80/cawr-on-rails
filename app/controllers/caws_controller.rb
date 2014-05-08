class CawsController < ApplicationController

  def create
    caw = Caw.create(premitted_params)
    user = User.find(params[:user_id])
    user.caws << caw
    redirect_to user_path(user)
  end

  def destroy
    Caw.delete(params[:id])
    redirect_to user_path(params[:user_id])
  end

  private

  def premitted_params
    params.require(:caw).permit(:message)
  end


end
