class I9Pdf < FillablePdfForm

  def initialize(user)
    @user = user
    super()
  end

  protected

  def fill_out    
    fill :last_name, @user.name.split(',').first.strip
    fill :first_name, @user.name.split(',').last.split(' ').first.strip
    fill :middle_initial, @user.name.split(',').last.split(' ').last.strip
    fill :address, @user.address.split(',').first.strip
    fill :apt_number, @user.address.split(',').last.strip
    fill :city_or_town, @user.city.strip
    fill :state, @user.state
    fill :zipcode, @user.zipcode.strip
    fill :date_of_birth, @user.date_of_birth.strftime("%m/%d/%Y")
    fill :social_one, @user.social_security[0..2]
    fill :social_two, @user.social_security[3..4]
    fill :social_three, @user.social_security[5..8]
    fill :email, @user.email
    fill :telephone_number, @user.telephone
    fill :citizen, @user.us_citizen ? 'Y' : 'N'
  end
end
