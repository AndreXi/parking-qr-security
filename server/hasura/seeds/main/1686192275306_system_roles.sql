SET check_function_bodies = false;
INSERT INTO system.roles (id, name, code) VALUES (1, 'Administrator', 'ADM');
INSERT INTO system.roles (id, name, code) VALUES (2, 'Security Guard', 'SEG');
SELECT pg_catalog.setval('system.roles_id_seq', 2, true);
