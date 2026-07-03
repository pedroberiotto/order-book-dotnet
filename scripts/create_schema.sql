CREATE TABLE IF NOT EXISTS "instrument" (
	"id_instrument" SERIAL NOT NULL,
	"cod_instrument" VARCHAR(16) NOT NULL,
	"desc_instrument" VARCHAR(64) NOT NULL,
	PRIMARY KEY("id_instrument")
);




CREATE TABLE IF NOT EXISTS "order" (
	"id_order" SERIAL NOT NULL,
	"id_instrument" INTEGER NOT NULL,
	"quantity" DECIMAL(30,18) NOT NULL,
	"unit_price" DECIMAL(30,18) NOT NULL,
	"id_counterpart" INTEGER NOT NULL,
	"order_date" TIMESTAMP NOT NULL,
	"id_strategy" INTEGER NOT NULL,
	PRIMARY KEY("id_order")
);




CREATE TABLE IF NOT EXISTS "counterpart" (
	"id_counterpart" SERIAL NOT NULL,
	"cod_counterpart" VARCHAR(16) NOT NULL,
	"desc_counterpart" VARCHAR(128) NOT NULL,
	"cnpj" VARCHAR(14) NOT NULL,
	PRIMARY KEY("id_counterpart")
);




CREATE TABLE IF NOT EXISTS "strategy" (
	"id_strategy" SERIAL NOT NULL,
	"cod_strategy" VARCHAR(16) NOT NULL,
	"desc_strategy" VARCHAR(128) NOT NULL,
	PRIMARY KEY("id_strategy")
);



ALTER TABLE "instrument"
ADD FOREIGN KEY("id_instrument") REFERENCES "order"("id_instrument")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "counterpart"
ADD FOREIGN KEY("id_counterpart") REFERENCES "order"("id_counterpart")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "strategy"
ADD FOREIGN KEY("id_strategy") REFERENCES "order"("id_strategy")
ON UPDATE NO ACTION ON DELETE NO ACTION;