alter table "public"."parking_slots"
  add constraint "parking_slots_renter_id_fkey"
  foreign key ("renter_id")
  references "public"."owners"
  ("id") on update restrict on delete set null;
