comment on column "public"."storages"."location_id" is E'Table to track stores';
alter table "public"."storages" alter column "location_id" drop not null;
alter table "public"."storages" add column "location_id" text;
