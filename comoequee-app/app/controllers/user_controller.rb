# frozen_string_literal: true

class UserController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to index_url, notice: 'Cadastro realizado com sucesso!'
    else
      flash[:error] = 'Ops, parece que ocorreu um erro :( Tente novamente'
      redirect_to login_url
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :phone, :facebook, :bio, :password, :password_confirmation)
    end
end