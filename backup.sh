#!/bin/bash
#Script backup.sh Adrià Jara

echo -n "Indica la ruta del arxiu: "
read ruta
echo -n "Indica la ruta el arxiu que es vol copiar: "
read arxiu
echo -n "Ruta indicada: $ruta/$arxiu"
echo ""
DIR="/home/adjama/FitxConfBackup" #ruta del meu usuari
if [ -d "$DIR" ]; then
  echo "EL directori FitxConfBackup ja existeix"
else
  echo "El directori ${DIR} no existeix, creant..."
  mkdir /home/adjama/FitxConfBackup
fi
FILE=/home/adjama/$arxiu
if [ -f $FILE ]; then
    echo "$FILE ja existeix, sobreescribint"
    cp "$ruta/$arxiu" /home/adjama/FitxConfBackup
    else
  echo "L'arxiu no existeix, creant el arxiu"
  cp "$ruta/$arxiu" /home/adjama/FitxConfBackup
fi
exit 0


