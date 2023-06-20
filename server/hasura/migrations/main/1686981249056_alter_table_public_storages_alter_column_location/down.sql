alter table "public"."storages" rename column "location_id" to "location";
alter table "public"."storages" alter column "location" drop not null;
