--CREATE DATABASE IF NOT EXISTS e-commerce;
\c e_commerce;

DROP TABLE IF EXISTS e_commerce;

CREATE TABLE
  public.products (
    id serial NOT NULL,
    name character varying (255) NOT NULL,
    description character varying (255) NOT NULL,
    price numeric (10,2) NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone NOT NULL DEFAULT now()
  );

INSERT INTO public.products (name, description, price, created_at, updated_at)
VALUES
  ('Zapatillas deportivas', 'Zapatillas cómodas para correr', 79.99, now(), now()),
  ('Bolso de cuero', 'Bolso elegante para ocasiones especiales', 129.50, now(), now()),
  ('Camiseta estampada', 'Camiseta de algodón con diseño floral', 24.95, now(), now()),
  ('Reloj de pulsera', 'Reloj analógico con correa de acero inoxidable', 149.00, now(), now()),
  ('Gafas de sol', 'Gafas de sol polarizadas con montura de acetato', 59.99, now(), now()),
  ('Pantalones vaqueros', 'Vaqueros ajustados de color azul', 69.50, now(), now()),
  ('Vestido de fiesta', 'Vestido largo con lentejuelas y escote en V', 199.99, now(), now()),
  ('Botines de cuero', 'Botines negros con tacón bajo', 89.95, now(), now()),
  ('Pendientes de plata', 'Pendientes colgantes con piedras preciosas', 45.00, now(), now()),
  ('Bufanda de lana', 'Bufanda suave y abrigada para el invierno', 34.75, now(), now());

-- Product or Item


CREATE TABLE rulezz (
    id CHAR(36) NOT NULL PRIMARY KEY,
    rule VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    rule_type VARCHAR(100) NOT NULL,
    relevance VARCHAR(50) NOT NULL,
    enabled VARCHAR(10) NOT NULL,
    priority VARCHAR(50) NOT NULL,
    rule_status VARCHAR(50) NOT NULL,
    alert_status VARCHAR(50),
    environment VARCHAR(50),
    UEBA_SemID CHAR(36) UNIQUE,
    MITRE_tactic VARCHAR(100) NOT NULL,
    MITRE_technique VARCHAR(100),
    detectionSurface VARCHAR(255) NOT NULL,
    reference JSON
);

ALTER TABLE rulezz MODIFY COLUMN description TEXT;
ALTER TABLE rulezz MODIFY COLUMN relevance TEXT;



INSERT INTO rulezz (
    id, rule, description, rule_type, relevance, enabled, priority, rule_status, 
    alert_status, environment, MITRE_tactic, MITRE_technique, detectionSurface, reference
) VALUES (
    '550e8400-e29b-41d4-a716-446655440004',  -- NEW ID
    'Launch memory dump process in Container',
    'Detects the execution of processes related to memory dumping. Memory dumping can be used to analyze a process\'s state, including the extraction of sensitive information. The tools typically used for this purpose include dd, coredumpctl, gcore, memdump, dump2fs, and dotnet-dump.',
    'Intrusion',
    'Memory dumps can contain sensitive information, such as credentials, API keys, or user data, that an attacker could extract to compromise the system\'s security. Detecting their execution allows for the identification of possible data extraction attempts or malicious activities within the cluster.',
    'true',
    'High',
    '95%',
    'Pending',
    'Production',
    'mitre_credential_access',
    NULL,
    'process',
    '[
        "host",
        "container",
        "mitre_exfiltration"
    ]'
);

