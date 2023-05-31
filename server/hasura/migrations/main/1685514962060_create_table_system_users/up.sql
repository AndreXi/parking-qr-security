CREATE TABLE "system"."users" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "first_name" text NOT NULL, "last_name" text NOT NULL, "ci" text NOT NULL, "phone" text NOT NULL, "role_id" integer NOT NULL, "password" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("role_id") REFERENCES "system"."roles"("id") ON UPDATE restrict ON DELETE cascade);
CREATE OR REPLACE FUNCTION "system"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_system_users_updated_at"
BEFORE UPDATE ON "system"."users"
FOR EACH ROW
EXECUTE PROCEDURE "system"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_system_users_updated_at" ON "system"."users"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
