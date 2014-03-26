class ContentsController < ApplicationController

  def index
    @contents = Content.all
    respond_to do |format|
      format.html
      format.json {render json: @contents.to_json}
    end
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    @content.save
    redirect_to contents_path
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    @content.update(content_params)
    redirect_to contents_path
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to contents_path
  end

  private
    def content_params
      params[:content].permit(:title, :description)
    end

end
