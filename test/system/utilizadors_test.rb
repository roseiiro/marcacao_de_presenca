require "application_system_test_case"

class UtilizadorsTest < ApplicationSystemTestCase
  setup do
    @utilizador = utilizadors(:one)
  end

  test "visiting the index" do
    visit utilizadors_url
    assert_selector "h1", text: "Utilizadors"
  end

  test "creating a Utilizador" do
    visit utilizadors_url
    click_on "New Utilizador"

    fill_in "Email", with: @utilizador.email
    fill_in "Nif", with: @utilizador.nif
    fill_in "Nome completo", with: @utilizador.nome_completo
    fill_in "Turma", with: @utilizador.turma_id
    click_on "Create Utilizador"

    assert_text "Utilizador was successfully created"
    click_on "Back"
  end

  test "updating a Utilizador" do
    visit utilizadors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @utilizador.email
    fill_in "Nif", with: @utilizador.nif
    fill_in "Nome completo", with: @utilizador.nome_completo
    fill_in "Turma", with: @utilizador.turma_id
    click_on "Update Utilizador"

    assert_text "Utilizador was successfully updated"
    click_on "Back"
  end

  test "destroying a Utilizador" do
    visit utilizadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utilizador was successfully destroyed"
  end
end
