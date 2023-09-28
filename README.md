# Proyecto Integral N°3

El presente documento, es el **Proyecto Integral N°3** de ***Argentina Program 4.0***. Esta es una pequeña solución informática que sirve registrar los catalogos de peliculas y series.
La misma, fue diseñada y construida sobre una arquitectura API RESTful, la cual está desarrollada bajo las restricciones y recomendaciones de REST, además, implementa buenas prácticas de programación.

#### Especificaciones

- Servidor: http://localhost:8080
- Autor: Julio Antonio Leiva Ibañez

#### Requerimientos

- Node.js v18.16.0
- MySQL v3.6
- GIT v2.40.1
- IDE - Visual Studio Code v1.78.2

#### Estructura de directorios

```tree
    ├── node_modules
    ├── src
    │   ├── server.js
    │   ├── conection
    │   │        └── connection.js
    │   ├── models
    │   │        ├── catalogo_genero.js
    │   │        ├── catalogo_reparto.js
    │   │        ├── catalogo.js
    │   │        ├── categoria.js
    │   │        ├── genero.js
    │   │        ├── index.js
    │   │        ├── reparto.js
    │   │        └── vista_tp3.js
    │   └── routes
    │            ├── catalogo.js
    │            └── categorias.js
    │
    ├── .env
    ├── .env.dist
    ├── .gitignore
    ├── package-lock.json
    ├── package.json
    ├── proyecto-3.code-workspace
    ├── README.md
    └── Tercer_Proyecto_Integrador_-_Argentina_Programa.pdf
```

---

### CONFIGURACION DE ENTORNO

- #### VARIABLES DE ENTORNO

  Se debe hacer una copia del archivo **.env.dist** y renombrarlo como **.env**. Con respecto a su contenido, es necesario asignar los valores a correspondientes a las variables:


  ```js
      PORT=nombre-port
      HOST=nombre-host

      DATABASE=tu-base-de-datos
      DBUSER=tu-usuario-de-conexion
      PASSWORD=tu-password-de-conexion

      BASE_URL=ruta-poster

      example:

      PORT=8080
      HOST=localhost

      DATABASE=trailerflix
      DBUSER=root
      PASSWORD=

      BASE_URL=https//www.trailerflix.com    
  ```
---

### MÓDULO DE categorias

Este módulo permite la gestión de categorias. El mismo, permite leer, agregar, modificar, borrar, categorias de catalogo.

#### Métodos HTTP

| Tipo   | URI                                | Descripción                             |
| ------ | ---------------------------------- | --------------------------------------- |
| GET    | http://127.0.0.1:8080/categorias   | Obtiene los registros (permite filtros) |
| GET    | http://127.0.0.1:8080/categorias/1 | Obtiene un registro en específico       |
| POST   | http://127.0.0.1:8080/categorias   | Crea un nuevo registro                  |
| PUT    | http://127.0.0.1:8080/categorias/1 | Modifica un registro en específico      |
| DELETE | http://127.0.0.1:8080/categorias/1 | Elimina un registro en específico       |

#### Método GET:

- Request:
  - *va sin parametros*
- Response:
  ```json
    [
      {
        "id_categoria": "1",
        "descripcion": "Película"
      },
      ...
    ]
  ```

  - Código HTTP: **200** *payload: categoria*
  - Código HTTP: **500** *message: error*

#### Método GET - Específico:

- Request:
  - Parámetro obligatorio de tipo URL:
    - 9 *(tipo: integer. Indica el código de la categoria que se requiere obtener)*
- Response:
  ```json
    {
      "id_categoria": "1",
      "descripcion": "Película"
    }
  ```
  - Código HTTP: **200** *payload: categoria*
  - Código HTTP: **400** *message: El ID tiene que ser un número*
  - Código HTTP: **404** *message: El ID no se encontró*
  - Código HTTP: **500** *message: error*

#### Método POST:

- Request:
  - Parámetros requeridos del BODY en formato JSON:
    - descripcion= Nombre de la categoria *(tipo: string. Establece el valor del nombre)*

- Response:
  ```json
    
      {
        "id_categoria": "1",
        "descripcion": "Película"
      }
    
  ``` 
  - Código HTTP: **201** *message: 'Registro creado', payload: catalogo*
  - Código HTTP: **403** *message: Debes ingresar una Descripcion en JSON.*
  - Código HTTP: **500** *message: error*

#### Método PUT:

- Request:
  - Parámetro obligatorio de tipo URL:
    - 9 *(tipo: integer. Indica el código de la categoria que se requiere modificar)*
  - Parámetros requeridos del BODY en formato JSON:
    - descripcion= Nombre de la categoria *(tipo: string. Establece el valor del nombre)*

- Response:
  ```json
    
      {
        "id_categoria": "1",
        "descripcion": "Película"
      }
    
  ```
  - Código HTTP: **200** *message: 'Registro modificado', payload: catalogo*

#### Método DELETE:

- Request:
  - Parámetro obligatorio de tipo URL:
    - 16 *(tipo: integer. Indica el código de la categoria que se requiere eliminar)*
- Response:
    ```json
    
      {
        "id_categoria": "1",
        "descripcion": "Película"
      }
    
  ```
  - Código HTTP: **200** *message: 'Registro eliminado'*
  - Código HTTP: **403** *message: 'No puedes borrar la categoria 1 o 2.'*
  - Código HTTP: **500** *message: Se ha generado un error en el servidor*


### MÓDULO DE catalogo

Este módulo permite la visualizacion de catalogos. El mismo, permite visualizar reportes filtrados por diferentes criterios de búsqueda.

#### Métodos HTTP


| Tipo | URI                                                 | Descripción                             |
| ---- | --------------------------------------------------- | --------------------------------------- |
| GET  | http://127.0.0.1:8080/catalogo                      | Obtiene los registros (permite filtros) |
| GET  | http://127.0.0.1:8080/catalogo/1                    | Obtiene un registro en específico       |
| GET  | http://127.0.0.1:8080/catalogo/nombre/:nombre       | Obtiene los registros con nombre        |
| GET  | http://127.0.0.1:8080/catalogo/genero/:genero       | Obtiene los registros con genero        |
| GET  | http://127.0.0.1:8080/catalogo/categoria/:categoria | Obtiene los registros con categoria     |

#### Método GET:

- Request:
  - *va sin parametros*
- Response:
  ```json
    [
      {
        "poster": "https//www.trailerflix.com/posters/1.jpg",
        "temporadas": 4,
        "trailer": "N/A",
        "id": "1",
        "titulo": "The Crown",
        "categoria": "Serie",
        "genero": "Drama,Hechos verídicos",
        "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
        "reparto": "Claire Fox,Olivia Colman,Matt Smith,Tobias Menzies,Vanesa Kirby,Helena Bonham Carter"
      }
    ]
  ```

  - Código HTTP: **200** *payload: catalogo*
  - Código HTTP: **500** *message: error*

#### Método GET - Específico:

- Request:
  - Parámetro obligatorio de tipo URL:
    - 9 *(tipo: integer. Indica el código del catalogo que se requiere obtener)*
- Response:
  ```json
      {
        "poster": "https//www.trailerflix.com/posters/1.jpg",
        "temporadas": 4,
        "trailer": "N/A",
        "id": "1",
        "titulo": "The Crown",
        "categoria": "Serie",
        "genero": "Drama,Hechos verídicos",
        "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
        "reparto": "Claire Fox,Olivia Colman,Matt Smith,Tobias Menzies,Vanesa Kirby,Helena Bonham Carter"
      }
  ```

  - Código HTTP: **200** *payload: catalogo*
  - Código HTTP: **400** *message: El ID tiene que ser un número*
  - Código HTTP: **404** *message: El ID no se encontró*
  - Código HTTP: **500** *message: error*


#### Método GET - nombre:

- Request:
  - Parámetro obligatorio de tipo URL:
    - nombre= Nombre de la pelicula *(tipo: string. Establece el valor del nombre)*
- Response:
  ```json
    [
      {
        "poster": "https//www.trailerflix.com/posters/1.jpg",
        "temporadas": 4,
        "trailer": "N/A",
        "id": "1",
        "titulo": "The Crown",
        "categoria": "Serie",
        "genero": "Drama,Hechos verídicos",
        "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
        "reparto": "Claire Fox,Olivia Colman,Matt Smith,Tobias Menzies,Vanesa Kirby,Helena Bonham Carter"
      }
    ]
  ```

  - Código HTTP: **200** *payload: catalogo*
  - Código HTTP: **404** *El dato tiene que ser una cadena.*
  - Código HTTP: **404** *message: El nombre no se encontró*
  - Código HTTP: **404** *message: La busqueda no arrojo resultados.*
  - Código HTTP: **500** *message: error*


#### Método GET - genero:

- Request:
  - Parámetro obligatorio de tipo URL:
    - genero= Nombre del genero *(tipo: string. Establece el valor del nombre)*
- Response:
  ```json
    [
      {
        "poster": "https//www.trailerflix.com/posters/1.jpg",
        "temporadas": 4,
        "trailer": "N/A",
        "id": "1",
        "titulo": "The Crown",
        "categoria": "Serie",
        "genero": "Drama,Hechos verídicos",
        "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
        "reparto": "Claire Fox,Olivia Colman,Matt Smith,Tobias Menzies,Vanesa Kirby,Helena Bonham Carter"
      }
    ]
  ```

  - Código HTTP: **200** *payload: catalogo*
  - Código HTTP: **404** *El dato tiene que ser una cadena.*
  - Código HTTP: **404** *message: No se encontraron peliculas para el genero.*
  - Código HTTP: **404** *message: No hay peliculas para el genero.*
  - Código HTTP: **500** *message: error*

#### Método GET - categoria:

- Request:
  - Parámetro obligatorio de tipo URL:
    - categoria= Nombre de la categoria *(tipo: string. Establece el valor del nombre)*
- Response:
  ```json
    [
      {
        "poster": "https//www.trailerflix.com/posters/1.jpg",
        "temporadas": 4,
        "trailer": "N/A",
        "id": "1",
        "titulo": "The Crown",
        "categoria": "Serie",
        "genero": "Drama,Hechos verídicos",
        "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
        "reparto": "Claire Fox,Olivia Colman,Matt Smith,Tobias Menzies,Vanesa Kirby,Helena Bonham Carter"
      }
    ]
  ```

  - Código HTTP: **200** *payload: catalogo*
  - Código HTTP: **404** *El dato tiene que ser una cadena.*
  - Código HTTP: **404** *message: La categoria no se encontró.*
  - Código HTTP: **404** *message: No se encontro catalogo para la categoria.*
  - Código HTTP: **500** *message: error*

