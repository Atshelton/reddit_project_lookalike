class LinksController < ApplicationController

  def index
    @links = Link.all
    @link = Link.new
    render :index
  end

  def show
    @link = Link.find(params["name"])
    render :show
  end

  def edit
    @link = Link.find(params["id"])
    render :edit
  end


  def create
    @link = Link.create(link_params)
    redirect_to links_path
  end

  def update
    @link = Link.find(params["id"])
    @link.update(link_params)
    redirect_to links_path(id: @link.id)
  end

  def destroy
    @link = Link.find(params["id"])
    @link.destroy
    redirect_to links_path
  end

  private def link_params
    params.require("link").permit(:name)
  end
end
