class AutofillerController < ApplicationController

  # def show
  #   user = User.find(params[:id])
  #   respond_to do |format|
  #     format.pdf { send_file PdfForm1.new(user).export, type: 'application/pdf' }
  #   end
  # end
  
  def show
    user = User.find(params[:id])
    respond_to do |format|
      format.pdf { send_file PdfForm2.new(user).export('form2.pdf'), type: 'application/pdf' }
    end
  end

  # def show
  #   #user = User.find(params[:id])
  #   user = {
  #     :first_name => 'Thomas',
  #     :last_name => 'Muller',
  #     :address => 'Street 11.',
  #     :address_2 => 'Street 2', 
  #     :city => 'Berlin', 
  #     :state => 'Hesse', 
  #     :zip_code => '12321',
  #     :age => 14
  #   }

  #   respond_to do |format|
  #     format.pdf { send_file TestPdfForm.new(user).export, type: 'application/pdf' }
  #   end
  # end

  def index
    @users = User.all
    form2 = PdfForm2.new(User.new)    
    @fields = form2.get_field_names
    @field_values = form2.get_fields
  end


end
