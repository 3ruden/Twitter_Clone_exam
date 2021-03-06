class MytweetsController < ApplicationController
  before_action :set_mytweet, only: %i(show edit update destroy)

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
    if params[:back]
      render :new
    else
      if @mytweet.save
        redirect_to mytweets_path, notice: "ツイートを作成しました！"
      else
        render :new
      end
    end
  end

  def update
    if @mytweet.update(mytweet_params)
      redirect_to mytweets_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @mytweet.destroy
    redirect_to mytweets_path, notice: "ツイートを削除しました！"
  end

  def confirm
    @mytweet = Mytweet.new(mytweet_params)
    render :new if @mytweet.invalid?
  end

  private
  def mytweet_params
    params.require(:mytweet).permit(:content)
  end

  def set_mytweet
    @mytweet = Mytweet.find(params[:id])
  end
end

