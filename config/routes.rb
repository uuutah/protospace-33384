Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  ## ルートパスにアクセスした時に、先ほど定義したprototypesコントローラーのindexアクションが呼ばれる
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  ## ユーザーのルーティングは設定するのか後で確認
  resources :users, only: :show
  
end
