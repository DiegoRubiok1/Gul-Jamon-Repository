# Super Mega Hot Potato

  Pequeña demo multijugador local estilo *hot potato* construida con Godot 4. El objetivo
  es que dos jugadores corran por el escenario, tomen la pelota y la arrojen para
  mantenerla en movimiento sin quedarse con ella demasiado tiempo.

  ## Características

  - Juego top‑down para dos jugadores enfocado en partidas locales rápidas.
  - Mecánica de recoger y lanzar una pelota con inercia y desaceleración progresiva.
  - Escenario basado en `TileMapLayer` con colisiones definidas en el tileset.
  - Recursos gráficos propios y de terceros incluidos en `assets/`.

  ## Requisitos

  - [Godot 4.x](https://godotengine.org/) (el proyecto fue creado con la rama 4.5/
  Forward Plus).
  - GPU con soporte para Forward Plus o, si fuera necesario, cambia el modo de render en
  Proyecto → Configuración del Proyecto → Render → Renderer.

  ## Cómo ejecutar

  1. Clona o descarga el repositorio.
  2. Abre Godot 4 y selecciona **Importar proyecto**, apuntando al archivo
  `project.godot`.
  3. Si al ejecutar aparece una escena vacía, asigna manualmente la escena principal
  a `scenes/super_mega_hot_potato.tscn` desde Proyecto → Configuración del Proyecto →
  Aplicación → Escena Principal.
  4. Pulsa **Play** para iniciar la partida.

  ## Controles

  | Acción            | Jugador 1                     | Jugador 2
  |
  |-------------------|------------------------------|------------------------------------
  |
  | Moverse           | `W`, `A`, `S`, `D`           | Flechas del cursor
  |
  | Lanzar la pelota  | `Shift` izquierdo (`throw_p1`) | `Shift` derecho (`throw_p2`)
  |

  > Puedes ajustar las teclas en Proyecto → Configuración del Proyecto → Entrada.

  ## Estructura del proyecto

  - `scenes/`: escenas de Godot (jugadores, pelota, escena principal).
  - `scripts/`: lógica en GDScript (`ball.gd`, `character_body_2d.gd`, `player_2.gd`,
  etc.).
  - `assets/`: sprites, sonidos y otros recursos utilizados por el juego.
  - `project.godot`: configuración global del proyecto y mapa de entradas.

  ## Notas y próximos pasos

  - La configuración actual referencia scripts como `res://ball.gd`, pero el código vive
  en `res://scripts/`. Si Godot muestra errores al cargar, reimporta los scripts desde el
  editor o actualiza las rutas en las escenas.
  - Implementar una condición de victoria/derrota o un temporizador haría el prototipo
  más jugable.
  - Añade instrucciones in‑game y efectos de sonido a los eventos de recoger/lanzar para
  mejorar el feedback.

  ## Créditos

  Los recursos incluidos mantienen sus licencias originales; consulta la carpeta `assets/` para más detalles.