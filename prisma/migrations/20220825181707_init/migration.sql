-- CreateEnum
CREATE TYPE "GatherEventCategory" AS ENUM ('ProfessionalOrBusiness', 'CommunityOrOrganization', 'EducationOrAcademia', 'FriendsOrFamily', 'Other');

-- CreateEnum
CREATE TYPE "GatherEventAttendanceNumber" AS ENUM ('num_0_to_25', 'num_25_to_50', 'num_50_to_100', 'num_100_to_200', 'num_200_orMore', 'num_26_to_100Legacy', 'num_101_orMoreLegacy');

-- CreateEnum
CREATE TYPE "GatherEventPrivacy" AS ENUM ('public', 'private');

-- CreateEnum
CREATE TYPE "GatherEventProfessionalCategory" AS ENUM ('internal', 'external', 'NA');

-- CreateEnum
CREATE TYPE "GatherEventUseCase" AS ENUM ('PartyOrSocialGathering', 'TalkOrSeminar', 'ConferenceConventionOrExpo', 'MeetingOrNetworkingEvent', 'ClassOrWorkshop', 'Other');

-- CreateTable
CREATE TABLE "GatherEvent" (
    "id" STRING NOT NULL DEFAULT replace(replace(encode(substr(gen_random_uuid()::BYTES, 0, 16), 'base64'::STRING), '/'::STRING, '_'::STRING), '+'::STRING, '-'::STRING),
    "category" "GatherEventCategory",
    "coverImage" STRING,
    "description" STRING,
    "draft" BOOL NOT NULL DEFAULT true,
    "endDate" TIMESTAMP(3) NOT NULL,
    "hostId" STRING NOT NULL,
    "hostName" STRING,
    "minutesEarlyToOpen" INT4,
    "minutesLateToClose" INT4,
    "name" STRING NOT NULL,
    "numAttendees" "GatherEventAttendanceNumber",
    "privacy" "GatherEventPrivacy",
    "professionalCategory" "GatherEventProfessionalCategory",
    "progress" INT4 NOT NULL DEFAULT 0,
    "spaceId" STRING,
    "startDate" TIMESTAMP(3) NOT NULL,
    "type" "GatherEventUseCase",
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GatherEvent_pkey" PRIMARY KEY ("id")
);
