// @ts-check

export function totalBirdCount(birdsPerDay) {
  let total = 0;
  for (let index = 0; index < birdsPerDay.length; index++) {
    total += birdsPerDay[index];
    // accumulates the sum of all the elements in the array
  }
  return total;
}

export function birdsInWeek(birdsPerDay, week) {
  let total = 0;
  for (let index = 7 * (week - 1); index < (7 * week); index++) {
    total += birdsPerDay[index];
  }
  return total;
}

export function fixBirdCountLog(birdsPerDay) {
  for (let index = 0; index < birdsPerDay.length; index += 2) {
    birdsPerDay[index] = birdsPerDay[index] += 1;
  }
  return birdsPerDay;
}

