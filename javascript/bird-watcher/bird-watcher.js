// @ts-check

export function totalBirdCount(birdsPerDay) {
  let total = 0;
  for (let index = 0; index < birdsPerDay.length; index++) {
    total += birdsPerDay[index];
    // accumulates the sum of all the elements in the array
  }
  return total;
}
/**
 * Calculates the total number of birds seen in a specific week.
 *
 * @param {number[]} birdsPerDay
 * @param {number} week
 * @returns {number} birds counted in the given week
 */
export function birdsInWeek(birdsPerDay, week) {
  let total = 0;
  for (let index = 7 * (week - 1); index < (7 * week); index++) {
    total += birdsPerDay[index];
  }
  return total;
}

/**
 * Fixes the counting mistake by increasing the bird count
 * by one for every second day.
 *
 * @param {number[]} birdsPerDay
 * @returns {number[]} corrected bird count data
 */
export function fixBirdCountLog(birdsPerDay) {
  throw new Error('Please implement the fixBirdCountLog function');
}
