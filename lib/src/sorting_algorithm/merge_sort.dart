import 'global_sort_handler.dart';

/// This algorithm is based on the divide-and-conquer technique. It
/// divides the input array into two halves, calls itself for the two
/// halves, and then merges the two sorted halves. The heart of the Merge
/// Sort is the merge() function, which is used for merging two halves.
/// The merge(A, p, q, r) is a key process that assumes that A[p..q]
/// and A[q+1..r] are sorted and merges the two sorted sub-arrays into one.
/// Merge Sort is the only option when you need a stable and O(N log N) sort.
abstract class MergeSort extends GlobalSortHandler {
  /// Sorts the list in ascending order.
  ///
  /// Example:
  /// ```dart
  /// var list = [3, 1, 2];
  /// MergeSort.sort(list);
  /// print(list); // [1, 2, 3]
  /// ```
  static List<dynamic> sort(List<dynamic> list) {
    return _mergeSort(list, 0, list.length - 1);
  }

  /// Sorts the list in descending order.
  ///
  /// The default [compare] function compares two objects using the
  /// relational operator `<`.
  ///
  /// Example:
  /// ```dart
  /// var list = [3, 1, 2];
  /// MergeSort.sortDescending(list);
  /// print(list); // [3, 2, 1]
  /// ```
  static void sortDescending(List<dynamic> list) {
    _mergeSortDescending(list, 0, list.length - 1);
  }

  static List<dynamic> _mergeSort(List<dynamic> list, int left, int right) {
    if (left < right) {
      final middle = (left + right) ~/ 2;
      _mergeSort(list, left, middle);
      _mergeSort(list, middle + 1, right);
      _merge(list, left, middle, right);
    }

    return list;
  }

  static void _mergeSortDescending(List<dynamic> list, int left, int right) {
    if (left < right) {
      final middle = (left + right) ~/ 2;
      _mergeSortDescending(list, left, middle);
      _mergeSortDescending(list, middle + 1, right);
      _mergeDescending(list, left, middle, right);
    }
  }

  static void _merge(List<dynamic> list, int left, int middle, int right) {
    final leftSize = middle - left + 1;
    final rightSize = right - middle;

    final leftList = List<dynamic>.generate(
      leftSize,
      (index) => list[left + index],
    );
    final rightList = List<dynamic>.generate(
      rightSize,
      (index) => list[middle + 1 + index],
    );

    var i = 0;
    var j = 0;
    var k = left;

    while (i < leftSize && j < rightSize) {
      if (GlobalSortHandler.compare(leftList[i], rightList[j]) <= 0) {
        list[k] = leftList[i];
        i++;
      } else {
        list[k] = rightList[j];
        j++;
      }

      k++;
    }
  }

  static void _mergeDescending(
    List<dynamic> list,
    int left,
    int middle,
    int right,
  ) {
    final leftSize = middle - left + 1;
    final rightSize = right - middle;

    final leftList = List<dynamic>.generate(
      leftSize,
      (index) => list[left + index],
    );

    final rightList = List<dynamic>.generate(
      rightSize,
      (index) => list[middle + 1 + index],
    );

    var i = 0;
    var j = 0;
    var k = left;

    while (i < leftSize && j < rightSize) {
      if (GlobalSortHandler.compare(leftList[i], rightList[j]) >= 0) {
        list[k] = leftList[i];
        i++;
      } else {
        list[k] = rightList[j];
        j++;
      }

      k++;
    }
  }
}
