SET check_function_bodies = false;
INSERT INTO public.buildings (id, name) VALUES (1, 'Torre A');
INSERT INTO public.buildings (id, name) VALUES (2, 'Torre B');
INSERT INTO public.buildings (id, name) VALUES (3, 'Torre C');
INSERT INTO public.buildings (id, name) VALUES (4, 'Torre D');
SELECT pg_catalog.setval('public.buildings_id_seq', 4, true);
