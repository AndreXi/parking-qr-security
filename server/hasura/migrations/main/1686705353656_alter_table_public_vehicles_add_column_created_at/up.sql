alter table "public"."vehicles" add column "created_at" timestamptz
 not null default now();
