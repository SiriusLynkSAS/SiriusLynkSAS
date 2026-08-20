# SiriusLynk Consultoría SAS — Quarto Website

Versión de identidad visual basada en el logo SiriusLynk y el sistema gráfico azul/electric-blue suministrado para el proyecto.

## Estructura

- `_quarto.yml`: configuración del sitio y navegación.
- `styles.scss`: sistema visual corporativo.
- `index.qmd`: portada.
- `soluciones.qmd`: capacidades técnicas, ambiente, ofertas, costos y planificación.
- `capacitaciones.qmd`: programas de formación en hidráulica, ambiente, contratación, costos y BIM 4D/5D.
- `sectores.qmd`: energía, embalses, minería e infraestructura pública.
- `proyectos.qmd`: portafolio generado desde `data/proyectos.csv`.
- `auditoria.qmd`: auditoría y revisión técnica.
- `ingenieria-digital.qmd`: BIM, ISO 19650, CDE y trazabilidad.
- `proyecto-tambo-ii.qmd`: primer caso técnico.
- `nosotros.qmd`, `contacto.qmd`, `portal-clientes.qmd`.
- `assets/brand/`: logo completo, isotipo y referencia original.
- `assets/images/`: hero y recortes visuales en el mismo lenguaje gráfico.

## Vista previa

Desde RStudio o una terminal abierta en la carpeta del proyecto:

```bash
quarto preview
```

## Antes de publicar

1. Completar correo, teléfono, ubicación y redes en `contacto.qmd`.
2. Confirmar la localización pública de Curimining en `data/proyectos.csv`.
3. Verificar autorización para publicar nombres/detalles de cada experiencia.
4. Revisar el alcance público de la oferta de capacitaciones y los temas de contratación pública antes de publicar.
5. Conectar el caso Tambo II con los resultados calculados desde la fuente técnica.
6. Configurar el acceso definitivo al portal/CDE.
