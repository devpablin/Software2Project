require "rails_helper"

RSpec.feature "Administracion de Tortas", type: :feature do
  scenario "Creacion de una nueva torta" do
    visit "/torta/new"

    fill_in "Sabor", with: "Frutilla"
    fill_in "Porciones", with: 12
    fill_in "Precio", with: 59
    fill_in "Tipo", with: "Crema"

    click_button "Create Tortum"

    expect(page).to have_text("Tortum was successfully created.")
  end

  scenario "editar una torta" do
    visit "/torta"

    click_link "New Tortum"

    fill_in "Sabor", with: "Frutilla"
    fill_in "Porciones", with: 12
    fill_in "Precio", with: 59
    fill_in "Tipo", with: "Crema"

    click_button "Create Tortum"

    click_link "Edit"

    fill_in "Sabor", with: "Parrillada"

    click_button "Update Tortum"

    expect(page).to have_text("Tortum was successfully updated.")
  end
end
