# [Music Guide](https://docs.google.com/document/d/1SoD_unLnl7jysV7rbvhK83OcQsP8KZCEjhpV2kOrdAM/edit#heading=h.useallixe2gp)

![Entrega 1](https://img.shields.io/badge/Entrega%201-Aprobada-brightgreen.svg?style=flat)
![Entrega 2](https://img.shields.io/badge/Entrega%202-Aprobada-brightgreen.svg?style=flat)
![Entrega 3](https://img.shields.io/badge/Entrega%203-En%20desarrollo-red.svg?style=flat)

![Imagen](https://i.redd.it/osiq3znqm79z.jpg)


# Tercera iteración
¡Va queriendo! Ahora nos acercaron nuevos requerimientos

### Criterios para comparar canciones
Queremos comparar canciones:
* por duración
* por tamaño de la letra
* y por título

De esta manera podemos agregar una nueva funcionalidad: saber cuál es la mayor canción de un álbum según un criterio que compare dos canciones. No se pide que elimine la funcionalidad anterior, pero sí que aplique algún mecanismo de reutilización que evite repetir la misma idea dos veces.

### Nuevas Canciones
Queremos establecer nuevos tipos diferentes de canciones:
* los remixes refieren a una canción original, y duran el triple de lo que dura dicha canción. La letra toma la letra de la canción original y agrega  “mueve tu cuelpo baby ” al principio y “  yeah oh yeah” al final.
* los mashups mezclan dos o más canciones, y su duración es la del tema más largo (en segundos de duración). El título sale de concatenar las letras de cada canción que interviene (intercalando entre ellas un espacio pero borrando los espacios que haya al comienzo y al final). El mashup de “Crisantemo” y “Alma de Diamante” es distinto del mashup que forman “Alma de Diamante” y “Crisantemo”

### Cambios en los músicos
Después de un relevamiento más exhaustivo, el usuario necesita hacer un cambio en el requerimiento que define cuándo un músico ejecuta bien una canción.
* Todos los músicos interpretan bien las canciones de su autoría
* Todos los músicos con habilidad mayor a 60 ejecutan bien cualquier canción
* Además debemos considerar las definiciones específicas para cada músico en particular
	* los músicos “de grupo” cantan bien las canciones que duran más de 300 segundos
	* los vocalistas populares cantan bien una canción que diga una determinada palabra (sin importar mayúsculas o minúsculas)

Con que alguna de las condiciones se cumpla se considera que dicho músico interpreta bien esa canción. No debe repetir ideas en la implementación de dicho requerimiento.

### Pdpalooza
Queremos generar una presentación en el estadio Luna Park el día 15/12/2017. Para eso
* no aceptamos ningún músico de habilidad menor a 70
* tampoco aceptamos músicos que no hayan compuesto al menos una canción
* y tampoco aceptamos músicos que no puedan ejecutar la canción “Canción de Alicia en el país” que dura 510 segundos y tiene como letra “Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.” 

**Resolver este requerimiento teniendo en cuenta** 
* que al querer agregar un músico debe verificarse que cumpla todas las condiciones
* que es importante para el usuario entender el motivo por el cual no pueda agregar un músico.
* como punto BONUS se valorará la posibilidad de poder agregar o quitar restricciones respecto a los músicos. Por ejemplo, para traer músicos menos habilidosos, podríamos eliminar la restricción de tener músicos de habilidad mayor o igual a 70 y crear una restricción para que los músicos tengan una habilidad mayor o igual a 50. Lo mismo con las demás restricciones.

### Un diagrama con la solución general
Se pide además del código comunicar el diagrama estático de la solución propuesta.

## Conceptos a aplicar
En esta entrega queremos que apliques estos conceptos
* mecanismo de herencia
* polimorfismo
* colecciones
* manejo de errores
* objetos bloque
* testeo unitario de casos felices y casos con errores

Y queremos que sigas trabajando en grupo utilizando herramientas profesionales
* para compartir código
* para manejar versionado de código
* y eventualmente para coordinar el trabajo en conjunto de diferentes personas que colaboran en un proyecto de software
