class Android::LoginPage < Calabash::Page
  include Calabash::Android

  # Page Elements
  # NAME_OF_ELEMENT       = {id:'id_of_element'}
  PAGE_TITLE              = {text: 'AutomationTest'}
  USERNAME_FIELD          = {id: 'username'}
  PASSWORD_FIELD          = {id: 'password'}
  PASSWORD_REQUIREMENTS   = {id: 'passText'}
  LOGIN_BUTTON            = {id: 'button_login', text: 'Login'}
  #TODO: REPLACE WHEN ANDREW UPDATES PROJECT
  ERROR_MESSAGE           = {text: 'Invalid'}

  # Define Trait
  # A query that distinguishes your page.
  # @return [String, Hash, Calabash::Query] A query.
  # def trait
  #   raise 'Implement your own trait'
  # end
  def trait
    PAGE_TITLE
  end

  # Methods
  def validate_login_page
    view_exists? USERNAME_FIELD
    view_exists? PASSWORD_FIELD
    view_exists? PASSWORD_REQUIREMENTS
    view_exists? LOGIN_BUTTON
  end

  def login(username, password)
    enter_text_in USERNAME_FIELD, username
    enter_text_in PASSWORD_FIELD, password
    tap LOGIN_BUTTON
  end

  def trigger_error(error)
    case error
      when 'invalid email'
        trigger_invalid_email_error
      when 'invalid password'
        trigger_invalid_password_error
      else
        raise "Invalid error: #{error}"
    end
  end

  def trigger_invalid_email_error
    user = LOGIN[:invalid_email_account]
    #TODO: FIX WHEN ANDREW FIXES
    # Fails - because of something in the app
    # login(user[:email_address], user[:password])
    enter_text_in USERNAME_FIELD, user[:email_address]
    tap LOGIN_BUTTON
  end

  def trigger_invalid_password_error
    user = LOGIN[:invalid_password]
    login(user[:email_address], user[:password])
  end

  def validate_error(error)
    case error
      when 'invalid email'
        validate_invalid_email_error
      when 'invalid password'
        validate_invalid_pass_error
      else
        raise "Invalid error: #{error}"
    end
  end

  def validate_invalid_email_error
    wait_for_view ERROR_MESSAGE
  end

  def validate_invalid_pass_error
    wait_for_view ERROR_MESSAGE
  end
end
