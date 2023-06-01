CREATE TABLE "system"."roles" ("id" serial NOT NULL, "name" text NOT NULL, "code" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("code"));COMMENT ON TABLE "system"."roles" IS E'User\'s Roles';
