if [ $# -ne 2 ]; then
    echo "Uso: $0 <usuario_clave> <ruta_archivo_usuarios>"
    echo "Ejemplo: $0 usuario1 /path/to/repo/202406/bash_script/Lista_Usuarios.txt"
    exit 1
fi

usuario_clave="$1"
clave=$(grep "^$usuario_clave:" "$2" | cut -d: -f2)

grupo="mi_grupo"
groupadd "$grupo" 2>/dev/null || true

nuevo_usuario="nuevo_usuario"
useradd -m -p "$clave" "$nuevo_usuario"

usermod -aG "$grupo" "$nuevo_usuario"
