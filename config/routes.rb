Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  ## ルートパスにアクセスした時に、先ほど定義したprototypesコントローラーのindexアクションが呼ばれる
  root to: "prototypes#index"
end
