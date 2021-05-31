
def bucketSort(arr, bucket):
    maxElement = max(arr)
    minElement = min(arr)
 
    rnge = (maxElement - minElement) / bucket
 
    temp = []
 
    # create empty buckets
    for i in range(bucket):
        temp.append([])
 
    # scatter the array elements
    # into the correct bucket
    for i in range(len(arr)):
        diff = (arr[i] - minElement) / rnge - int((arr[i] - minElement) / rnge)
 
        # append the boundary elements to the lower array
        if(diff == 0 and arr[i] != minElement):
            temp[int((arr[i] - minElement) / rnge) - 1].append(arr[i])
 
        else:
            temp[int((arr[i] - minElement) / rnge)].append(arr[i])
 
    # Sort each bucket individually
    for i in range(len(temp)):
        if len(temp[i]) != 0:
            temp[i].sort()
 
    # Gather sorted elements
    # to the original array
    k = 0
    for lst in temp:
        if lst:
            for i in lst:
                arr[k] = i
                k = k+1
 
 
# Driver Code
arr = [20,120,24,22,24,220,123,104,130,190]
noOfBuckets = 10
bucketSort(arr, noOfBuckets)
print("Sorted Heights: ", arr)