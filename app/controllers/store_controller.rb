# Métodos home y contact son contenedores vacios.
#
# Pueden enriquecerse con acciones asociadas a:
# "GET /store/home o /store/contact"
#
class StoreController < ApplicationController
	
	  # GET /store/home
	  # @fecha es una variable de instancia visible en la View
	  def home
	      @fecha = Time.now # Time.now devuelve hora y fecha
  	end

	  # GET /store/contact
  	def contact
  	    
  	end

end
