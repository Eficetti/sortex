/// Insertion sort is a simple sorting algorithm that works the
/// way we sort playing cards in our hands. The array is virtually split into
/// a sorted and an unsorted part. Values from the unsorted
/// part are picked and placed at the correct position in the
/// sorted part. Insertion sort is fast and best suitable either when the
/// problem size is small (because it has low overhead) or when the
/// data is nearly sorted (because it is adaptive).
// ignore_for_file: avoid_dynamic_calls

abstract class InsertionSort {
  /// Sorts the list in ascending order.
  ///
  /// Example:
  /// ```dart
  /// var list = [3, 1, 2];
  /// InsertionSort.sort(list);
  /// print(list); // [1, 2, 3]
  /// ```
  static List<dynamic> sort(List<dynamic> list) {
    for (var i = 1; i < list.length; i++) {
      var j = i;
      while (j > 0 && compare(list[j - 1], list[j]) > 0) {
        _swap(list, j, j - 1);
        j--;
      }
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
  /// InsertionSort.sortDescending(list);
  /// print(list); // [3, 2, 1]
  /// ```
  static void sortDescending(List<dynamic> list) {
    for (var i = 1; i < list.length; i++) {
      var j = i;
      while (j > 0 && compare(list[j - 1], list[j]) < 0) {
        _swap(list, j, j - 1);
        j--;
      }
    }
  }

  /// This method is used to compare two objects.
  static int compare(dynamic a, dynamic b) {
    if (a is Comparable && b is Comparable) {
      return a.compareTo(b);
    } else {
      throw Exception('The list contains non-comparable objects.');
    }
  }

  static void _swap(List<dynamic> list, int i, int j) {
    final temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }
}
