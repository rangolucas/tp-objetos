# [Music Guide](https://docs.google.com/document/d/1dAWH4ULRj31rNvabuncP7SR_Tboa2emQhMY7gl8DPvM/edit)

![Entrega 1](https://img.shields.io/badge/Entrega%201-Aprobada-brightgreen.svg?style=flat)
![Entrega 2](https://img.shields.io/badge/Entrega%202-Aprobada-brightgreen.svg?style=flat)
![Entrega 3](https://img.shields.io/badge/Entrega%203-En%20desarrollo-red.svg?style=flat)
![Entrega 4](https://img.shields.io/badge/Entrega%204-ATR-9D1623.svg?style=flat&colorA=000000&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAABmJLR0QA%2FwD%2FAP%2BgvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4QoPAywlc2xrwAAAANVJREFUKM%2B90iFLBEEUB%2FCfCmY1CLdbLDbRIhf8BpMObGZtVptYDVeMxwW7CJcUVrh2fgBRMJgMMvMVLMpZdo9l0WMN%2BtLMg98b5s%2Fjv2uhOhR51sUlNnCPQ3QwxBYmOAoxvc1gkWfreMFKbegI29is9R6xG2L6WCwbBw0E%2Bw0EO9iDCq7N%2B0ajVuvwoWUmUzzV4Q3GLeBFiOl1BkNMn%2Bjhbg4a4KS6VC8KMb2X%2BPYb1MdxiGn6YwBFni3juhwC5yGm01bJlfgKzyGms1%2BtVJFnS3%2Byq188RzA28EvUogAAAABJRU5ErkJggg%3D%3D) 

![Imagen](https://k61.kn3.net/7A189F24E.png)


# Cuarta iteración
Y para cerrar los requisitos de este año, el usuario nos pide las últimas modificaciones.
### Los músicos y su complejidad
Después de un cierto tiempo el usuario comenzó a tener problemas ya que muchos músicos comenzaban cobrando de una forma y luego pasaban a otra, sumado esto a que algunos no interpretaban bien una canción primero pero luego sí. Entonces decidió modificar las categorías de los músicos:
* sigue siendo cierto que todos los músicos cantan bien una canción si su habilidad es > 60 o bien si la canción es de su autoría, pero además debemos considerar
* algunos músicos cantan bien canciones que tienen una determinada palabra en su letra, son los palabreros
* otros músicos cantan bien canciones de más de x segundos (se quiere parametrizar ese x): son los largueros
* y ahora también hay otros músicos que cantan bien canciones que tienen una cantidad impar de segundos: son los impareros
* no entra en el juego Luis Alberto, que sigue siendo único e irrepetible
* además algunos músicos cobran una cierta plata para un recital donde cantan ellos solos o bien la mitad en caso contrario, es decir que cobran en base a cuántos se presentan en el show.
* otros músicos cobran una cantidad x de pesos si la capacidad del lugar es de más de p personas, y de lo contrario cobran 100 pesos menos, es decir cobran en base a la capacidad del lugar.
* por último están los que cobran x pesos hasta una fecha f y pasada esa fecha cobran un porcentaje adicional p, es decir que cobran en base a la expectativa inflacionaria.
* la lógica de negocio para calcular la habilidad sigue siendo la misma para luis alberto, los vocalistas populares y los músicos de grupo

Nuestro administrador de la aplicación quiere poder modificar y combinar
* las formas de cobrar un músico y 
* la forma de definir si pueden ejecutar una canción en forma adecuada, 
de manera que sea fácil cambiar un músico que cobra por capacidad y es larguero, a un músico que cobre en base a la inflación y que sea palabrero.

Diseñar e implementar una solución evitando no solo la repetición de ideas y código, sino también pensando en facilitar la creación de un músico en el fixture. 


### [¡Vamos las bandas!](https://www.youtube.com/watch?v=xLgWWuNIEKQ)

El concepto de banda o grupo musical se hizo más fuerte, y el usuario nos pidió incluir a la banda para convocarlas a recitales y para saber también qué discos editaron. Una banda tiene un conjunto de músicos que además pueden haber hecho una carrera solista, con sus propios álbumes publicados.

Esto no afecta la definición anterior del músico que sabe si es solista o no.

Del relevamiento con el usuario surgieron las siguientes conclusiones:
* además de los músicos, una banda necesita un representante, que no tiene habilidades pero sí cobra un monto en pesos por presentación
* la habilidad de una banda es la suma de habilidades de sus músicos (considerar que van a tocar en grupo) más un 10% por la “química”
* una banda cobra la sumatoria de lo que cobran todos más lo que cobra el representante
* una banda puede tocar una canción si todos los integrantes la pueden tocar

### Requerimientos adicionales
* Dada una lista de canciones, queremos saber cuáles puede tocar bien un músico
* Conocer cuál es la “magia” de una presentación, que es la suma de habilidades de los músicos que tocan en ese show (para las bandas vale la habilidad de la banda)

## Conceptos a aplicar
En esta entrega queremos que apliques estos conceptos
* composición en lugar de herencia
* polimorfismo
* elementos de diseño
* diseño pensado en la creación de objetos
* testeo unitario avanzado

Y queremos que sigas trabajando en grupo utilizando herramientas profesionales
* para compartir código
* para manejar versionado de código
* y eventualmente para coordinar el trabajo en conjunto de diferentes personas que colaboran en un proyecto de software

### Fixture
Nuevos lugares para tocar:
* Prix D’Ami es para 150 personas
* La Cueva es para 14.000 personas

Cambios en los músicos
* Joaquín es larguero de 300 segundos y cobra por tocar él solo en un show  $ 100 (o la mitad en caso contrario). Sigue perteneciendo al grupo “Pimpinela”.
* Lucía es palabrera de “familia” y cobra por capacidad (a partir de 5000) $ 500 (o el descuento). Sigue perteneciendo al grupo “Pimpinela”.
* Soledad es palabrera de “amor” y cobra por tocar ella sola en un show $ 6000 (o la mitad en caso contrario)
* Kike es imparero y cobra por expectativa inflacionaria una base $ 4000 y un 50% más a partir del 8 enero del 2018
* Recordemos que Luis Alberto cobra 1.000 pesos por presentación hasta septiembre del 2017, después cobra $ 1.200 (o sea un 20%)

Aparecen dos bandas:
* “Pimpisole”, compuesta por Soledad, Joaquín y Lucía.
  * Tiene un representante: “Cachorro” que cobra $ 1.982
* “El eterno retorno”, compuesta por Kike y Luis Alberto
  * Tiene un representante “Félix” que cobra 500

Luis Alberto toca con la Fender por defecto.

Incorporar nuevas presentaciones:
* “Prix D’Ami”, para el 30/06/2017, donde van a tocar Joaquín, Soledad y “El eterno retorno”. 
* “La Cueva”, para el 05/01/2018, donde va a tocar Pimpisole.
