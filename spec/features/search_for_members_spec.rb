require "rails_helper"

RSpec.describe "Search for Gryffindor Order Members Spec" do
  describe "As a user" do
    describe "When I visit the root page" do
      it "I can find 21 'Gryffindor' members of The Order of the Phoenix" do
        visit "/"
        within("#bs-example-navbar-collapse-1") do
          page.select "Gryffindor", from: "house"
          click_on "commit"
        end
        expect(current_path).to eq "/search"
        within(".members") do
          expect(page).to have_selector("article[class*=member]", count: 21)
        end
        within(first(".member")) do
          expect(page).to have_content("Sirius Black")
          expect(page).to have_content("Role: n/a")
          expect(page).to have_content("House: Gryffindor")
          expect(page).to have_content("Patronus: n/a")
        end
        within(all(".member")[20]) do
          expect(page).to have_content("Ronald Weasley")
          expect(page).to have_content("Role: Student")
          expect(page).to have_content("House: Gryffindor")
          expect(page).to have_content("Patronus: Jack Russell Terrier")
        end
      end
    end
  end
end
