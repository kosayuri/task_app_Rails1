class PostController < ApplicationController
  def top
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post .new(title:params[:title], startday:params[:startday], endday:params[:endday], allday:params[:allday], memo:params[:memo])
    if @post .save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to("/post")
    else
      flash[:notice] = "スケジュールを登録できませんでした"
      render("post/new")
    end
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post .destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to("/post")
  end

  def update
    @post=Post.find_by(id:params[:id])
  end

  def postupdate
    @post = Post .find_by(id:params[:id])
    @post .title = params[:title]
    @post .startday = params[:startday]
    @post .endday = params[:endday]
    @post .allday = params[:allday]
    @post .memo = params[:memo]
    if @post .save
      flash[:notice] = "スケジュールを編集しました"
      redirect_to("/post")
    else
      flash[:notice] = "スケジュールを編集できませんでした"
      render("post/update")
    end
  end

  def show
    @post = Post .find_by(id:params[:id])
  end
end
