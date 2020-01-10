class MytweetsController < ApplicationController
  def index
    @mytweets = Mytweet.all
  end

  def show
  end

  def new
    @mytweet = Mytweet.new
  end

  def edit
  end

  def create
    @mytweet = Mytweet.new(mytweet_params)
    if @mytweet.save
      redirect_to new_mytweet_path, notice: "ツイートを作成しました！"
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def mytweet_params
    params.require(:mytweet).permit(:content)
  end

end
