require "application_system_test_case"

class TipoEventosTest < ApplicationSystemTestCase
  setup do
    @tipo_evento = tipo_eventos(:one)
  end

  test "visiting the index" do
    visit tipo_eventos_url
    assert_selector "h1", text: "Tipo Eventos"
  end

  test "creating a Tipo evento" do
    visit tipo_eventos_url
    click_on "New Tipo Evento"

    fill_in "Tipo", with: @tipo_evento.tipo
    click_on "Create Tipo evento"

    assert_text "Tipo evento was successfully created"
    click_on "Back"
  end

  test "updating a Tipo evento" do
    visit tipo_eventos_url
    click_on "Edit", match: :first

    fill_in "Tipo", with: @tipo_evento.tipo
    click_on "Update Tipo evento"

    assert_text "Tipo evento was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo evento" do
    visit tipo_eventos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo evento was successfully destroyed"
  end
end
