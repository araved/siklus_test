



List<int> bucketSort(List<int> heightData) {

  
  
  var max = 220;
  var min = 20;

  var inputLength = heightData.length;
  var bucketSize = (max * inputLength).ceil() + 1;
  var buckets = List<List<int>>.filled(bucketSize, []);
  for (var i = 0; i < buckets.length; i++) {
    buckets[i] = <int>[];
  }

  for (var i = 0; i < inputLength; i++) {
    var idx = (inputLength * heightData[i]).round();
    buckets[idx].add(heightData[i]);
  }

  var sorted =
      buckets.fold(<int>[], (List<int> acc, el) => acc + el);
  return sorted;
}