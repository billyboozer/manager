class InventoryController < ApplicationController
  def index
    @widgets = Widget.all
  end

  def new
    @widget = Widget.new
  end

  def create
    @widget = Widget.create(params[:widget])
    redirect_to action: "show", id: @widget.id
  end

  def edit
    @widget = Widget.find(params[:id])
  end

  def update
    @widget = Widget.find(params[:id])
    @widget.update_attributes(params[:widget])

    flash[:notice] = "Widget updated!"
    redirect_to action: "show", id: @widget.id
  end

  def destroy
    @widget = Widget.find(params[:id])
    @widget.destroy

    flash[:notice] = "Widget deleted!"
    redirect_to controller: "inventory", action: "index"
  end

  def show
    @widget = Widget.find(params[:id])
  end
end
