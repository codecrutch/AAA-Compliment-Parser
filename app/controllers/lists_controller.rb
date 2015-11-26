class ListsController < ApplicationController
  include ComplimentsHelper
  before_action :set_list, only: [ :show, :edit, :update]
  
  def index
    @lists = List.all
  end
  
  def new
    List.delete_all
    Compliment.delete_all
    @list = List.new
  end
  
  def show
  end
  
  def update
  end
  
  def create
    @list = List.new(list_params)
    
    respond_to do |format|
          if @list.save
            parseCompliments(@list.info)
            format.html { redirect_to compliments_path }
            format.json { render :show, status: :created, location: @list }
          else
            format.html { render :new }
            format.json { render json: @list.errors, status: :unprocessable_entity }
          end
        end
  end
  
  private
  
  def set_list
    @list = List.find(params[:id])
  end
  
  def list_params
    params.require(:list).permit(:info)
  end
end
