alter table "public"."storages"
  add constraint "storages_location_id_fkey"
  foreign key ("location_id")
  references "public"."locations"
  ("id") on update restrict on delete cascade;
