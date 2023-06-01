SET check_function_bodies = false;
INSERT INTO public.vehicles (id, brand, model, plate, color, parking_slot_id, owner_id) VALUES (1, 'Chevrolet', 'Camaro', 'PWA-89C', 'Rojo', 1, '46178b88-1c02-41ec-b583-f5e8bc75d7d5');
INSERT INTO public.vehicles (id, brand, model, plate, color, parking_slot_id, owner_id) VALUES (3, 'Ford', 'Mustang', 'RXB-12T', 'Negro', 1, '46178b88-1c02-41ec-b583-f5e8bc75d7d5');
INSERT INTO public.vehicles (id, brand, model, plate, color, parking_slot_id, owner_id) VALUES (4, 'Toyota', 'Corolla', 'JCA-43D', 'Blanco', 2, '46178b88-1c02-41ec-b583-f5e8bc75d7d5');
INSERT INTO public.vehicles (id, brand, model, plate, color, parking_slot_id, owner_id) VALUES (6, 'Volkswagen', 'Golf', 'LXC-22B', 'Gris', 4, 'c71eb343-2a0f-4a3d-bddf-1a97b3b14f16');
INSERT INTO public.vehicles (id, brand, model, plate, color, parking_slot_id, owner_id) VALUES (5, 'Honda', 'Civic', 'HVD-78E', 'Azul', 3, 'b2cb252d-dbe2-48dc-8ca6-5e776fa6f9df');
INSERT INTO public.vehicles (id, brand, model, plate, color, parking_slot_id, owner_id) VALUES (7, 'Nissan', 'Sentra', 'XWB-11Y', 'Plateado', 5, '6fe58c05-ed8d-4c24-bf01-79857d744898');
SELECT pg_catalog.setval('public.vehicles_id_seq', 7, true);
