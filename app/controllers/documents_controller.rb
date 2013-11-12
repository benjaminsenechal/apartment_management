class DocumentsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :avoid_owners

  def index
    @documents = Document.find_all_by_user_id current_user.id
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new document_params

    if @document.save
      redirect_to documents_path, flash: { success: 'Le document a bien été envoyé' }
    else
      render 'new'
    end
  end

private

  def avoid_owners
    redirect_to rails_admin_path if current_user.class.name === 'Users::Owner'
  end

  def document_params
    params.require(:document).permit(:title, :content, :description, :important, :user_id)
  end
end
