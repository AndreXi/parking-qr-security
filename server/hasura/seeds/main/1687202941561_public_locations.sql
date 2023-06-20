SET check_function_bodies = false;
INSERT INTO public.locations (id, name, description, has_parking_slots, has_storages) VALUES (1, 'Sotano 1', 'Piso 1', true, false);
INSERT INTO public.locations (id, name, description, has_parking_slots, has_storages) VALUES (2, 'Semi Sotano', 'Piso 0', true, false);
INSERT INTO public.locations (id, name, description, has_parking_slots, has_storages) VALUES (3, 'Sotano 2', 'Piso -1', true, false);
INSERT INTO public.locations (id, name, description, has_parking_slots, has_storages) VALUES (4, 'Sotano 3', 'Piso -2', true, false);
INSERT INTO public.locations (id, name, description, has_parking_slots, has_storages) VALUES (5, 'Sotano 4', 'Piso -3', true, false);
SELECT pg_catalog.setval('public.locations_id_seq', 5, true);
