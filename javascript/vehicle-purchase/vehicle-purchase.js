// @ts-check

export function needsLicense(kind) {
  return kind === 'car' || kind ==='truck';
}

export function chooseVehicle(option1, option2) {
  const chosenOne = [option1, option2].sort();
  return `${chosenOne[0]} is clearly the better choice.`;
}

/**
 * Calculates an estimate for the price of a used vehicle in the dealership
 * based on the original price and the age of the vehicle.
 *
 * @param {number} originalPrice
 * @param {number} age
 * @returns {number} expected resell price in the dealership
 */
export function calculateResellPrice(originalPrice, age) {
  throw new Error('Please implement the calculateResellPrice function');
}
