// binary search only works on sorted arrays
// so either sort the array first or make sure it's sorted beforehand
// best case O(1) : worst case O(log n)

var numbers = [2, 3, 5, 7, 8, 8, 15, 35, 67, 78, 47]
numbers.sort()

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

binarySearch(array: numbers, key: 23)

