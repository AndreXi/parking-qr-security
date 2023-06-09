alter table "public"."parking_slots" add column "updated_at" timestamptz
 null default now();

CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_parking_slots_updated_at"
BEFORE UPDATE ON "public"."parking_slots"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_parking_slots_updated_at" ON "public"."parking_slots"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';