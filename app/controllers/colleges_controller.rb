class CollegesController < ApplicationController
  def index
    @college = College.all
  end

  def new
    @college = College.new
  end

  def create
    @college = College.new(college_params)
    if @college.save
      flash[:notice]= "College sucessfully created"
      redirect_to colleges_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def show
  end

  def edit
  end


private

  def college_params
    params.require(:college).permit!
  end

end
