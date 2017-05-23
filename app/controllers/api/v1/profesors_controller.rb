class Api::V1::ProfesorsController < ApplicationController
 before_action :set_profesor, only: [:show, :update, :destroy]


  # GET /profesors
  # GET /profesors.json
  def index
    @profesors = Profesor.all
  # if @profesors!= nil
#render json: @profesors
#else
#  @profesors= '{"exito",false,"no se encontraron profesores"}'

  render json: @profesors
 # end
  end

  # GET /profesors/1
  # GET /profesors/1.json
  def show 
    if @profesor!=nil
    render json: @profesor
  else 
    @profesor='{"hola"}'
    end
    render json: @profesor
end

  # POST /profesors
  # POST /profesors.json
  def create
    @profesor = Profesor.new(profesor_params)

    if @profesor.save
      render json: @profesor, status: :created, location: @profesor
    else
      render json: @profesor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profesors/1
  # PATCH/PUT /profesors/1.json
  def update
    @profesor = Profesor.find(params[:id])

    if @profesor.update(profesor_params)
      head :no_content
    else
      render json: @profesor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profesors/1
  # DELETE /profesors/1.json
  def destroy
    @profesor.destroy

    head :no_content
  end

  private

def buscarxCedula
  @cedula=params[:dato1]
  @tirajson=Profesor.new.Buscarcedula @cedula
  render json:  @tirajson
end

     

    def set_profesor
    
  @profesors =Profesor.find(params[:id])
  render json: @profesors

end

rescue_from ActiveRecord::RecordNotFound do
    @valor='{"exito":true, "mensaje":"Cedula no encontrada"}'
    render json: @valor
  end



# def set_profesor
 #@valor = Profesor.find(params[:id])
   #   if @valor !=nil
  #       @profesor= '{"exito":true,"profesor encontrado":'+@valor.to_json+'}'
    #  else
    #@profesor='{"exito":false,"profesor no encontrado"}'
     # end
   #end

    def profesor_params
      params.require(:profesor).permit(:cedula, :nombre, :apellido, :fechaNacimiento, :estadoCivil, :sexo, :correo, :celular, :pais, :estado, :ciudad, :direccion, :telefonoLocal, :universidad, :decanato, :departamento, :tituloAcademico, :experiencia)
    end
end
