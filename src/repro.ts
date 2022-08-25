import { db } from "./client";

export const event = {
  coverImage: "foo",
  description: "foo",
  draft: true,
  endDate: new Date(),
  hostId: "foo",
  hostName: "foo",
  minutesEarlyToOpen: 0,
  minutesLateToClose: 0,
  name: "foo",
  progress: 0,
  spaceId: "foo",
  startDate: new Date(),
};

const run = async () => {
  const { id } = await db.gatherEvent.create({ data: event  });

  let updateCount = 0;

  const update = async () => {
    updateCount++;
    const start = Date.now();
    await db.gatherEvent.update({ where: { id }, data: { progress: updateCount } });
    console.log("done in", Date.now() - start);
    setTimeout(update, 0);
  };

  update();
};

run().catch();