SET check_function_bodies = false;
INSERT INTO public.parking_slots (id, code, floor, owner_id, qr_code) VALUES (1, 'A23', 1, '46178b88-1c02-41ec-b583-f5e8bc75d7d5', '520e8072-036e-4181-82a9-d1f7a8f7e7d8');
INSERT INTO public.parking_slots (id, code, floor, owner_id, qr_code) VALUES (2, 'A24', 1, '46178b88-1c02-41ec-b583-f5e8bc75d7d5', '31d736cd-5d56-49c7-b6ef-802a65de154b');
INSERT INTO public.parking_slots (id, code, floor, owner_id, qr_code) VALUES (3, 'A25', 1, 'c71eb343-2a0f-4a3d-bddf-1a97b3b14f16', 'b14769de-c534-4422-9c26-61b60484b645');
INSERT INTO public.parking_slots (id, code, floor, owner_id, qr_code) VALUES (4, 'C04', 2, 'b2cb252d-dbe2-48dc-8ca6-5e776fa6f9df', '8f23f216-5491-4636-8e84-51abf3de4dec');
INSERT INTO public.parking_slots (id, code, floor, owner_id, qr_code) VALUES (5, 'C05', 2, '6fe58c05-ed8d-4c24-bf01-79857d744898', '7d88ec2f-4433-436c-a77e-23f9ee0ac2b1');
SELECT pg_catalog.setval('public.parking_slots_id_seq', 6, true);
