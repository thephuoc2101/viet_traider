import '../../widgets/widget.dart';
class Utility {
  static bool isFinish({required int? total,required int? pageSize,required int? pageNumber}) {
    if (total == null || pageSize == null || pageNumber == null) return false;
    return total <= pageSize * pageNumber;
  }

}

