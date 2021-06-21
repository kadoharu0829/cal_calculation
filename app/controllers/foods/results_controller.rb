class Foods::ResultsController < ApplicationController

  before_action :check_params
  before_action :set_foods_by_params
  before_action :check_foods_selected
  before_action :check_foods_kind

  def index
    @foods_breakfast = Food.breakfast
  end

  private

  # 昼食か夕食、どちらか一方が選択されなかった場合は一覧画面にリダイレクト
  def check_params
    redirect_to :root, alert: '昼食か夕食が選択されていません' if params[:lunch].nil? || params[:dinner].nil?
  end

  # lunch には昼食、dinner には夕食の値が設定されていない場合は一覧画面にリダイレクト
  def check_foods_kind
    redirect_to :root, alert: '昼食と夕食はそれぞれ適切な値を設定してください' unless lunch_by_params.try(:lunch?) && dinner_by_params.try(:dinner?)
  end

  # データが取得出来なかった場合は一覧画面にリダイレクト(この処理には入らない?)
  def check_foods_selected
    # TODO: 数字は直接書かない！
    redirect_to :root, alert: 'データが取得できなかったため、管理者にお問い合わせください' unless @foods_selected.size == 2
  end

  def set_foods_by_params
    @foods_selected = []
    @foods_selected << lunch_by_params
    @foods_selected << dinner_by_params
  end

  def lunch_by_params
    Food.find_by(id: params[:lunch].to_i)
  end

  def dinner_by_params
    Food.find_by(id: params[:dinner].to_i)
  end
end
