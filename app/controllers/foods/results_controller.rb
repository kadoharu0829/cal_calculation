class Foods::ResultsController < ApplicationController
  def index
    @foods_breakfast = Food.breakfast
    @foods_selected = foods_by_params
  end

  private

  # TODO: params が取得できない場合、一覧画面にリダイレクト
  def check_params
    if params[:lunch].nil? || params[:dinner].nil?
      redirect_to
    end
  end

  def foods_by_params
    foods = []
    foods << Food.find_by(id: params[:lunch].to_i)
    foods << Food.find_by(id: params[:dinner].to_i)
    foods
  end
end
