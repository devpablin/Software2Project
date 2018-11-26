require "rails_helper"

RSpec.feature "Admibistracion de Usuarios", type: :feature do
  scenario "Creacion de un nuevo usuario" do
    visit "/users/new"

    fill_in "First name", with: "Tomas"
    fill_in "Last name", with: "Trump"
    fill_in "Email", with: "pepe@hmail.com"

    click_button "Create User"

    expect(page).to have_text("User was successfully created.")
  end

  scenario "editar un usuario" do
    visit "/users"

    click_link "New User"

    fill_in "First name", with: "Tomas"
    fill_in "Last name", with: "Trump"
    fill_in "Email", with: "pepe@hmail.com"

    click_button "Create User"

    click_link "Edit"

    fill_in "First name", with: "Tomos"

    click_button "Update User"

    expect(page).to have_text("User was successfully updated.")
  end
end
