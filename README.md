redhatchecklist
===============

El script tiene como objetivo realizar una evaluación sobre un Sistema RedHat o sus derivados, en busca de desviaciones de configuración contra las mejores prácticas del mercado.  El motivo de la creación del script se debió a la necesidad de cumplir ciertas normativas en los servidores donde trabajo, cabe aclarar que esta herramienta fue pensada con ese propósito y por este motivo no utilice "lynis" para la tarea.

Si alguna persona quiere ayudarme a optimizar/organizar o reprogramar el "código" es bienvenido :) ya que como verán me faltan muchos skills sobre la materia.

Procedimiento de uso
====================

1) Copiar al servidor el script  "redhatchecklist.pl" y la carpeta /libs/.

2) Modificar la linea "20" del archvio /libs/fase6.pl donde se encuentra la variable "$bannerpersona" con el valor "Cable" por algún string que se encuentra en el banner personalizado de su Compañia.

Modificar la linea "29" del archvio /libs/fase7.pl donde se encuentra la variable "ListenAddress" con el valor '10.246' por las direcciones IP que deben estar configuradas.

2) Debemos copiar al servidor que sera analizando nuestro script redhatchecklist.pl y la carpeta /libs/

3) Ejecutar con permisos de root el script.

[server]# perl redhatchecklist.pl

4) Luego debemos copiar los 2 reportes "html" al mismo directorio donde tenemos los siguientes archivos/diretorios:
- /src/
- /vendor/
- demo.css
- sprite.png

Más información
====================
Para mayor información visitar la wiki: https://github.com/marcositu/redhatchecklist/wiki
