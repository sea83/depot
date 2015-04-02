class SessionController < ApplicationController
  def new
  end
  def create
    @user=User.where(email: params[:email]).first
    if @user && @user.authenticate(params[:password])
      session[:user_id]=@user.id
      redirect_to root_path, notice: 'Авторизация успешна'
    else
      flash[:danger]="Неверный адрес электронной почти или пароль"
      render :new
    end
  end
  def destroy
    session.delete(user_id)
    redirect_to root_path, notice: 'Выход выполнен'
  end
end
