require 'rails_helper'

feature 'homepage' do

  context 'creating a new URL' do

    scenario 'should display a field to enter URL to be shortened' do
      visit '/'
      expect(page).to have_field "url[original]"
      expect(page).to have_button "Shorten it!"
    end

  end

end