// binary search only works on sorted arrays
// so either sort the array first or make sure it's sorted beforehand
// best case O(1) : worst case O(log n)

// METHOD 1

func binarySearch(array: [Int], key: Int) -> Bool {
  
  if array.count == 0 { return false }
  
  let minIndex = 0
  let maxIndex = array.count - 1
  let midIndex = maxIndex / 2
  let midValue = array[midIndex]
 
  // check if the key is higher or lower than the bounds
  if key < array[minIndex] || key > array[maxIndex] {
    print("\(key) is not in the array")
    return false
  }
  // check if key is greater than mid value
  if key > midValue {
    let slice = Array(array[midIndex + 1...maxIndex])
    return binarySearch(array: slice, key: key)
  }
  // check if key is less than mid value
  if key < midValue {
    let slice = Array(array[minIndex...midIndex - 1])
    return binarySearch(array: slice, key: key)
  }
  // if the key is equal to the value
  if key == midValue {
    print("\(key) found in the array")
    return true
  }
  return false
}

// METHOD 2

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
 
    let array = array.sorted(by: <)
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if searchValue == middleValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    } 
    return false
}

// METHOD 3: - Recursive 

func alternativeBinarySeach(seachValue: Int, array: [Int]) -> Bool {
    
    if array.count == 0 { return false }
    
    var sortedArray = array.sorted(by: <)
    
    let leftIndex = 0
    let rightIndex = array.count - 1
    
    let middleIndex = (leftIndex + rightIndex) / 2
    let middleValue = sortedArray[middleIndex]
    
    if seachValue == middleValue {
        return true
    }   
    //error handling
    if seachValue < sortedArray[leftIndex] || seachValue > sortedArray[rightIndex] {
        return false
    }
    
    if seachValue < middleValue {
        sortedArray = Array(sortedArray[leftIndex...middleIndex - 1])
        print(sortedArray)
        return alternativeBinarySeach(seachValue: seachValue, array: sortedArray)
    }
    
    if seachValue > middleValue {
        sortedArray = Array(sortedArray[middleIndex + 1...rightIndex])
        print(sortedArray)
        return alternativeBinarySeach(seachValue: seachValue, array: sortedArray)
    }
    return false
}
