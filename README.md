# Proyecto de Bioliteratura y Bioinformación

Este repositorio contiene dos elementos principales:

1. **Script en R**: análisis descriptivo de referencias bibliográficas.
2. **Documento en LaTeX (`main.tex`)**: ejemplo de cómo citar en diferentes formatos usando Overleaf.

---

## Contenido
- `BibTex.prueba` → Script en R para realizar análisis descriptivo de las referencias (frecuencia de autores, años, tipos de fuente, etc.).
- `main.tex` → Documento principal en LaTeX con ejemplos de citas en distintos estilos bibliográficos (APA, Vancouver, MLA, etc.).
- `bibliografia.bib` → Archivo BibTeX con las referencias exportadas desde **Zotero**.


---

## Requisitos
Para ejecutar y compilar el proyecto necesitas:

- [R](https://cran.r-project.org/) (versión ≥ 4.0.0) con los paquetes:
  - `tidyverse`
  - `ggplot2`
  - `bibliometrix` (si aplica)

- [LaTeX](https://www.latex-project.org/) o una cuenta en [Overleaf](https://overleaf.com).
- [Zotero](https://www.zotero.org/) (opcional, si deseas generar o actualizar el archivo `.bib`).

---

## Uso

### Script en R
Ejecuta en RStudio o en la terminal de R:

```R
source("analisis_referencias.R")
