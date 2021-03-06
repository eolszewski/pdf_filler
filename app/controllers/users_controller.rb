class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: 'index'      
    else
      redirect_to action: 'new'
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to action: 'index'      
    else
      redirect_to action: 'new'
    end

  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.pdf { send_file I9Pdf.new(@user).export('i9.pdf'), type: 'application/pdf' }
      format.html
    end
  end

  def download_i_9_pdf
    @user = User.find(params[:user_id])
    respond_to do |format|
      format.pdf { send_file I_9Pdf.new(@user).export('i-9.pdf'), type: 'application/pdf' }
      format.html
    end
  end
  
  def download_i9_pdf
    @user = User.find(params[:user_id])
    respond_to do |format|
      format.pdf { send_file I9Pdf.new(@user).export('i9.pdf'), type: 'application/pdf' }
      format.html
    end
  end

  def download_form1_pdf
    @user = User.find(params[:user_id])
    respond_to do |format|
      format.pdf { send_file PdfForm1.new(@user).export('form1.pdf'), type: 'application/pdf' }
      format.html
    end
  end

  def download_form2_pdf
    @user = User.find(params[:user_id])
    respond_to do |format|
      format.pdf { send_file PdfForm2.new(@user).export('form2.pdf'), type: 'application/pdf' }
      format.html
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to action: 'index'
  end
  private
  
  def user_params
    params.require(:user).permit(:name, :address, :date_of_birth, :us_citizen, :is_item_a, :is_item_b, :is_item_c, :state, :combobox, :social_security, :zipcode, :email, :telephone, :city)
  end



end
