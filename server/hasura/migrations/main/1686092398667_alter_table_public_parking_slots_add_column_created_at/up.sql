alter table "public"."parking_slots" add column "created_at" timestamptz
 null default now();
