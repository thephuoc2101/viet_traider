import '../../locale/locale.dart';

extension ErrorCodeEx on String {
  String fromCode() {
    switch (this) {
      //ACL
      case 'UC33':
        return UI.error_code_uc33;
      case 'UC32':
        return UI.error_code_uc32;
      case 'UC24':
        return UI.error_code_uc24;
      case 'UC09':
        return UI.error_code_uc09;
      case 'UC01':
        return UI.error_code_uc01;
      case 'UC02':
        return UI.error_code_uc02;
      case 'UC04':
        return UI.error_code_uc04;
      case 'UC05':
        return UI.error_code_uc05;
      case 'UC10':
        return UI.error_code_uc10;
      case 'UC11':
        return UI.error_code_uc11;
      case 'UC12':
        return UI.error_code_uc12;
      case 'UC09':
        return UI.error_code_uc08;
      case 'UC27':
        return UI.error_code_uc27;
      case 'UC21':
        return UI.error_code_uc21;
      default:
        return UI.text_error;
    }
  }
}
