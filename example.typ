#import "conf.typ": conf, guia, pronombre
#let mostrar_guias = true
#show: conf.with(
    titulo: "El Título de mi Tema",
    autor: (nombre: "María Echón", pronombre: pronombre.elle),
    profesores: ((nombre: "Juan Pérez", pronombre: pronombre.el),),
    coguias: ((nombre: "Juana Pérez", pronombre: pronombre.ella),),
    supervisor: (nombre: "María Gómez", pronombre: pronombre.ella),
    anno: "2023",
    espaciado_titulo: 2fr,
)

#guia(visible: mostrar_guias)[Se debe quitar todas las guías (estas cajas grises) antes de entregar el documento.

Para ello, se debe cambiar el valor de la variable `mostrar_guias` a `false` en la segunda línea del archivo.

Además, hay que reemplazar los datos de la portada en los parámetros de la función `conf` en la línea 3 del archivo.

Los parámetros que acepta la función `conf` son:
- título: El título del tema.
- autor: Un diccionario con campos `nombre` y `pronombre`. Para los pronombres, importar el diccionario `pronombre` desde `conf.typ`. Los valores disponibles son `pronombre.el`, `pronombre.ella` y `pronombre.elle`.
- informe: `false` si es la propuesta de tema, `true` si es el informe final.
- codigo: Omitir si es la propuesta de tema. Si es el informe final, colocar el código del ramo. (CC6908 para malla v3, CC6907 para malla v5, CC7980 para Tesis II)
- modalidad: Puede ser \"Memoria\", \"Práctica extendida\", \"Titulación con Magíster\" o \"Doble Titulación de Dos Especialidades\". Por defecto, en este template está configurado como "Titulación con Magíster".
- profesores: Lista de profesores guías. Cada elemento de la lista es un diccionario con campos `nombre` y `pronombre`. Si es un solo elemento, recordar poner una coma al final: `(dict_guia,)`
- supervisor: Información del supervisor en caso de práctica extendida. Es un diccionario con campos `nombre` y `pronombre`.
- anno: Año en que se entrega el informe. Por defecto se usa el año actual.
- espaciado_titulo: Espaciado extra antes del título y al rededor de autor. Por defecto es `1fr`. Se puede usar `2fr` para un espaciado doble, `3fr` para un espaciado triple, etc.

Como aproximación, se espera que la tesis aborde unas 50 páginas.

No es necesario poner texto antes de la introducción.]


= Introducción

#guia(visible: mostrar_guias)[Dar una introducción al contexto del tema.

Explicar, en términos generales, el problema abordado.

Motivar la necesidad, la importancia y/o el valor de tener una (mejor) solución al problema.

En el caso de la práctica extendida, incluir detalles de la organización, su quehacer, el equipo y el supervisor con los cuales se va a trabajar, la relevancia del problema a la organización, etc.

En el caso de Tesis, se recomienda inclcuir un breve resumen del desarrollo del trabajo, haciendo énfasis en el problema, la metodología y los resultados obtenidos.

(1 a 2 páginas)]

= Marco Teórico

#guia(visible: mostrar_guias)[Discutir las soluciones o recursos existentes relacionados con el problema; es decir, el estado del arte y la revisión de literatura relacionada al problema y a la solución que se busca plantear. Justificar por qué es necesario un trabajo novedoso.]

Ejemplos de referencias:
- Conferencia: @CorlessJK97 // azucar sintactica para #cite("CorlessJK97")

= Problema 

#guia(visible:mostrar_guias)[El planteamiento del problema. Es decir, dada la investigación realizada y el contexto en el que se desarrolla, cuál es el problema que se desprende y se quiere solucionar. Se espera que dentro de todo sea conciso y abordable para el alcance del trabajo de tesis.]

= Preguntas de investigación

#guia(visible:mostrar_guias)[Tres a cinco preguntas de investigación que se desprendan del problema. Idealmente, se espera que se puedan responder en el transcurso del trabajo.]

= Hipótesis

#guia(visible:mostrar_guias)[Lo que se busca probar a partir del problema planteado. La idea es que sea lo bastante específica como para poder reproducir el trabajo presentado (es decir, no se vale poner "Si yo pongo un chocolate al sol, éste se derrite", si no que debería ser más como "Si yo pongo un chocolate a pleno sol en un día soleado con 38°C de temperatura durante 1 hora, entonces el chocolate se derretirá parcialmente debido a la transferencia de calor por radiación del Sol.").]

= Objetivos

#guia(visible: mostrar_guias)[Describir las _metas_ del trabajo. Hay que contestar acá: ¿_qué_ quieres lograr? (La sección que sigue contestará la pregunta: ¿_cómo_ lo vas a lograr?)

Ejemplos de metas: lograr que X sea (más) eficiente, usable, seguro, completo, preciso, barato, informativo, posible por primera vez, etc.

Ejemplos de _no_ metas: implementar algo en Javascript, aplicar modelo Y sobre los datos, etc. (Estas cosas van en la descripción de la *Solución propuesta*.)

Los objetivos deberían ser específicos, medibles, alcanzables y relevantes al problema (ver la clase 2). El plan de trabajo debería argumentar que sean acotados en tiempo (un semestre).

Al final del trabajo, debería ser factible saber si se ha logrado los objetivos enumerados acá, o saber cuán bien se han logrado, o no. Por ejemplo, si la meta es tener algo eficiente en términos de tiempo, debería haber una forma de evaluar o estudiar los tiempos. Acá tendrás que definir la forma general en que se podrá evaluar el trabajo.

(No hay que poner texto acá. Se puede empezar directamente con el objetivo general.)]
	

== Objetivo General

#guia(visible: mostrar_guias)[
Un _resumen conciso_ (no más de un párrafo) de la meta principal del trabajo, es decir, qué quieres lograr con el trabajo (o qué significa \"éxito\" en el contexto del trabajo).

El objetivo debería ser específico, medible, alcanzable, relevante al problema, y acotado en tiempo.

(\"Titularse\" no es una repuesta válida. :\))]

== Objetivos Específicos

#guia(visible: mostrar_guias)[
Una _lista_ de los hitos principales que se quieren lograr para (intentar) cumplir con el objetivo general. Divide el objetivo general en varios hitos que formarán las etapas del trabajo.
		
Cada objetivo debería ser específico, medible, alcanzable, relevante al problema, y acotado en tiempo.
		
No se debería escribir más de un párrafo por hito. 
		
Los objetivos específicos deberían \"sumar\" al objetivo general.
		
(Una lista de 3 a 7 párrafos)]

+ ...
+ ...

== Evaluación

#guia(visible: mostrar_guias)[
Describe cómo vas a poder evaluar el trabajo en términos de cuán bien cumple con los objetivos planteados. Se pueden discutir los datos, las medidas, los usuarios, las técnicas, etc., utilizables para la evaluación.

(1 a 2 párrafos)]

= Metodología

#guia(visible: mostrar_guias)[El trabajo realizado. Aquí se aborda toda la parte del diseño de la solución y su implementación, es decir, se habla sobre implementación de código, diseño de experimentos, recolección de datos, etc.]

= Resultados

#guia(visible: mostrar_guias)[Aquí van la descripción y visualización de los resultados obtenidos a partir del trabajo, ya sea de forma cualitativa o cuantitativa. OJITO: en esta parte SÓLO SE PONEN LOS RESULTADOS, la discusión de estos queda para el apartado siguiente.]

= Discusión 

#guia(visible: mostrar_guias)[Análisis de los resultados obtenidos a partir del trabajo realizado. Se recomienda hacer contrastes con lo obtenido de la revisión de literatura y estado del arte, además de abordar el análisis en torno al problema que se busca solucionar y la hipótesis que se busca probar.]

= Conclusiones

#guia(visible:mostrar_guias)[Conclusiones del trabajo. Algunas preguntas que pueden guiar las conclusiones son: ¿Se comprobó/refutó la hipótesis? ¿Este trabajo implica un aporte en su área? ¿Existen cosas pendientes, trabajo futuro a realizar?

Se recomienda agregar un párrafo de los posibles futuros trabajos que se desprenden de la tesis presentada.]

#bibliography(
    "bibliografia.yml",
    title: "Referencias",
    style: "ieee",
)