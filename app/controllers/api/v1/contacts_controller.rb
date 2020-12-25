class Api::V1::ContactsController < Api::V1::ApiController
  before_action :set_contact, only: %i(show update destroy)
  before_action :require_authorization!, only: %i(show update destroy)
  
  def index
    @contacts = current_user.contacts
    render json: pagy(@contacts, items: 10)
  end

  def show
    render json: @contact
  end

  def create
    @contact = Contact.new(contact_params.merge(user: current_user))
    if @contact.save
      render json: @contact, status: :created
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  def update
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @contact.destroy
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :description, addresses_attributes: %i(id _destroy street city state state_full zip_code))
  end

  def require_authorization!
    render json: {}, status: :forbidden unless current_user == @contact.user
  end
end
