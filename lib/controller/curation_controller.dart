import 'package:get/get.dart';

class CurationController extends GetxController {
  RxString breedValue = '포메라니안'.obs;
  RxString birthYear = '2022'.obs;
  RxString birthMonth = '1'.obs;
  RxString birthDay = '1'.obs;
  RxInt selectedSex = 0.obs;
  RxInt selectedNeutering = 0.obs;
  RxInt selectedBcs = 0.obs;
  void setBreedValue(value) {
    breedValue(value);
  }

  void setBirthYear(value) {
    birthYear(value);
  }

  void setBirthMonth(value) {
    birthMonth(value);
  }

  void setBirthDay(value) {
    birthDay(value);
  }

  void setSelectedSex(value) {
    selectedSex(value);
  }

  void setSelectedNeutering(value) {
    selectedNeutering(value);
  }

  void setSelectedBcs(value) {
    selectedBcs(value);
  }
}
