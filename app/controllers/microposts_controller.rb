class MicropostsController < ApplicationController
  def index
    @microposts=Micropost.all
  end

  def show
  end

  def new
    @micropost=Micropost.new
  end

  def edit
  end

  def create
    @micropost=Micropost.new(micropost_params)
    if @micropost.save
       flash[:notice]="ユーザー登録が完了致しました。"
        redirect_to  microposts_show_path(@micropost.id)
    else
      render :index
    end
  end

  def update
  end

  def destroy
  end
private
def micropost_params
  params.require(:micropost).permit(:content,:user_id)
end

end
