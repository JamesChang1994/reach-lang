'reach 0.1';

// Test assertions for libaries
export const [ isOutcome, B_WINS, DRAW, A_WINS ] = makeEnum(3);

export const winner = (handA, handB) =>
      ((handA + (4 - handB)) % 3);

forall(UInt, handA =>
  forall(UInt, handB =>
    assert(isOutcome(winner(handA, handB)))));
