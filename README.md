# ActionScript Default Parameter Object Pass-by-Reference Bug

This repository demonstrates a subtle bug in ActionScript related to default parameter values when objects are used.  In ActionScript, when an object is specified as a default parameter, it's passed by reference, not by value.  This means that modifications to the parameter within the function will affect the default object used in subsequent calls.

This behavior can be unexpected and lead to difficult-to-debug issues.

## How to Reproduce

1. Clone this repository.
2. Open `bug.as` and `bugSolution.as` in an ActionScript editor (like FlashDevelop).
3. Run the code in `bug.as` and observe the unexpected output.
4. Run the code in `bugSolution.as` to see the correct solution.

## Solution

The provided solution, `bugSolution.as`, demonstrates how to correctly handle default object parameters by creating a copy of the object before using it within the function. This ensures that modifications within the function do not affect the original default object.