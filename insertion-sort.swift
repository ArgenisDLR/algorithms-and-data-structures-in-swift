// Easy to implement
// O(n^2) worst case time complexity
// Works well for partially sorted input
// O(n - 1) best case time complexity
// Only basic sort that could be used in production code

// Sorted (n - 1) => O(n)
// Random (n^2 - n) / 2 => O(n^2)
// Reverse (n^2 - n) => O(n^2)

func insertSort( _ input: [Int]) -> [Int] {
  var result = input
  
  let count = result.count
  for sortedIndex in 1 ..< count {
    var backIndex = sortedIndex
    while backIndex > 0 && result[backIndex] < result[backIndex - 1] {
      swap(&result[backIndex - 1], &result[backIndex])
      backIndex -= 1
    }
  }
  return result
}
