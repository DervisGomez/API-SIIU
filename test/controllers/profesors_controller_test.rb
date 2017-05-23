require 'test_helper'

class ProfesorsControllerTest < ActionController::TestCase
  setup do
    @profesor = profesors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesors)
  end

  test "should create profesor" do
    assert_difference('Profesor.count') do
      post :create, profesor: { apellido: @profesor.apellido, cedula: @profesor.cedula, celular: @profesor.celular, ciudad: @profesor.ciudad, correo: @profesor.correo, decanato: @profesor.decanato, departamento: @profesor.departamento, direccion: @profesor.direccion, estado: @profesor.estado, estadoCivil: @profesor.estadoCivil, experiencia: @profesor.experiencia, fechaNacimiento: @profesor.fechaNacimiento, nombre: @profesor.nombre, pais: @profesor.pais, sexo: @profesor.sexo, telefonoLocal: @profesor.telefonoLocal, tituloAcademico: @profesor.tituloAcademico, universidad: @profesor.universidad }
    end

    assert_response 201
  end

  test "should show profesor" do
    get :show, id: @profesor
    assert_response :success
  end

  test "should update profesor" do
    put :update, id: @profesor, profesor: { apellido: @profesor.apellido, cedula: @profesor.cedula, celular: @profesor.celular, ciudad: @profesor.ciudad, correo: @profesor.correo, decanato: @profesor.decanato, departamento: @profesor.departamento, direccion: @profesor.direccion, estado: @profesor.estado, estadoCivil: @profesor.estadoCivil, experiencia: @profesor.experiencia, fechaNacimiento: @profesor.fechaNacimiento, nombre: @profesor.nombre, pais: @profesor.pais, sexo: @profesor.sexo, telefonoLocal: @profesor.telefonoLocal, tituloAcademico: @profesor.tituloAcademico, universidad: @profesor.universidad }
    assert_response 204
  end

  test "should destroy profesor" do
    assert_difference('Profesor.count', -1) do
      delete :destroy, id: @profesor
    end

    assert_response 204
  end
end
