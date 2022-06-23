import 'package:get/get.dart';

class CurationController extends GetxController {
  RxMap curation = {
    'name': '',
    'pet': '강아지',
    'breed': '포메라니안'.obs,
    'birthYear': '2022'.obs,
    'birthMonth': '1'.obs,
    'birthDay': '1'.obs,
    'weight': '0',
    'sex': '수컷',
    'bcs': '0',
    'neutering': '0',
    'algList': '',
    'healthList': '',
    'diet': '0',
    'sprotein': '0',
    'size': '무관',
    'gas': 'G',
    'selected_sex': 0.obs,
    'selected_neutering': 0.obs,
    'selected_bcs': 0.obs,
  }.obs;

  void setBreedValue(value) {
    curation['breed'](value);
  }

  void setSelectedNeutering(value) {
    curation['selectedNeutering'](value);
    curation['neutering'](value.toString());
  }
}
