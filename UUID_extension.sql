-- Extensions: Built-in funcs used for database
-- View available extensions using:
SELECT * FROM pg_available_extensions; 

-- UUID: Universally unique identifiers useful as primary keys
CREATE EXTENSION IF NOT EXISTS "uuid-ossp"
SELECT uuid_generate_v4();