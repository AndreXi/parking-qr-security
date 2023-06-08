SET check_function_bodies = false;
INSERT INTO public.buildings (id, name, created_at, updated_at) VALUES (1, 'Torre A', '2023-06-06 22:57:38.78705+00', '2023-06-06 22:57:41.336889+00');
INSERT INTO public.buildings (id, name, created_at, updated_at) VALUES (2, 'Torre B', '2023-06-06 22:57:38.78705+00', '2023-06-06 22:57:41.336889+00');
INSERT INTO public.buildings (id, name, created_at, updated_at) VALUES (3, 'Torre C', '2023-06-06 22:57:38.78705+00', '2023-06-06 22:57:41.336889+00');
INSERT INTO public.buildings (id, name, created_at, updated_at) VALUES (4, 'Torre D', '2023-06-06 22:57:38.78705+00', '2023-06-06 22:57:41.336889+00');
SELECT pg_catalog.setval('public.buildings_id_seq', 4, true);
