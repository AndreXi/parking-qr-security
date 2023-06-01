alter table "public"."owners"
  add constraint "owners_building_id_fkey"
  foreign key ("building_id")
  references "public"."buildings"
  ("id") on update restrict on delete cascade;
