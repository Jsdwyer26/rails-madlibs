class MadlibsController < ApplicationController
  def index
    @madlibs = Madlib.all
  end

  def new
    @madlib = Madlib.new
  end

  def create
    madlib_params = params.require(:madlib).permit(:title, :description, :story)
    @madlib = Madlib.new(madlib_params)
    if @madlib.save
      redirect_to madlib_path(@madlib)
    end
  end

  def show
    madlib_id = params[:id]
    @madlib = Madlib.find_by_id(madlib_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
