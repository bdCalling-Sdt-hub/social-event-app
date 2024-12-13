import 'package:get/get.dart';

import '../../helpers/other_helper.dart';

class CreateArticleController extends GetxController {
  List images = [];

  addImage() async {
    String? image = await OtherHelper.openGallery();

    if (image == null) return;

    images.add({"type": "image", "source": image});
    update();
  }

  addVideo() async {
    String? image = await OtherHelper.getVideo();

    if (image == null) return;

    images.add({"type": "video", "source": image});
    update();
  }

  removeImage(item) async {
    print(item);
    images.remove(item);

    print(images.length);
    update();
  }

  static CreateArticleController get instance =>
      Get.put(CreateArticleController());
}
