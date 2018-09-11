class ApplicationController < ActionController::Base
  before_action :set_search
  def set_search
    @search = Student.order(created_at: :desc).ransack(params[:q])
    @students = @search.result(distinct: true)
  end
    
end
