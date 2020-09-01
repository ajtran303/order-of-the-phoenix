require "rails_helper"

RSpec.describe "Search for Gryffindor Order Members Spec" do
  describe "As a user" do
    describe "When I visit the root page" do
      it "I can find 21 'Gryffindor' members of The Order of the Phoenix" do
        visit "/"
        # And I Select "Gryffindor" from the select field
        click_on "commit"
        expect(current_path).to eq "/search"
        within(".members") do
          expect(page).to have_selector("article[class*=member]", count: 21)
        end
        # within(first(".member")) do
        #   expect(page).to have_content("Name: ")
        #   expect(page).to have_content("Role: ") # if exists
        #   expect(page).to have_content("House: ")
        #   expect(page).to have_content("Patronus: ") # if exists
        # end
        # within(last(".member")) do
        #   expect(page).to have_content("Name: ")
        #   expect(page).to have_content("Role: ") # if exists
        #   expect(page).to have_content("House: ")
        #   expect(page).to have_content("Patronus: ") # if exists
        # end
      end
    end
  end
end

# As a user,
# When I visit "/"
# And I Select "Gryffindor" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
# And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
