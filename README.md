# Implementación de CRUD con Rails y RSpec

En el contexto de una aplicación financiera, necesitas implementar un CRUD completo para gestionar transacciones. Cada transacción tiene un identificador único, una fecha, un monto y una descripción. El sistema debe permitir crear, leer, actualizar y eliminar transacciones, asegurando la integridad de los datos y manejando adecuadamente los errores del dominio. Los actores involucrados son el usuario final, el sistema de auditoría y el motor de procesamiento de transacciones. La aplicación debe soportar un volumen de 10 000 transacciones por hora con una latencia máxima de 200ms.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | Ruby on Rails |
| **Nivel** | junior-l1 |
| **Tipo** | practical |
| **Tiempo estimado** | 8 horas |

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Obtener el proyecto base funcional enviando el Código Base a un asistente de IA, que lo analizará, corregirá errores y generará un ZIP listo para usar.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Asegúrate de tener instalado para ejecutar el proyecto: Un IDE o editor de código.
- Copia todo el contenido del campo **Código Base** de este reto — incluyendo el texto de instrucciones que aparece al inicio.
- Abre un asistente de IA (Claude en claude.ai, ChatGPT o Gemini — se recomienda Claude), pega el contenido copiado en el chat y envíalo.
- El asistente analizará los archivos, corregirá errores y generará un archivo ZIP descargable. Descárgalo y extráelo en la carpeta donde quieras trabajar.
- Verifica que el proyecto arranca sin errores.

**Entregable:** El proyecto compila/arranca sin errores.

<details>
<summary>Pistas de conocimiento</summary>

- Copia el Código Base completo incluyendo el texto de instrucciones al inicio — esas instrucciones le indican al asistente exactamente qué hacer con los archivos.
- Si el asistente no genera el ZIP automáticamente al terminar el análisis, escríbele: "genera el ZIP ahora".
- Si el proyecto tiene errores al arrancar, comparte el mensaje de error con el mismo asistente para que lo corrija.

</details>

### Fase 1: Creación de transacciones

**Objetivo:** Implementar la funcionalidad para crear nuevas transacciones, asegurando que los datos ingresados sean válidos y consistentes.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Identifica los campos requeridos para una transacción y sus restricciones de dominio.
- Diseña el proceso para validar los datos de entrada antes de persistir la transacción.
- Maneja los errores de validación y proporciona retroalimentación al usuario.

**Entregable:** Servicio que acepta solicitudes para crear nuevas transacciones, valida los datos y persiste la transacción si es válida.

<details>
<summary>Pistas de conocimiento</summary>

- Considera cómo manejar transacciones con montos negativos o descripciones vacías.
- Piensa en la idempotencia de la creación de transacciones y cómo garantizarla.

</details>

### Fase 2: Lectura de transacciones

**Objetivo:** Implementar la funcionalidad para leer transacciones existentes, asegurando que los datos retornados sean consistentes y relevantes.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Diseña el proceso para recuperar transacciones almacenadas.
- Considera cómo manejar transacciones que no existen o han sido eliminadas.
- Implementa la funcionalidad para filtrar y ordenar las transacciones según criterios específicos.

**Entregable:** Servicio que permite recuperar transacciones almacenadas, aplicando filtros y ordenamientos según criterios específicos.

<details>
<summary>Pistas de conocimiento</summary>

- Piensa en cómo manejar la consistencia de los datos retornados.
- Considera los posibles edge cases al recuperar transacciones.

</details>

### Fase 3: Actualización de transacciones

**Objetivo:** Implementar la funcionalidad para actualizar transacciones existentes, asegurando la integridad de los datos y manejando adecuadamente los errores del dominio.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Diseña el proceso para actualizar los datos de una transacción existente.
- Considera cómo validar los nuevos datos antes de persistir la actualización.
- Maneja los errores de validación y proporciona retroalimentación al usuario.

**Entregable:** Servicio que permite actualizar los datos de una transacción existente, validando los nuevos datos y persistiendo la actualización si es válida.

<details>
<summary>Pistas de conocimiento</summary>

- Piensa en cómo garantizar la integridad de los datos al actualizar una transacción.
- Considera los posibles edge cases al actualizar transacciones.

</details>

### Fase 4: Eliminación de transacciones

**Objetivo:** Implementar la funcionalidad para eliminar transacciones existentes, asegurando la integridad del sistema y manejando adecuadamente los errores del dominio.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Diseña el proceso para eliminar una transacción existente.
- Considera cómo manejar las dependencias de la transacción en otros componentes del sistema.
- Maneja los errores de eliminación y proporciona retroalimentación al usuario.

**Entregable:** Servicio que permite eliminar una transacción existente, manejando las dependencias y errores de eliminación adecuadamente.

<details>
<summary>Pistas de conocimiento</summary>

- Piensa en cómo garantizar la integridad del sistema al eliminar una transacción.
- Considera los posibles edge cases al eliminar transacciones.

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es una transacción en el contexto de nuestra aplicación financiera?
- **paraQueSirve**: ¿Para qué sirve el proceso de creación de transacciones en nuestra aplicación?
- **comoSeUsa**: ¿Cómo se usa el servicio de lectura de transacciones para recuperar datos consistentes y relevantes?
- **erroresComunes**: ¿Cuáles son los errores comunes que pueden ocurrir al actualizar una transacción y cómo se manejan?
- **queDecisionesImplica**: ¿Qué decisiones implica el proceso de eliminación de una transacción en términos de integridad del sistema y manejo de dependencias?

## Criterios de Evaluacion

- Implementación correcta de la funcionalidad para crear nuevas transacciones.
- Implementación correcta de la funcionalidad para leer transacciones existentes.
- Implementación correcta de la funcionalidad para actualizar transacciones existentes.
- Implementación correcta de la funcionalidad para eliminar transacciones existentes.

---

*Reto generado automaticamente por Challenge Generator - Pragma*
