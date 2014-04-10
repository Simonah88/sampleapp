require 'spec_helper'

describe "Static pages" do
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
      expect(page).not_to have_title(' | Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
      expect(page).to have_title('Help')
    end
  end

  describe "About page" do
    it "Should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
      expect(page).to have_title('About Us')
    end
  end

  describe "Contact page" do
    it "Should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title('Contact')
    end

    it "Should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
  end
end