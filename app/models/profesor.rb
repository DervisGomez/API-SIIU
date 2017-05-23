class Profesor < ActiveRecord::Base
self.primary_key="cedula"


def Buscarcedula
@valor = Profesor.where(["cedula = '#{cedula}'"])
  		unless @valor.empty?
	 			@tirajson = '{"exito": true, "Datos":"'+@valor.to_json+'" }'
	 		else
	 			@tirajson = '{"exito": false, "msg": "No existe un usuario con esta cedula." }'
	 		end
  		
  		return @tirajson
	end

end