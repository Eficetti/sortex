/// This is the main class for handling a global methods.
/// From this class we can access all the global methods used for others
/// classes.
abstract class GlobalSortHandler {
  /// This method is used to compare two objects.
  static int compare(dynamic a, dynamic b) {
    if (a is Comparable && b is Comparable) {
      return a.compareTo(b);
    } else {
      throw Exception('The list contains non-comparable objects.');
    }
  }

  /// This method is used to swap two objects.
  static void swap(List<dynamic> list, int i, int j) {
    final temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }
}
