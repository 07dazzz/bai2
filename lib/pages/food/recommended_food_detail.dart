import 'package:bai2/utils/colors.dart';
import 'package:bai2/utils/dimensions.dart';
import 'package:bai2/widgets/app_icon.dart';
import 'package:bai2/widgets/big_text.dart';
import 'package:bai2/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size: Dimensions.font26, text: "Chinese Side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                )

              )
            ),
            pinned:true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset
                ("assets/image/dat1.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "Chào mọi người! Sau đây em xin tự giới thiệu về bản thân mình. ""Em tên là Mạnh Tiểu Vũ. Em sinh ra và lớn lên tại Hà Nội. Hiện nay em đang theo học tại trường Trung học Cơ sở Hoàng Hoa Thám. Em là học sinh lớp 8A1. Sở thích của em là đọc sách và chơi game. Ở trường em học giỏi nhất môn Toán và em được đại diện trường tham dự kỳ thi chọn học sinh giỏi cấp thành phố môn Toán lớp 8. Bố em năm nay ngoài 40 tuổi và đang là một kỹ sư cầu đường. Công việc của bố rất vất vả. Em cảm thấy tự hào khi là con trai của bố. Mẹ em là một giáo viên tiểu học. Mẹ rất hiền dịu và xinh xắn. Mẹ em rất đảm đang, vừa giỏi việc nhà vừa giỏi việc trên trường. Em chơi thể thao rất tốt đặc biệt là môn bóng rổ và bóng đá. Ước mơ của em là trở thành một nhà khoa học. Em đang cố gắng học thật giỏi để thực hiện ước mơ của mình. Gia đình em còn một người anh trai. Anh trai em hiện đang đi du học Pháp ngành truyền thông. Anh trai em rất đẹp trai và tốt bụng. Em rất tự hào khi có người anh như vậy. Trên trường em hay tham gia các câu lạc bộ của trường như: câu lạc bộ phát thanh, câu lạc bộ tiếng anh,... Em rất tích cực trong việc tổ chức các hoạt động tình nguyện, chung tay xây dựng một môi trường lành mạnh, xanh, sạch, đẹp. adaudh adihja adioadh ahdauo adhoaudh ahodouad  ahdoua duahdu asodj[aja0ihf -a9du jaidjaidh adj[qjk 9wadm 93i32 90auf joda 0r8  inf75 8fh 789ef4 8fy7c3 r8f4yefubn4u 8h fui3njfn 83y4f7 noan a aasdas dasdhua ad7gaydg a6d ga67gd agd78qwgd 7ga7gd 78ewgfagfuebfgnu9qfhaisdfha80dhjasi jda90d j0as9d asgdy8webuea nb97d gwe68qd noiahd8qwhfyv8afwohf-9j 9w 8 8wdfihjw8 w8y8 iw3 89 8w 9qy7q ihq 89q9w8dh igfh347gh ciaos fc dasbduaysgd6yg w3d w8hd79 ahj 0dhw agd9 wh90 8gw78gd 9a8hd 90wh8awgh jq- jd8a a j08qwh q8wyh qwk nd80qw ydqw79h d20q8dnjqw3eb897rn320r023 89 023ur23 u=12-39 ry2380 r=2ru239-y r230r 12 p23;r '23; r23r k;/ 32 2390 0r23 90 9v89 8 faoifn 89afy9a 0qa9irhjd2898 afdnmao"
                  ),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            )
          )

        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor ,
                    icon: Icons.remove),
                BigText(text: "\12.88 " + " X " + " 0 ", color: AppColors.mainBlackColor, size: Dimensions.font26,),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor ,
                    icon: Icons.add),
              ],

            ),
          ),
          Container(
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
                  padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15, left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15, left: Dimensions.width20, right: Dimensions.width20),
                  child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
