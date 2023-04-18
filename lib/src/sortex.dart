import 'sorting_algorithm/bubble_sort.dart';
import 'sorting_algorithm/insertion_sort.dart';
import 'sorting_algorithm/merge_sort.dart';
import 'sorting_algorithm/selection_sort.dart';

/// {@template sortex}
/// Dart sorting algorithms
/// https://betterprogramming.pub/5-basic-sorting-algorithms-you-must-know-9ef5b1f3949c
/// {@endtemplate}
class Sortex {
  /// {@macro sortex}
  const Sortex();

  ///
  static List<dynamic> insertionSort(List<dynamic> list) {
    return InsertionSort.sort(list);
  }

  ///
  static List<dynamic> selectionSort(List<dynamic> list) {
    return SelectionSort.sort(list);
  }

  ///
  static List<dynamic> mergeSort(List<dynamic> list) {
    return MergeSort.sort(list);
  }

  ///
  static List<dynamic> bubbleSort(List<dynamic> list) {
    return BubbleSort.sort(list);
  }
}
