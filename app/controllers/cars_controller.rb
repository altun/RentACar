class CarsController < ApplicationController
		def index
			@arabalar = [
										{marka: 'Opel', model: 'Corsa', yil: '2012'},
										{marka: 'Fiat', model: 'Albea', yil: '2010'},
										{marka: 'Porshce', model: 'Carrera', yil: '2014'}
									]
		end
end