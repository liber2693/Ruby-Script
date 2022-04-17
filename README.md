Es necesario tener instalado Ruby 2.6.2.

Para ejecutar el script es necesario, guardar el proyecto en una carpeta cualquiera.
Descomprimir el archivo ZIP dentro de esta carpeta cualquiera.

Desde la consola, entrar a la carpeta con el comando " cd 'nombre del proyecto' ".

Ejecutar un " bundle install " para descargar las dependencias.

Luego correr el script con el comando " ruby init_script.rb ".

En este momento el script comenzara a correr. En primer lugar le pedira la cantidad
de dias en los cuales quiere generar la data correspondiente. Esta cantidad esta
validada entre 1 y 30 dias. NO puede estar vacia. Cualquier error hara que el
script termine su ejecucion, enviando un mensaje de lo sucedido.

En segundo lugar el nombre del archivo sample. En este caso se llama " sample.txt ".
Al igual que el anterior, tambien esta validado. Por ejemplo, el archivo con un nombre que no exista.

Al terminar de correr el script (tarda unas milesimas de segundos), se generara un archivo txt, dentro de la carpeta tmp, que contendra la salida del archivo.

En cuanto a los SPECS, se usa la gema RSPEC. Esto puede verificarse con el comando
" bundle exec rspec spec/spec_script.rb ".