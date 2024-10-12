Recopilación de comandos de Vim
Movimientos del cursor (En el modo de edición normal)
Las cuatro direcciones en Vim, teclas: h, j, k, l.

Al pulsar estas teclas (pon especial cuidado en mayúsculas o minúsculas) el cursor realizará las accciones que se indican.

w - salta hacia adelante al comienzo de cada palabra (los signos de puntuación son considerados palabras)
W - salta hacia adelante por palabras (palabras separadas por espacios)
e - salta hacia adelante al final de las palabras (los signos de puntuación son considerados palabras)
E - salta hacia adelante al final de las palabras (sin tener en cuenta los signos de putuación)
b - salta hacia atrás por palabras (los signos de puntuación son considerados palabras)
B - salta hacia atrás por palabras (sin tener en cuenta los signos de puntuació)
0 - salta al comienzo de la línea
^ - salta al primer caracter que no sea un espacio en blanco de la línea (similar a 0w)
$ - salta al final de la línea
H - lleva al cursor hasta la parte superior de la pantalla
M - lleva al cursor hasta la mitad de la pantalla
L - lleva al cursor hasta la parte inferior de la pantalla
zt - lleva la línea en la que está el cursor hasta la parte superior de la pantalla
z. - lleva la línea en la que está el cursor hasta mitad de la pantalla y situa el cursor en la primera columna
z- - lleva la línea en la que está el cursor hasta la parte inferior de la pantalla y situa el cursor en la primera columna
Avanzado (en función de lo que puede ser más interesante)
Ctrl+d - avanza media página
Ctrl+u - retrocede media página
Ctrl+f - avanza una página entera
Ctrl+b - retrocede una página entera
Ctrl+e - en modo normal hace scroll hacia abajo (sube el texto) línea a línea
Ctrl+y - en modo normal hace scroll hacia arriba (baja el texto) línea a línea
} - salta hacia adelante un párrafo (escribiendo un número delante, salta el número de párrafos especificados)
{ - salta hacia atrás un párrafo (escribiendo un número delante, salta el número de párrafos especificados)
gg - salta al incio de la página
G - salta al final de la página
: [número] [enter] - va a esa línea en el documento
Buscando
f [caracter] - posiciona el cursor en el próximo caracter especificado, de la línea actual que se encuentre después del cursor
F [caracter] - posiciona el cursor en el caracter especificado anterior, de la línea actual que este antes del cursor
t [caracter] - posiciona el cursor en el caracter anterior al especificado de la línea actual después del cursor
T [caracter] - posiciona el cursor en el caracter posterior al especificado de la línea actual después del cursor
Todos estos comandos pueden ser seguidos de un signo de ; (punto y coma) para ir al siguiente elemento buscado o con el signo , (coma) para ir al elemento buscado previo
Insertar/Añadir/Editar texto
Resultado en modo de Insertar
i - comienza el modo de insertar en la posición del cursor
I - inserta texto al inicio de la línea actual
a - añade texto después de la posición del cursor
A - añade texto al final de la línea actual
o - añade una línea en blanco debajo de la línea actual (sin necesidad de pulsar enter)
O - añade una línea en blanco por encima de la línea actual
cc - cambia (reemplaza) una línea entera
c [comando de movimiento] - cambia (reemplaza) desde la posición del cursor hasta donde le indiquemos con el comando de movimiento que hemos visto anteriormete (e, w, $, etc).
por ejemplo: ce reemplaza desde la posición del cursor hasta el final de la palabra sobre la que este el cursor
r [char] - reemplaza un único caracter con el caracter especificado (sin tener que entrar en el modo de edición)
d - eliminar
d - [comando de movimiento] elimina desde el cursor hasta donde le indiquemos con el comando de movimiento que hemos visto anteriormente
por ejemplo: de elimina desde la posición del cursor hasta el final de la palabra actual
dd - elimina la línea actual entera
u - deshacer
Ctrl+r - volver a hacer o deshacer lo deshecho
U - deshacer todos los cambios de la línea actual
Esc o Ctrl+[ - sale del modo de insertar y regresa al modo normal
Marcando texto (modo visual)
v - comienza el modo visual
A partir de ahora te puedes mover por todo el texto como en el modo normal (h, j, k, l etc.) y después puedes ejecutar cualquier comando de edición (como por ejemplo y, d, o c)
V - comienza la selección visual línea a línea
Ctrl+v - comienza la selección visual en modo de bloque
Esc o Ctrl+[ - sale del modo visual
aw - estando en modo visual, marca una palabra
ab - estando en modo visual, marca un bloque delimitado con ()
aB - estando en modo visual, marca un bloque delimitado con {}
Avanzado
O - se mueve de una esquina a otra del bloque
o - se mueve de un extremo a otro bloque marcado
Comandos visuales
Pulsa cualquiera de estos comandos mientras partes del texto están seleccionadas para que se ejecute la acción

y - copia el texto marcado (yank)
d - elimina el texto marcado
c - elimina el texto marcado e inicia el modo de inserción (como hemos visto anteriormente que hace el comando c)
Cortar y pegar
yy - copia una línea completa
p - pega desde el portapapeles propio después de la posición del cursor
P - pega en la posición anterior al cursor
dd - elimina una línea completa
x - elimina el caracter donde está situado el cursor
X - elimina el caracter previo al cursor (similar al borrado con la tecla backspace)
Salir de Vim
:w - guarda los cambios en el archivo, pero no sale de Vim
:wq - guarda los cambios en el archivo y sale de Vim
:x - similar a la opción anterior. Guarda los cambios en el archivo y sale de Vim
:q - sale de Vim (da un error si algo en el archivo ha cambiado y no se ha guardado)
:q! - sale de Vim y descarta los cambios que no se hayan guardado
:wqa - guarda los cambios en todas las pestañas abiertas y sale de Vim
Buscar/Reemplazar
/patrón - búsqueda hacia adelante del patrón. Si no se especifica un patrón de búsqueda realiza la búsqueda del último patrón
?patrón - búsqueda hacia atrás del patrón. Si no se especifica un patrón de búsqueda realiza la búsqueda del último patrón
n - repetir la búsqueda en la misma dirección
N - repetir la búsqueda en la dirección opuesta
* - búsqueda hacia adelante de la palabra sobre la que está el cursor
# - búsqueda hacia atrás de la palabra sobre la que está el cursor
:%s/término1/término2/g - reemplaza el término1 por el término2 en todo el archivo
:%s/término1/término2/gc - reemplaza el término1 por el término2 en todo el archivo pidiendo confirmación en cada cambio
Trabajando con múltiple archivos
:e nombre_de_archivo - Edita el archivo con el nombre especificado
:tabe - crea una nueva pestaña
gt - va a la siguiente pestaña
gT - va a la pestaña anterior
Avanzado
:vsp - divide la ventana de forma vertical
ctrl+ws - divide la ventana de forma horizontal
ctrl+wv - divide la ventana de forma vertical
ctrl+ww - cambia el cursor entre la distintas ventanas
ctrl+wq - cierra una ventana
Marcas
Las marcas en el texto te permiten saltar a los puntos designados con esas marcar en tu archivo.

m{a-z} - establece una marca {a-z} (una m seguida de una letra. Por ejemplo: ma) en la posición del cursor
Una marca con letra mayúscula {A-Z} establece una marca global que funcionará entre distintos archivos
‘{a-z} - mueve el cursor al comienzo de la línea donde se estableción la marca
‘’ - regresa a la ubicación previa antes del salto
:delmarks! - este comando o :delm! en forma abreviada elimina todas la marcas de letras minúsculas del buffer
Redimensionar ventanas
Trabajando con el editor Vim podemos dividir la vista de la ventana en una o más, en modo vertical u horizontal. Estas divisiones de ventanas, podemos redimensionarlas en función de nuestras necesidades. Veamos los comandos.

Ctrl+w + o Ctrl+w - - añade o quita columnas a la ventana activa cuando hay una división horizontal
Ctrl+w > o Ctrl+w < - añade o quita filas a la ventana activa cuando hay una división vertical
Ctrl+w = - para igualar el tamaño de las ventanas
Ctrl+w _ - para establecer el tamaño de la ventana activa a la máxima altura
Ctrl+w | - para establecer el tamaño de la ventana activa a la máxima anchura
Miscelánea
>> - sangra o indenta la línea un nivel
<< - quita el sangrado de la línea un nivel
~ - cambia el caracter debajo del cursor (o una selección realizada en modo visualización) entre mayúscula y minúscula y viceversa
Ctrl+a - en modo normal incremente el valor de un número que este bajo el cursor
Ctrl+x - en modo normal decrementa el valor de un número que este bajo el cursor
'. - salta a la última línea editada
. - repetir el último comando
J - une la línea inferior a la actual donde este el cursor
Ctrl+e - en modo insertar, copia el texto de la la línea inferior donde está el cursor caracter a caracter
Ctrl+y - en modo insertar, copia el texto de la la línea superior donde está el cursor caracter a caracter
:%TOhtml - ejecutar ese comando para crear una versión HTML del archivo editado actualmente
Se puede abrir el código fuente de cualquier web simplemente ejecutando: vim https://url_de_la_web (por ejemplo: vim https://duckduckgo.com/)
Huevos de Pascua
Algunos comandos que tienen que ver más con el sentido del humor de los desarrolladores que con el propio Vim, pero que siempre es curioso conocer ¿Sabías que existían?

:smile - ¡sonrie!
:help! - Buen consejo
:help 42 - La respuesta a todo
:help holy-grail - Lo encontraste antes que nadie
:set rightleft - ¿Qué ha pasado?
:set norightleft - Buf, todo volvió a la normalidad
:help uganda - Vim es charityware
:help quotes - Citas sobre Vim
Haciendo Vim más amigable
Vim es bastante poco amigable si lo usamos tal como viene con de manera predeterminada. Por ejemplo escribir :w para cada archivo es bastante incómodo y copiar y pegar desde el portapapeles del sistema no funciona. Sin embargo unos pequeños cambios y adaptaciones puede hacer que Vim se acerce mucho al editor de tus sueños.

Además de las configuraciones que veremos a continuación, también os recomiendo un artículo con algunas sencillas configuraciones extras para hacer que Vim sea más amigable. Podéis acceder a ellas pinchando aquí.

.vimrc
Podéis echar un vistazo a diferentes archivos de configuración que usuarios de Vim comparten, para tomar ideas y adoptar y/o adaptarlas a vuestras necesidades. Por ejemplo a este archivo .vimrc con algunas configuraciones interesantes.
Este es una configuración mínima que se enfoca en tres prioridades:
añadir opciones que son mejores (como mostrar más información en el auto completado)
atajos de teclado más convenientes: (como [espacio]w para guardar el archivo, en vez de :w [enter])
una forma de trabajo similar a ditores de texto más convencionales (como la habilitación del uso del ratón)
Instalación
Copia el contenido en el archivo oculto .vimrc de tu carpeta de /home y reinicia Vim. Écha un vistazo, para ver lo que ofrece y lo que puedes hacer con el (como [espacio]w para guardar un archivo).
Ahora deberías ser capaz de estando en el modo normal de Vim y pulsando las combinaciones de teclas [espacio]w poder guardar el archivo.
[espacio]p debería pegar texto desde el portapapeles del sistema (fuera de Vim).
Si no puedes pegar texto desde el portapapeles del sistema dentro de Vim, quizás es porque Vim no ha sido compilado con la opción del portapapeles del sistema. Para comprobarlo, ejecuta vim --version y comprueba si aparece lo siguiente +clipboard. Si aparece -clipboard, no serás capaz de copiar desde fuera del buffer de Vim.
Intercambiar las teclas de Bloqueo de Mayúsculas y Escape
Muchas personas que utilizan Vim mapean estas dos teclas, para que al pulsar la tecla de Bloqueo Mayúsculas se interprete como si fuera el Escape. Ya que en esa posición es más cómodo el uso de esa tecla. Si quieres hacerlo en internet hay varias formas y depende del sistema que utilices será distinto. Por tanto abre tu buscador y encuentra la respuesta que andas buscando.
También se puede mapear la función de la tecla Escape a una combinación de teclas poco usual, como por ejemplo jj o kk. Para ello basta incluir en nuestro archivo de configuración lo siguiente: imap jj
Enlaces de interés
A continuación comparto algunas webs de interés sobre Vim que he ido encontrando y de las que algo he aprendido. No están listadas bajo un orden especial. La lista irá ampliándose con más enlaces, según los vaya encontrando en la procelosa web.

https://www.cs.oberlin.edu/~kuperman/help/vim/
https://vim.fandom.com/wiki/Vim_Tips_Wiki
https://vimawesome.com/
https://jovicailic.org/
https://vim-adventures.com/
http://www.vimgenius.com/
http://vimcasts.org/
Conclusión
Estas son solo algunas de las cosas que puedes con Vim gracias a sus comando y combinaciones de teclas. Reconozcon que al principio puede ser apabullante, pero si te interesa y tienes constancia quizás se convierta en tu editor de texto preferido.

Tienes el código fuente de esta página alojado en un repositorio de Gitlab disponible desde este enlace: gitlab.com/victorhck/comandos_vim También puedes consultar artículos que le he dedicado a Vim en mi blog en el siguiente enlace: victorhckinthefreeworld.com/tag/vim/

Si este o cualquier otro contenido que realizo te resulta interesante, puedes invitarme a una cerveza.
