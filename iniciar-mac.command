#!/bin/bash
cd "$(dirname "$0")"
echo "Lyric Sync se esta abriendo en http://127.0.0.1:8080/"
echo "Deja esta ventana abierta mientras uses la app. Cerrala para apagarla."
(sleep 1; open "http://127.0.0.1:8080/") &
python3 -m http.server 8080 --bind 127.0.0.1
