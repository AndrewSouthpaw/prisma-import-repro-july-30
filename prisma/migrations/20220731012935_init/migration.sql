-- CreateTable
CREATE TABLE "GatherEvent" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "name" STRING NOT NULL,

    CONSTRAINT "GatherEvent_pkey" PRIMARY KEY ("id")
);
