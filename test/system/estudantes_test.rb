require "application_system_test_case"

class EstudantesTest < ApplicationSystemTestCase
  setup do
    @estudante = estudantes(:one)
  end

  test "visiting the index" do
    visit estudantes_url
    assert_selector "h1", text: "Estudantes"
  end

  test "creating a Estudante" do
    visit estudantes_url
    click_on "New Estudante"

    fill_in "Nif", with: @estudante.nif
    fill_in "Nome", with: @estudante.nome
    fill_in "Nota", with: @estudante.nota
    click_on "Create Estudante"

    assert_text "Estudante was successfully created"
    click_on "Back"
  end

  test "updating a Estudante" do
    visit estudantes_url
    click_on "Edit", match: :first

    fill_in "Nif", with: @estudante.nif
    fill_in "Nome", with: @estudante.nome
    fill_in "Nota", with: @estudante.nota
    click_on "Update Estudante"

    assert_text "Estudante was successfully updated"
    click_on "Back"
  end

  test "destroying a Estudante" do
    visit estudantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estudante was successfully destroyed"
  end
end
