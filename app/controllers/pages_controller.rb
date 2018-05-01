class PagesController < ApplicationController
  
  def index
    @pages  = Page.all.sorted
  end
  
  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(pages_params)
    if @page.save
      flash[:notice] = "Page Successfully Created"
      redirect_to(pages_path)
    else
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(pages_params)
      flash[:notice] = "Page Successfully Updated"
      redirect_to(pages_path)
    else
      render('edit')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Page '#{@page.name}' Deleted Sucessfully"
    redirect_to(pages_path)
  end

  private def pages_params
    params.require(:page).permit(:name, :position, :visible, :permalink, :subject_id)
  end

end
