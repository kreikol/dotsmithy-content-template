# dotsmithy-content-template

Plantilla para crear tu repo de contenido de [dotsmithy](https://github.com/kreikol/dotsmithy):
el sitio donde viven tus dotfiles, tus listas de paquetes y tus perfiles de máquina.
dotsmithy es el motor que lo aplica; este repo es lo tuyo.

## Crea tu repo a partir de la plantilla

Tus dotfiles son cosa tuya, así que lo normal es que tu repo sea **privado**.

- En GitHub: botón **Use this template** → **Create a new repository**, y marca
  *Private*.
- Desde la terminal:

  ```sh
  gh repo create mis-dots --template kreikol/dotsmithy-content-template --private --clone
  ```

Sale con un solo commit y sin ningún vínculo con la plantilla: a partir de ahí es
todo tuyo.

## Qué trae

```
dots.yaml        el manifiesto: perfiles, dimensiones y lo que no es un fichero
shared/          lo común a todas tus máquinas
ux/desktop/      solo para máquinas con escritorio
ux/terminal/     solo para máquinas sin escritorio
machines/        lo propio de cada máquina (laptop, server)
```

Dentro de cada capa, `home/` se enlaza en tu `$HOME`, `packages/dnf.txt` lista
paquetes y `hooks/<punto>/` guarda scripts que se ejecutan en cada fase. El
`dots.yaml` va comentado: empieza por ahí y cambia los perfiles por los tuyos.

También trae un CI (`.github/workflows/validate.yml`) que comprueba en cada push
que dotsmithy entiende tu contenido. Si no lo quieres, bórralo sin más.

## Comandos del día a día

| Comando | Qué hace |
| --- | --- |
| `dots init --profile <perfil> --remote <url-ssh>` | Deja una máquina lista desde cero: clona este repo, guarda el perfil y lo aplica todo. |
| `dots link` | Vuelve a enlazar tus dotfiles en `$HOME` (por ejemplo, después de añadir uno). |
| `dots add dnf <paquete>` | Apunta un paquete en la capa de tu máquina y lo instala. Con `--layer shared` va a todas. |
| `dots update` | Trae los cambios de este repo y los aplica. |
| `dots sync` | Te dice qué paquetes declarados te faltan por instalar, sin tocar nada. |

Todos aceptan `--dry-run` (`-n`) para ver qué harían sin hacerlo.

## Más

- El motor y cómo instalarlo: <https://github.com/kreikol/dotsmithy>
- La documentación de uso: <https://github.com/kreikol/dotsmithy/tree/main/docs>
