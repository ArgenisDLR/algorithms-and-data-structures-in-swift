// Easy to implement
// Worst performance
// Avoid in production code
// Large number of swaps lead to slow run time

// Sorted O(n)
// Random O(n^2)
// Reverse O(n^2)

func bubbleSort(_ input: [Int]) -> [Int] {
  
  guard input.count > 1 else {
    return input
  }
  
  var result = input
  let count = result.count
  
  var isSwapped = false
  
  repeat {
    isSwapped = false
    for index in 1..<count {
      if result[index] < result[index - 1] {
        result.swapAt(index - 1, index)
        isSwapped = true
      }
    }
  } while isSwapped
  
  return result
}
