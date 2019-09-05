// Splitting the array around a pivot is called partioning
// pivot , less , equal , greater
// Very fast
// Divide and conquer strategy
// Sort into sub arrays
// 1960's been worked on
// Smarter partioning schemes
// Find the optimal pivot


func quickSort(_ input: [Int]) -> [Int] {
  
  guard input.count > 1 else {
    return input
  }
  
  let pivotIndex = input.count / 2
  let pivot = input[pivotIndex]
  
  // ignored partioning logic scheme with filter library function
  let less = input.filter { $0 < pivot }
  let equal = input.filter { $0 == pivot }
  let greater = input.filter { $0 > pivot }
  
  return quickSort(less) + equal + quickSort(greater)
}

let numbers = [0, 9, 6, 2, 3, 2, 1, 3]
let quickSorted = quickSort(numbers)
print(quickSorted)
