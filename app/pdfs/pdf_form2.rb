class PdfForm2 < FillablePdfForm

  def initialize(user)
    @user = user
    super()
  end

  protected

  def fill_out
    fill :TextField6, @user.name
    fill :TextField7, @user.address
    fill :TextField8, @user.date_of_birth.to_s
    fill :Group1, 'default-value-0'
    fill :CheckBox16, 'Yes'
    fill :CheckBox15, 'Yes'

    fill :ComboBox23, 'Option B'
    fill :ListBox22, 'Australia'

  end
end
