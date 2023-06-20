alter table "public"."parking_slots"
  add constraint "parking_slots_location_id_fkey"
  foreign key ("location_id")
  references "public"."locations"
  ("id") on update restrict on delete cascade;
