class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def create
   
     @user=User.new(user_params)
    if @user.save
       session[:user_id]=@user.id
       flash[:notice]="ユーザー登録が完了致しました。"
        redirect_to  users_show_path(@user.id)
    else
      render :new
    end
  end

  def show
    @user=User.find_by(id:params[:id])
  end

  def new
     @user=User.new
  end
  def update
    @user=User.find_by(id:params[:id])
    if @user.update(user_params)
      session[:user_id]=@user.id
      flash[:notice]="プランナー情報を更新しました。"
      redirect_to users_show_path(@user.id)
    else
      render :edit
    end

  end

  def edit
    @user=User.find_by(id:params[:id])
  end

  def destroy
    @user=User.find_by(id:params[:id])
    user.destroy
    redirect_to users_index_path
  
  end
  private
  def user_params
    params.require(:user).permit(:name,:email)

  end
end


