class HomeController < ApplicationController
  # Home page for application
  def index
  end
  # This will be to gather the two values that will be added together
  # GET /summer
  def summer
  end
  # This will return the two values that you wanted added as well as the sum of the two
  # GET params[:val1] AND params[:val2] and return /sum
  def sum
    if params[:val1].blank? || params[:val2].blank?
      @val1 = 0
      @val2 = 0
    else
      @val1 = params[:val1].to_f
      @val2 = params[:val2].to_f
    end
  end

  def summermult
  end

  def summult
    if params[:val1].blank? || params[:val2].blank?
      @val1 = 0
      @val2 = 0
    else
      @val1 = params[:val1].to_f
      @val2 = params[:val2].to_f
    end
  end

  def complex1
  end

  def complex2
    if params[:val1, :val2, :val3, :val4, :val5, :val6].blank?
      @val1 = 0
      @val2 = 0
      @val3 = 0
      @val4 = 0
      @val5 = 0
      @val6 = 0
    else
      @val1 = params[:val1].to_f
      @val2 = params[:val2].to_f
      @val3 = params[:val3].to_f
      @val4 = params[:val4].to_f
      @val5 = params[:val5].to_f
      @val6 = params[:val6].to_f
  end
end
