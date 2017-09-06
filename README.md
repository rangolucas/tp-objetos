tp-objetos

# Music Guide
## Primera iteración
Como el mundo de la música es muy complejo, los músicos propusieron hacer un sistema para poder ayudarlos en el día a día de sus carreras. 

## En principio queremos resolver tres requerimientos:
* saber la habilidad de un músico
* saber si un músico puede ejecutar bien una canción
* saber el costo de una presentación

## Algunos músicos que queremos modelar:

### Joaquín
pertenece al grupo “Pimpinela”
su habilidad es 20 pero le suma 5 puntos si canta/toca en grupo
interpreta bien las canciones que duran más de 300 segundos
cobra 100 pesos por presentación si toca él solo, o 50 en caso contrario

### Lucía
pertenece al grupo “Pimpinela”
su habilidad es 70
si canta en grupo se le resta 20 la habilidad.
interpreta bien una canción que diga la palabra “familia” (sin importar mayúsculas o minúsculas)
cobra 500 pesos la presentación si es en un lugar concurrido (cuya capacidad es mayor a 5.000 personas) o 400 en caso contrario

### Luis Alberto
tiene una guitarra Fender que vale 10 UG, pero a veces toca con una Gibson que vale 15 si está sana o 5 si la rompieron (por supuesto eso depende de cómo la traten, pero sale de fábrica sanita).
su habilidad es de 8 * el valor de la guitarra hasta un máximo de 100
interpreta bien todas las canciones
cobra 1.000 pesos por presentación hasta septiembre del 2017, después cobra $ 1.200

## Conocemos estas canciones:
* “Cisne”, que dura 312 segundos, que tiene como letra “Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar”
* “La Familia”, que dura 264 segundos y tiene como letra “Quiero brindar por mi gente sencilla, por el amor brindo por la familia“

### Contamos con las siguientes presentaciones:
* el 20/04/2017, en “Luna Park”, donde van a estar Luis Alberto, Joaquín y Lucía
* el 15/11/2017, en “La Trastienda”, donde van a estar Luis Alberto, Joaquín y Lucía

La capacidad del “Luna Park” se estima en 9.290 personas para cualquier día, mientras que la Trastienda tiene capacidad para 400 en planta baja y 300 en el primer piso (lo habilitan los sábados únicamente).
El costo debe calcular la sumatoria del cachet que cobra cada músico por hacer esa presentación (considerando el criterio que tiene cada músico para cobrar una presentación).

# Conceptos a aplicar

En esta entrega queremos que apliques estos conceptos
definición 
de objetos conocidos (wko)
de clases
y en particular, saber distinguir cuándo aplicar cada concepto
polimorfismo
manejo de referencias
pruebas unitarias    
definición de fixture
definición de casos de prueba o tests

Y tangencialmente queremos que aprendas a trabajar en grupo utilizando herramientas profesionales
para compartir código
para manejar versionado de código
y eventualmente para coordinar el trabajo en conjunto de diferentes personas que colaboran en un proyecto de software
