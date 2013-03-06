require 'spec_helper'

describe "Searches" do
  describe "GET homepage" do
    it "works!" do
      visit root_path
      page.should have_content("What do you want to watch?")
    end
  end

  describe "Search Inception" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "inception"
      click_on "Search"
      page.should have_content("inception")
      #save_and_open_page
    end
  end

  describe "Search Paranormal Activity 4" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Paranormal Activity 4"
      click_on "Search"
      page.should have_content("No")
    end
  end

  describe "Search Back to the Future 4" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Back to the Future 4"
      click_on "Search"
      page.should have_content("Movie not found")
    end
  end

  describe "Search The Artist" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "The Artist"
      click_on "Search"
      page.should have_content("Plot")
    end
  end

  describe "Search Back to the Future" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Back to the Future"
      click_on "Search"
      page.should have_content("Yes")
    end
  end

  describe "Search MovieThatDoesntExist" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "MovieThatDoesntExist"
      click_on "Search"
      page.should have_content("Movie not found")
    end
  end

  describe "Search Argo" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Argo"
      click_on "Search"
      page.should have_content("Yes")
    end
  end

  describe "Search Life of Pi" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Life of Pi"
      click_on "Search"
      page.should have_content("a fearsome Bengal tiger")
    end
  end

  describe "Search Battle Royale" do
    it "works!" do
      visit root_path
      fill_in :search, :with => "Battle Royale"
      click_on "Search"
      page.should have_content("Here is the result for")
    end
  end
end
