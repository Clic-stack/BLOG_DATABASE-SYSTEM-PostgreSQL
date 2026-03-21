CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "first_name" varchar(50),
  "last_name" varchar(50),
  "email" varchar(50)
);

CREATE TABLE "posts" (
  "id" serial PRIMARY KEY,
  "user_id" int,
  "title" varchar(100),
  "text" text
);

CREATE TABLE "likes" (
  "id" serial PRIMARY KEY,
  "user_id" int,
  "post_id" int
);

ALTER TABLE "posts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "likes" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "likes" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");
