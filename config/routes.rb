Rails.application.routes.draw do
  # トップページ
  root to: 'foods#index'

  # 結果画面
  namespace :foods do
    get 'results', to: 'results#index'
  end
end
