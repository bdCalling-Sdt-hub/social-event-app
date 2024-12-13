

import 'package:get/get.dart';

class AudioCallController extends GetxController {

  bool isMic = false ;
  bool isVideo = false ;
  bool isSound = false ;
  bool isRinging = true ;

  changeMute(){
    isMic = !isMic ;
    update() ;
  }
changeRinging(){
  isRinging = !isRinging ;
    update() ;
  }

  changeVideo(){
    isVideo = !isVideo ;
    update() ;
  }


  changeSound(){
    isSound = !isSound ;
    update() ;
  }



}