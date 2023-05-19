Algoritmo zombie
	//m matriz
	definir m,muestra,vMuestra Como Caracter
	//n tamaño matriz
	definir n Como Entero
	definir iguales Como Logico
	
	muestra="BCAADCCBABCCBABB"
	validarMuestra(n,muestra)
	//si la muestra es valida corremos el programa
	si(n<>0) Entonces
		dimension vMuestra(n^2)
		dimension m(n,n)
		
		llenadoMuestra(n,muestra,vMuestra)
		llenadoMatriz(m,n,vMuestra)
		
		//inicializamos la variable logica para en el SubProceso comparar la condicion
		//de las diagonales
		iguales=verdadero
		comprobarDiagonales(m,n,iguales)
		imprimeMatriz(m,n)
		genZ(iguales)
		
	FinSi
	
	
FinAlgoritmo

SubProceso validarMuestra(n Por Referencia,muestra)
	
	si(Longitud(muestra)=9 o Longitud(muestra)=16 o Longitud(muestra)=1369) Entonces
		n=raiz(Longitud(muestra))
	SiNo
		Escribir "Muestra incompleta"
		n=0
	FinSi
	
FinSubProceso

SubProceso llenadoMuestra(n,muestra,vMuestra Por Referencia)
	definir i Como Entero
	
	para i<-0 hasta (n^2)-1 Hacer
		vMuestra(i)=Subcadena(muestra,i,i)
	FinPara
	
FinSubProceso

SubProceso llenadoMatriz(m Por Referencia,n,vMuestra)
	definir i,j,k Como Entero
	
	k=0
	//recorrer matriz
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta n-1 Hacer
			m(i,j)=vMuestra(k)
			k=k+1
		FinPara
	FinPara
	
	
FinSubProceso


SubProceso comprobarDiagonales(m,n,iguales Por Referencia)
	definir i,j Como Entero

	//diagonal principal, para no salirnos del arreglo al comparar en la ultima iteración
	//vamos en este caso a ir hasta n-2
	para i<-0 hasta n-2 Hacer
		si(m(i,i)<>m(i+1,i+1)) Entonces
			iguales=falso
		FinSi
	FinPara
	
	//diagonal secundaria
	j=n-1
	para i<-0 hasta n-2 Hacer
		si(m(i,j)<>m(i+1,j-1)) Entonces
			iguales=falso
		FinSi
		j=j-1
	FinPara
	
FinSubProceso

SubProceso 	imprimeMatriz(m,n)
	Definir i,j como entero
	
	para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta n-1 Hacer
			si(j=0) Entonces
				Escribir Sin Saltar "|"
			FinSi
			Escribir Sin Saltar m(i,j),"|"
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso

SubProceso genZ(iguales)
	Escribir ""
	si(iguales=verdadero) Entonces
		Escribir "¡PRECAUCIÓN SE HA DETECTADO EL GEN Z!"
	SiNo
		Escribir "Buenas noticias no se detectado presencia del Gen Z ^^"
	FinSi
FinSubProceso
	