class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  # 確認画面を作成する場合はこのような記述になるかと思います。
  # newアクションから入力内容を受け取り、
  # 送信ボタンを押されたらcreateアクションを実行します。
  def confirm
    @contact = Contact.new(contact_params)
    render :new if @contact.invalid?
  end

  # 入力内容に誤りがあった場合、
  # 入力内容を保持したまま前のページに戻る、
  # backアクションを定義することで可能。
  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  # 実際に送信するアクション。
  # 入力内容を保存します。
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to done_path
    else
      render :new
    end
  end

  # 送信完了画面
  def done; end

  private

  def contact_params
    params.require(:contact).permit(:email,
                                    :name,
                                    :subject,
                                    :message)
  end
end
