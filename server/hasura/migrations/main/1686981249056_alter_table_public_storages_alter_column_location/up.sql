alter table "public"."storages" alter column "location" set not null;
alter table "public"."storages" rename column "location" to "location_id";
