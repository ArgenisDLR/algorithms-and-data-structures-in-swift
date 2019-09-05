// Easy to implement
// Uses nested loops => O(n^2)
// Runs quadratic time regardless of input
// Running time insensitive to input
  // Sorted (n^2 - 2) / 2
  // Random (n^2 + (n - i)) / 2
  // Reverse (n^2 + n) / 2
// Inefficient

func selectionSort(_ input: [Int]) -> [Int] {
  
  guard input.count > 1 else {
    return input
  }
  
  var result = input
  
  for index in 0..<(result.count - 1) {
    var indexLowest = index
    
    for forwardIndex in (index + 1)..<result.count {
      if result[forwardIndex] < result[indexLowest] {
        indexLowest = forwardIndex
      }
    }
    
    if index != indexLowest {
      result.swapAt(index, indexLowest)
    }
  }
  return result
}
