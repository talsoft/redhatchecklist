
use Term::ANSIColor qw(:constants);


# ----------------------------------------------------------------------------------------
# Fase 1.11 -- Verificar que no existan usuarios con Grupo ID 0
# ----------------------------------------------------------------------------------------

print "-" x 100;
print " \nFase 1.11 -- Verificar que no existan usuarios con Grupo ID 0\n";
print F "  <h3>Fase 1.11 -- Verificar que no existan usuarios con Grupo ID 0</h3>\n";
print F "<div>\n";
print F "<div class=\"content\">\n";

print R "  <h3>Fase 1.11 -- Verificar que no existan usuarios con Grupo ID 0</h3>\n";
print R "<div>\n";
print R "<div class=\"content\">\n";

print "-" x 100;

open(ID0PASSWD,"/etc/passwd");

while (<ID0PASSWD>) {
       ($linea)=split(/\n/,$_,1); (@userdata)=split(/:/,$linea);
       $user=$userdata[0];
       $id0=$userdata[3];
	   
	   if ($user ne "root")
	   {
			if ($id0 == 0) {
			 if ($username ne "root" && $username ne "halt" && $username ne "sync" && $username ne "shutdown" && $username ne "operator")
			 {
			 
				print BOLD, RED, "\nNegativo:", RESET . " Negativo: El usuario $user  tiene definido Grupo ID 0\n";
				print F "<p class=\"negativo\">El usuario $user  tiene definido Grupo ID 0</p>\n";
				print R "<p>El usuario $user  tiene definido Grupo ID 0. Recomendamos analizar si los permisos asignados son los correctos</p>\n";
			}
		}
		}
}


print F "</div>\n";
print F "</div>\n";

print R "</div>\n";
print R "</div>\n";
close (ID0PASSWD);
