class MemosController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  def index
    #トップページが呼ばれたときn動作するアクション
    @memos = Memo.all
    @categories = Category.all
  end

  def new
    #新規作成ページが呼ばれた時に動作するアクション
    
  end

  def create
    #新規メモがフォームからpostされた時に動作するアクション
    Memo.create(title:params["memos"]["title"],body:params["memos"]["body"],category_id:params["memos"]["category_id"])
    redirect_to "/"
  end
  def destroy
    #メモを削除するアクション
    memo = Memo.find(params["id"])
    memo.destroy
    redirect_to "/"
  end
  def edit
    @memo =Memo.find(params["id"])
  end
  def update
    memo= Memo.find(params["id"])
    memo.title = params["memos"]["title"]
    memo.body = params["memos"]["body"]
    memo.category_id = params["memos"]["category_id"]
    memo.save
    redirect_to "/"
  end
  
end
