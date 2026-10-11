#!/usr/bin/env bash
# Hook de ejemplo: corre una sola vez, al final de `dots init`.
#
# Los hooks reciben el contexto en variables DOTS_* (perfil, máquina, capas...).
# Un hook de verdad debería poder ejecutarse varias veces sin romper nada.
set -euo pipefail

echo "dotsmithy: listo el perfil ${DOTS_PROFILE} en la máquina ${DOTS_MACHINE}."
echo "dotsmithy: capas aplicadas: ${DOTS_LAYERS}"
