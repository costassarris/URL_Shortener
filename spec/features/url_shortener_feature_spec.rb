require 'rails_helper'

feature 'homepage' do

  context 'creating a new URL' do

    scenario "displays a field to enter original URL" do
      visit '/'
      expect(page).to have_field "url[original]"
      expect(page).to have_button "Shorten it!"
    end

    scenario "displays list of URL's" do
      visit '/'
      fill_in 'Original', with: 'www.google.com'
      click_button "Shorten it!"
      expect(page).to have_content 'www.google.com'
      expect(current_path).to eq '/urls'
    end

    let!(:google){Url.create(original:'www.google.com', key: '7')}

    scenario "displays the unique key for each URL" do
      visit '/'
      expect(page).to have_content google.key
    end

  end

end