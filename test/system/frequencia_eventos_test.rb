require "application_system_test_case"

class FrequenciaEventosTest < ApplicationSystemTestCase
  setup do
    @frequencia_evento = frequencia_eventos(:one)
  end

  test "visiting the index" do
    visit frequencia_eventos_url
    assert_selector "h1", text: "Frequencia Eventos"
  end

  test "creating a Frequencia evento" do
    visit frequencia_eventos_url
    click_on "New Frequencia Evento"

    fill_in "Id evento", with: @frequencia_evento.id_evento
    fill_in "Id pessoa", with: @frequencia_evento.id_pessoa
    fill_in "Status", with: @frequencia_evento.status
    click_on "Create Frequencia evento"

    assert_text "Frequencia evento was successfully created"
    click_on "Back"
  end

  test "updating a Frequencia evento" do
    visit frequencia_eventos_url
    click_on "Edit", match: :first

    fill_in "Id evento", with: @frequencia_evento.id_evento
    fill_in "Id pessoa", with: @frequencia_evento.id_pessoa
    fill_in "Status", with: @frequencia_evento.status
    click_on "Update Frequencia evento"

    assert_text "Frequencia evento was successfully updated"
    click_on "Back"
  end

  test "destroying a Frequencia evento" do
    visit frequencia_eventos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frequencia evento was successfully destroyed"
  end
end
