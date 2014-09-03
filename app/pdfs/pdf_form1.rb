class PdfForm1 < FillablePdfForm

  def initialize(user)
    @user = user
    super()
  end

  protected

  def fill_out
    fill :date_of_birth, @user.date_of_birth
    [:name, :address].each do |field|
      fill field, @user.send(field)
    end
  end
end
