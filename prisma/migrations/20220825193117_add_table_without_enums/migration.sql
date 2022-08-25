-- CreateTable
CREATE TABLE "EventWithoutEnum" (
    "id" STRING NOT NULL DEFAULT replace(replace(encode(substr(gen_random_uuid()::BYTES, 0, 16), 'base64'::STRING), '/'::STRING, '_'::STRING), '+'::STRING, '-'::STRING),
    "category" STRING,
    "coverImage" STRING,
    "description" STRING,
    "draft" BOOL NOT NULL DEFAULT true,
    "endDate" TIMESTAMP(3) NOT NULL,
    "hostId" STRING NOT NULL,
    "hostName" STRING,
    "minutesEarlyToOpen" INT4,
    "minutesLateToClose" INT4,
    "name" STRING NOT NULL,
    "numAttendees" STRING,
    "privacy" STRING,
    "professionalCategory" STRING,
    "progress" INT4 NOT NULL DEFAULT 0,
    "spaceId" STRING,
    "startDate" TIMESTAMP(3) NOT NULL,
    "type" STRING,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "EventWithoutEnum_pkey" PRIMARY KEY ("id")
);
