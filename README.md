# Elixir Enum.map and Nil Values

This repository demonstrates a common error when using `Enum.map` in Elixir: unexpected `FunctionClauseError` when dealing with `nil` values.

The `bug.ex` file contains code that fails when a `nil` value is encountered in the input list. The `bugSolution.ex` file presents a solution demonstrating how to handle potential `nil` values gracefully.

## Problem

The original code uses an `if` statement within `Enum.map`.  If the input list contains `nil`, the comparison `x > 5` raises a `FunctionClauseError` because it's attempting to compare `nil` to a number.

## Solution

The solution utilizes the `case` statement for more robust handling of `nil` values.  It checks for `nil` explicitly and provides a default behavior instead of raising an error.