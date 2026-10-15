El proyecto contiene tres tablas:
- **clientes:** almacena la información de los clientes, incluye nombre y correo electrónico único.
- **productos:** registra los productos disponibles, sus precios y cantidades en stock (no pueden ser negativos sus valores).
- **ventas:** relaciona clientes con productos mediante claves foráneas y registra las cantidades vendidas.

## Funcionalidades solicitadas:
- Crear un esquema y tablas.
- Definir claves primarias y foráneas.
- Restricciones CHECK, UNIQUE y NOT NULL.
- Inserción de registros mediante transacciones BEGIN y COMMIT.
- Actualización masiva de precios utilizando UPDATE y WHERE.
- Eliminación de registros de prueba mediante DELETE y WHERE.

## Cómo ejecutarlo
1. Conectarse a una base de datos PostgreSQL mediante DBeaver.
2. Abrir el archivo `retail_project.sql`.
3. Ejecutar el script completo (aclaración: no debe ser sobre un esquema creado, el script incluye la creación del mismo).
4. Verificar los registros mediante consultas SELECT.

Aclaración: esto es un proyecto académico para la plataforma Coderhouse - no incluye datos reales -.
