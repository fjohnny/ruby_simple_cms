class SectionsController < ApplicationController
  def index
    @sections  = Section.all.sorted
  end
  
  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(sections_params)
    if @section.save
      flash[:notice] = "Section Successfully Created"
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(sections_params)
      flash[:notice] = "Section Successfully Updated"
      redirect_to(sections_path)
    else
      render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section '#{@section.name}' Deleted Successfully"
    redirect_to(sections_path)
  end

  private def sections_params
    params.require(:section).permit(:name, :position, :visible, :page_id, :content_type, :content)
  end

end
