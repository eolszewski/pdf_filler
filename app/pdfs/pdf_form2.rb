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
    fill :Group1, @user.us_citizon
    fill :CheckBox15, @user.is_item_a ? 'Yes' : 'Off'
    fill :CheckBox16, @user.is_item_b ? 'Yes' : 'Off'
    fill :CheckBox17, @user.is_item_c ? 'Yes' : 'Off'

    fill :ComboBox23, @user.combobox
    fill :ListBox22, @user.country

  end
end
