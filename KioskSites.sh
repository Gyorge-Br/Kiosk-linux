#!/bin/bash

# Ajuste resolução
xrandr --output HDMI-1 --mode 1024x768

# Inicia o gerenciador de janelas leve
openbox &

# Aguarda um pouco pra garantir que a sessão gráfica está pronta
sleep 2

# Desativa o DPMS (Energy saving)
xset -dpms

# Desativa o screensaver do X
xset s off

# Garante que a tela não apague automaticamente
xset s noblank


# Caminho para o perfil dedicado
PROFILE_DIR="$HOME/.PerfilKiosk"

# Se o perfil ainda não existir, crie ele
if [ ! -d "$PROFILE_DIR" ]; then
    firefox --no-remote -CreateProfile "site_kiosk $PROFILE_DIR"
fi

# Abre o Firefox com o perfil, direto no site, sem interface
firefox --no-remote \
        --profile "$PROFILE_DIR" \
        --kiosk "./index.html"

