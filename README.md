# [Music Guide](https://docs.google.com/document/d/17Wi8pIdvI5cpLkTOS2amvEIWA-uTY-5M_0q0kEij2YY/edit)

![Imagen](http://adictosaloabsurdo.es/wp-content/uploads/2013/03/humor_absurdo_1.jpg)
## Segunda iteración
La aplicación resultó un verdadero suceso, y detrás de las palmadas en el hombro vienen nuevos requerimientos.

### Músicos
Al empezar a relevar otros músicos locales, se detectó que Joaquín y Lucía no diferían mucho del comportamiento general de dos estilos de músico:
* Joaquín representa al músico “de grupo”
	* como plus, queremos parametrizar lo que aumenta el músico por tocar en grupo, ya que no todos aumentan la misma cantidad
* Lucía representa al vocalista popular
	* como plus, el usuario nos pidió que se pueda parametrizar la palabra que haga que interprete bien una canción

Lo que nos pide el usuario es que cada músico pueda definir
* su propia habilidad
* si es solista o toca en algún grupo
* los álbumes que publicó

Más allá de eso el comportamiento debe ser el mismo para todos estos músicos. Para esta entrega queremos agregar entonces a:
- *Kike*, que es un músico de grupo, con habilidad 60 y un plus de 20 por cantar en grupo
- *Soledad*, que es una vocalista popular, con habilidad 55 y “amor” como palabra que hace que cante bien.


Luis Alberto, por si no lo notaron, es único e irrepetible, pero también comparte con los demás músicos en que
* tiene una habilidad: la base es 8 a la que le sigue multiplicando el valor del instrumento hasta un máximo de 100 (no varió la definición de negocio de la entrega 1, quizás sí varíe la forma de implementarlo)
* sabemos si toca en grupo o no
* y sabemos los álbumes que editó (ver a continuación)

El concepto de álbum agrupa una serie de canciones y tiene un título propio, que no necesariamente es el de alguno de los temas, como en el caso de “Cómo conseguir chicas” de Charly García. También conocemos la fecha de lanzamiento, cuántas unidades salieron a la venta y cuántas efectivamente se vendieron.


### Canciones
Sabemos que todas las canciones comparten la misma estructura
* el título principal
* la letra
* la duración (en segundos)

#### Nuevas funcionalidades
El usuario nos pidió incorporar estos requerimientos:
1. Saber si un músico es minimalista, esto ocurre cuando todas sus canciones (las de todos sus álbumes) son cortas (menos de 3 minutos)
2. Saber qué canciones de un músico tienen alguna palabra, por ejemplo: para Luis Alberto la palabra “cielo” aparece en “Alma de diamante” y “Crisantemo”.
3. Saber cuántos segundos dura la obra de un músico, es decir cuánto suman todas las canciones de sus álbumes.
4. Saber cuál es la canción más larga de un álbum (en base a la letra registrada de la canción).
5. Saber si un músico la “pegó”, esto ocurre cuando todos sus álbumes tienen buenas ventas (más del 75% de los ejemplares que se lanzaron fueron vendidos)


### Conceptos a aplicar
En esta entrega queremos que apliques estos conceptos
* diferenciar objetos de clases
* manejo básico del mecanismo de herencia
* polimorfismo
* manejo de colecciones
* testeo unitario

Y queremos que sigas trabajando en grupo utilizando herramientas profesionales
* para compartir código
* para manejar versionado de código
* y eventualmente para coordinar el trabajo en conjunto de diferentes personas que colaboran en un proyecto de software

### Material de consulta
Además de los apuntes de la entrega anterior, recomendamos leer este apunte 
* [Módulo 5: Herencia. Self, super. Redefinición.](https://docs.google.com/document/d/1KdG7NrKPgPh4bAcyLuDG2G1iWP7Ze2GFs91qzlvDKqI/edit?usp=drive_web)


### Fixture
Considerar los cambios en la definición de los músicos conservando los ejemplos anteriormente creados: los músicos Joaquín, Lucía y Luis Alberto, e incorporar a Kike y Soledad.

Mantener las presentaciones y las canciones de la entrega anterior. 

Respecto a las nuevas relaciones:
* Joaquín editó álbum “Especial La Familia” el 17/06/1992, que sacó 100.000 copias y vendió 89.000
	* Tiene solo un single: “La Familia”, cuya letra es “Quiero brindar por mi gente sencilla, por el amor brindo por la familia“ y cuya duración es 264 segundos.
* Kike y Lucía no editaron álbumes.
* Soledad compuso un álbum “La Sole” el 04/02/2005, que sacó 200.000 copias y vendió 130.000, con dos canciones
	* “Eres”, que dura 145 segundos y cuya letra es “Eres lo mejor que me pasó en la vida, no tengo duda, no habrá más nada después de ti. Eres lo que le dio brillo al día a día, y así será por siempre, no cambiará, hasta el final de mis días.”
	* “Corazón Americano”, que dura 154 segundos y cuya letra es “Canta corazón, canta más alto, que tu pena al fin se va marchando, el nuevo milenio ha de encontrarnos, junto corazón, como soñamos.”
* Luis Alberto editó 2 álbumes
	* El primero se llama “Para los árboles”, lanzado el 31/03/2003, sacó 50.000 copias y vendió 49.000, consta de dos canciones:
		1. “Cisne”, de 312 segundos, cuya letra es “Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar”
		2. “Alma de diamante”, de 216 segundos, cuya letra es “Ven a mí con tu dulce luz alma de diamante. Y aunque el sol se nuble después sos alma de diamante. Cielo o piel silencio o verdad sos alma de diamante. Por eso ven así con la humanidad alma de diamante”
	* El segundo se llama “Just Crisantemo”, lanzado el 05/12/2007, sacó 28.000 copias y vendió 27.500. Tiene un solo tema:
		1. “Crisantemo”, de 175 segundos, cuya letra es “Tócame junto a esta pared, yo quede por aquí... cuando no hubo más luz... quiero mirar a través de mi piel... Crisantemo, que se abrió... encuentra el camino hacia el cielo”
