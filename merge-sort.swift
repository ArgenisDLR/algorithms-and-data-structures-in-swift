// Efficient
// O(n log n) time complexity
// Works best with large inputs
// Uses divide and conquer technique
// Use insertion sort with smaller inputs like 20


// merge helper function

func merge(leftPart: [Int], rightPart: [Int]) -> [Int] {
  var sorted = [Int]()
  
  var leftIndex = 0
  var rightIndex = 0
  
  while leftIndex < leftPart.count && rightIndex < rightPart.count {
    if leftPart[leftIndex] < rightPart[rightIndex] {
      sorted.append(leftPart[leftIndex])
      leftIndex += 1
    } else if leftPart[leftIndex] > rightPart[rightIndex] {
      sorted.append(rightPart[rightIndex])
      rightIndex += 1
    } else {
      sorted.append(leftPart[leftIndex])
      leftIndex += 1
      sorted.append(rightPart[rightIndex])
      rightIndex += 1
    }
  }
  
  if leftIndex < leftPart.count {
    sorted.append(contentsOf: leftPart[leftIndex..<leftPart.count])
  } else if rightIndex < rightPart.count {
    sorted.append(contentsOf: rightPart[rightIndex..<rightPart.count])
  }
  return sorted
}

// merge sort
func mergeSort(_ input: [Int]) -> [Int] {
  
  guard input.count > 1 else {
    return input
  }
  
  let splitIndex = input.count / 2
  
  let leftArray = mergeSort(Array(input[0..<splitIndex]))
  let rightArray = mergeSort(Array(input[splitIndex..<input.count]))
  
  return merge(leftPart: leftArray, rightPart: rightArray)
}


mergeSort([2,4,1,4,6,6,3])

