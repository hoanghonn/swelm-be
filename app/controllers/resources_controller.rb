class ResourcesController < ApplicationController
  def index
    @resources = Resource.all

    render json: @resources
  end

  def new
  end

  def show
  end

  def create
    @resource = Resource.new(url: params[:url])

    if @resource.save
      render json: @resource, status: :created, location: url_for(@resource)
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
