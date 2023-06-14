alter table "public"."owners" add column "created_at" timestamptz
 not null default now();
