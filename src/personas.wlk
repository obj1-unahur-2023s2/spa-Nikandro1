object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	method recibirMasaje(){
		gradoDeConcentracion = gradoDeConcentracion + 3
	}
	method discutir(){
		gradoDeConcentracion -= 1
	}
	method banioVapor(){
		
	}
}

object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasaje(){
		esFeliz = true
	}
	method banioVapor(){
		peso = self.peso() - 500
		tieneSed = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	method correr(){
		peso -= 300
	}
	method verNoticiero(){
		esFeliz = false
	}
	method estaPerfecto(){
		return (esFeliz and not tieneSed and peso.between(55000,70000))
	}
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var contractura = 0
	var pielGrasosa
	
	method contractura() = contractura
	method pielGrasosa() = pielGrasosa
	
	method recibirMasaje(){
		contractura = 0.max(contractura -2)		
	}
	method comerBigMac(){
		pielGrasosa = true
	}
	method banioVapor(){
		pielGrasosa = false
	}
	method bajaAFosa(){
		contractura = self.contractura()+1
		pielGrasosa = true 
	}
	method jugarPaddle(){
		contractura += 3
	}
	
	method diaDeTrabajo(){
		self.bajaAFosa()
		self.comerBigMac()
		self.bajaAFosa()
	}
	
}
