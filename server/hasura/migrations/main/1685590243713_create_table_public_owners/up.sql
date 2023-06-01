CREATE TABLE "public"."owners" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "first_name" text NOT NULL, "last_name" text NOT NULL, "ci" text NOT NULL, "phone" text NOT NULL, "building_id" integer NOT NULL, "floor" integer NOT NULL, "apto" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("ci"));COMMENT ON TABLE "public"."owners" IS E'Owners of slots and vehicles';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
