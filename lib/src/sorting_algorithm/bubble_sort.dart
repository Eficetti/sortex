import 'global_sort_handler.dart';

/// Bubble Sort is the sorting algorithm that works by repeatedly
/// swapping the adjacent elements if they are in the wrong order.
/// After each iteration or pass, the largest element reaches the
/// end (in case of ascending order) or the smallest element reaches
/// the end (in case of descending order). The pass through the list
/// is repeated until the list is sorted. This algorithm is not suitable
/// for large data sets as its average and worst-case complexity are of
/// Ο(n^2) where n is the number of items.
abstract class BubbleSort extends GlobalSortHandler {
  /// Sorts the list in ascending order.
  ///
  /// Example:
  /// ```dart
  /// var list = [3, 1, 2];
  /// BubbleSort.sort(list);
  /// print(list); // [1, 2, 3]
  /// ```
  static List<dynamic> sort(List<dynamic> list) {
    for (var i = 0; i < list.length - 1; i++) {
      for (var j = 0; j < list.length - i - 1; j++) {
        if (GlobalSortHandler.compare(list[j], list[j + 1]) > 0) {
          GlobalSortHandler.swap(list, j, j + 1);
        }
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
  /// BubbleSort.sortDescending(list);
  /// print(list); // [3, 2, 1]
  /// ```
  static void sortDescending(List<dynamic> list) {
    for (var i = 0; i < list.length - 1; i++) {
      for (var j = 0; j < list.length - i - 1; j++) {
        if (GlobalSortHandler.compare(list[j], list[j + 1]) < 0) {
          GlobalSortHandler.swap(list, j, j + 1);
        }
      }
    }
  }
}
