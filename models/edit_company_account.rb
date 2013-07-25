class EditCompanyAccount < Scrivener
  attr_accessor :name, :email, :url,
  :password, :password_confirmation

  def validate
    assert_present :name
    assert_email :email
    assert_url :url

    assert_present :password
    assert password == password_confirmation, [:password, :not_confirmed]
  end
end