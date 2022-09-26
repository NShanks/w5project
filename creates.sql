CREATE TABLE "Salesperson" (
  "employee_id" serial,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  PRIMARY KEY ("employee_id")
);

CREATE TABLE "Mechanic" (
  "mech_id" serial,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  PRIMARY KEY ("mech_id")
);

CREATE TABLE "Car" (
  "car_id" serial,
  PRIMARY KEY ("car_id")
);

CREATE TABLE "Customer" (
  "customer_id" serial,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  "billing_info" VARCHAR(60),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Service Ticket" (
  "service_ticket" serial,
  "customer_id" serial,
  "service" VARCHAR(60),
  "part" VARCHAR(60),
  "car_id" serial,
  "mech_id" serial,
  PRIMARY KEY ("service_ticket"),
  CONSTRAINT "FK_Service Ticket.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id"),
  CONSTRAINT "FK_Service Ticket.mech_id"
    FOREIGN KEY ("mech_id")
      REFERENCES "Mechanic"("mech_id")
);

CREATE TABLE "Invoice" (
  "receipt_id" serial,
  "car_id" serial,
  "price" VARCHAR(60),
  "employee_id" serial,
  "customer_id" serial,
  "service_ticket" serial,
  PRIMARY KEY ("receipt_id")
);