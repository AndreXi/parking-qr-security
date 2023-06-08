alter table "public"."buildings" add column "created_at" timestamptz
 null default now();
