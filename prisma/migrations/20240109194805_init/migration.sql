-- CreateTable
CREATE TABLE "user" (
    "id" UUID NOT NULL,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product" (
    "id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "img_url" TEXT NOT NULL,
    "price" INTEGER NOT NULL,

    CONSTRAINT "product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_comment" (
    "id" UUID NOT NULL,
    "productId" UUID NOT NULL,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "comment" TEXT NOT NULL,
    "created" DATE NOT NULL,

    CONSTRAINT "product_comment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "customer_order" (
    "id" SERIAL NOT NULL,
    "customer_name" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "totalPrice" INTEGER NOT NULL,
    "created" DATE NOT NULL,

    CONSTRAINT "customer_order_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "address" (
    "customer_order_id" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "order_items" (
    "customer_order_id" INTEGER NOT NULL,
    "amount" INTEGER NOT NULL,
    "price" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "product_comment_email_key" ON "product_comment"("email");

-- CreateIndex
CREATE UNIQUE INDEX "address_customer_order_id_key" ON "address"("customer_order_id");

-- CreateIndex
CREATE UNIQUE INDEX "order_items_customer_order_id_key" ON "order_items"("customer_order_id");

-- AddForeignKey
ALTER TABLE "product_comment" ADD CONSTRAINT "product_comment_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "address" ADD CONSTRAINT "address_customer_order_id_fkey" FOREIGN KEY ("customer_order_id") REFERENCES "customer_order"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order_items" ADD CONSTRAINT "order_items_customer_order_id_fkey" FOREIGN KEY ("customer_order_id") REFERENCES "customer_order"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
