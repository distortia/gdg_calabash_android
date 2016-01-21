class Android::HomePage < Calabash::Page
  include Calabash::Android

  # Page Elements
  # NAME_OF_ELEMENT   = {id:'id_of_element'}
  PAGE_TITLE          = {text: 'LoginActivity'}
  #TODO: FIX WHEN ANDREW UPDATES PROJECT
  LOGIN_MESSAGE       = {id: 'succesfulLoginText', text: 'login successful'}
  CHECKBOX            = {id: 'checkBox', text:'Checkbox'}
  MALE_RADIO_BUTTON   = {id: 'radioButton', text: 'Male'}
  FEMALE_RADIO_BUTTON = {id: 'radioButton2', text: 'Female'}
  NEW_BUTTON          = {id: 'button', text: 'New Button'}
  MALE_MESSAGE        = {id: 'message', text: 'Male'}
  FEMALE_MESSAGE      = {id: 'message', text: 'Female'}

  def trait
    LOGIN_MESSAGE
  end

  def validate_home_page
    view_exists? LOGIN_MESSAGE
    view_exists? CHECKBOX
    view_exists? MALE_RADIO_BUTTON
    view_exists? FEMALE_RADIO_BUTTON
    view_exists? NEW_BUTTON
  end

  def select_gender(gender)
    case gender
      when 'male'
        tap MALE_RADIO_BUTTON
      when 'female'
        tap FEMALE_RADIO_BUTTON
      else
        raise "Invalid gender: #{gender}"
    end
  end

  def tap_new_button
    tap NEW_BUTTON
  end

  def validate_toast_message(gender)
    case gender
      when 'male'
        validate_male_toast_message
      when 'female'
        validate_female_toast_message
      else
        raise "Invalid gender: #{gender}"
    end
  end

  def validate_male_toast_message
    wait_for_view MALE_MESSAGE
  end

  def validate_female_toast_message
    wait_for_view FEMALE_MESSAGE
  end
end
