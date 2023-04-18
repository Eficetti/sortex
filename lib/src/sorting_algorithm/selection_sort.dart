import 'global_sort_handler.dart';

/// The selection sort algorithm sorts an array by repeatedly finding
/// the minimum element (considering ascending order) from the unsorted
/// part and putting it at the beginning. The algorithm maintains two
/// subarrays in a given array:
///
/// The subarray which is already sorted
/// Remaining subarray which is unsorted
///
/// In every iteration/pass of selection sort, the minimum element
/// (considering ascending order) from the unsorted subarray is picked and
/// moved to the sorted subarray. The selection sort has the property of
/// minimizing the number of swaps. Therefore, it is the best choice when
/// the cost of swapping is high.
abstract class SelectionSort extends GlobalSortHandler {
  /// Sorts the list in ascending order.
  ///
  /// Example:
  /// ```dart
  /// var list = [3, 1, 2];
  /// SelectionSort.sort(list);
  /// print(list); // [1, 2, 3]
  /// ```
  static List<dynamic> sort(List<dynamic> list) {
    for (var i = 0; i < list.length - 1; i++) {
      var minIndex = i;
      for (var j = i + 1; j < list.length; j++) {
        if (GlobalSortHandler.compare(list[j], list[minIndex]) < 0) {
          minIndex = j;
        }
      }
      GlobalSortHandler.swap(list, i, minIndex);
    }

    return list;
  }

  /// Sorts the list in descending order.
  ///
  /// The default [compare] function compares two objects using the
  /// relational operator `<`.
  ///
  /// Example:
  /// ```dart
  /// var list = [3, 1, 2];
  /// SelectionSort.sortDescending(list);
  /// print(list); // [3, 2, 1]
  /// ```
  static void sortDescending(List<dynamic> list) {
    for (var i = 0; i < list.length - 1; i++) {
      var maxIndex = i;
      for (var j = i + 1; j < list.length; j++) {
        if (GlobalSortHandler.compare(list[j], list[maxIndex]) > 0) {
          maxIndex = j;
        }
      }
      GlobalSortHandler.swap(list, i, maxIndex);
    }
  }
}
