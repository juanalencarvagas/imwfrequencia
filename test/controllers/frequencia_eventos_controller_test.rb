require "test_helper"

class FrequenciaEventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frequencia_evento = frequencia_eventos(:one)
  end

  test "should get index" do
    get frequencia_eventos_url
    assert_response :success
  end

  test "should get new" do
    get new_frequencia_evento_url
    assert_response :success
  end

  test "should create frequencia_evento" do
    assert_difference('FrequenciaEvento.count') do
      post frequencia_eventos_url, params: { frequencia_evento: { id_evento: @frequencia_evento.id_evento, id_pessoa: @frequencia_evento.id_pessoa, status: @frequencia_evento.status } }
    end

    assert_redirected_to frequencia_evento_url(FrequenciaEvento.last)
  end

  test "should show frequencia_evento" do
    get frequencia_evento_url(@frequencia_evento)
    assert_response :success
  end

  test "should get edit" do
    get edit_frequencia_evento_url(@frequencia_evento)
    assert_response :success
  end

  test "should update frequencia_evento" do
    patch frequencia_evento_url(@frequencia_evento), params: { frequencia_evento: { id_evento: @frequencia_evento.id_evento, id_pessoa: @frequencia_evento.id_pessoa, status: @frequencia_evento.status } }
    assert_redirected_to frequencia_evento_url(@frequencia_evento)
  end

  test "should destroy frequencia_evento" do
    assert_difference('FrequenciaEvento.count', -1) do
      delete frequencia_evento_url(@frequencia_evento)
    end

    assert_redirected_to frequencia_eventos_url
  end
end
