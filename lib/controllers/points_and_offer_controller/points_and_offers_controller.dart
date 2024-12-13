import 'package:get/get.dart';

class PointAndOffersController extends GetxController{
  var selectedGroupIndex=0.obs;
  var selectedEvenIndex=0.obs;


  selectGroupButton(index){
    selectedGroupIndex.value=index;
    update();
  }

  selectEventButton(index){
    selectedEvenIndex.value=index;
    update();
  }
}