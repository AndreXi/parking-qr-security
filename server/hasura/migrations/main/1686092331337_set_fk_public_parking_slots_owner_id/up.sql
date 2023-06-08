alter table "public"."parking_slots" drop constraint "parking_slots_owner_id_fkey",
  add constraint "parking_slots_owner_id_fkey"
  foreign key ("owner_id")
  references "public"."owners"
  ("id") on update restrict on delete set null;
