import 'package:bai2/utils/dimensions.dart';
import 'package:bai2/widgets/app_column.dart';
import 'package:bai2/widgets/app_icon.dart';
import 'package:bai2/widgets/exandable_text_widget.dart';
import 'package:bai2/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //backgound img
          Positioned(
            left: 0,
            right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image/dat1.png"
                      ),
                  ),
                ),
          )),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20, right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart)

                ],

          )),
          //introduction of food
          Positioned(
            left: 0, right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Chinese Side",),
                    SizedBox(height: Dimensions.height20, ),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20, ),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Chào mọi người! Sau đây em xin tự giới thiệu về bản thân mình. Em tên là Mạnh Tiểu Vũ. Em sinh ra và lớn lên tại Hà Nội. Hiện nay em đang theo học tại trường Trung học Cơ sở Hoàng Hoa Thám. Em là học sinh lớp 8A1. Sở thích của em là đọc sách và chơi game. Ở trường em học giỏi nhất môn Toán và em được đại diện trường tham dự kỳ thi chọn học sinh giỏi cấp thành phố môn Toán lớp 8. Bố em năm nay ngoài 40 tuổi và đang là một kỹ sư cầu đường. Công việc của bố rất vất vả. Em cảm thấy tự hào khi là con trai của bố. Mẹ em là một giáo viên tiểu học. Mẹ rất hiền dịu và xinh xắn. Mẹ em rất đảm đang, vừa giỏi việc nhà vừa giỏi việc trên trường. Em chơi thể thao rất tốt đặc biệt là môn bóng rổ và bóng đá. Ước mơ của em là trở thành một nhà khoa học. Em đang cố gắng học thật giỏi để thực hiện ước mơ của mình. Gia đình em còn một người anh trai. Anh trai em hiện đang đi du học Pháp ngành truyền thông. Anh trai em rất đẹp trai và tốt bụng. Em rất tự hào khi có người anh như vậy. Trên trường em hay tham gia các câu lạc bộ của trường như: câu lạc bộ phát thanh, câu lạc bộ tiếng anh,... Em rất tích cực trong việc tổ chức các hoạt động tình nguyện, chung tay xây dựng một môi trường lành mạnh, xanh, sạch, đẹp. "))),

                  ],
                ),
          )),
          //expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.signColor,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor
              ),
            )
          ],
        ),
      ),

    );

  }
}


