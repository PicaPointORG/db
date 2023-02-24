DROP SCHEMA IF EXISTS picapoint;
CREATE SCHEMA picapoint; 
USE picapoint;
source picapoint_empresa.sql;
source picapoint_usuario.sql;
source picapoint_maquina.sql;
source picapoint_producto.sql;
source picapoint_maquina_has_producto.sql;