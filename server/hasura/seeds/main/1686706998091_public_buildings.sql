SET check_function_bodies = false;
INSERT INTO public.buildings (id, name, created_at, updated_at) VALUES (1, 'Alfa 1', '2023-06-14 01:40:16.764599+00', '2023-06-14 01:40:16.764599+00');
INSERT INTO public.buildings (id, name, created_at, updated_at) VALUES (2, 'Alfa 2', '2023-06-14 01:40:20.271629+00', '2023-06-14 01:40:20.271629+00');
INSERT INTO public.buildings (id, name, created_at, updated_at) VALUES (3, 'Beta 1', '2023-06-14 01:40:23.335366+00', '2023-06-14 01:40:23.335366+00');
INSERT INTO public.buildings (id, name, created_at, updated_at) VALUES (4, 'Beta 2', '2023-06-14 01:40:25.399877+00', '2023-06-14 01:40:25.399877+00');
SELECT pg_catalog.setval('public.buildings_id_seq', 4, true);
