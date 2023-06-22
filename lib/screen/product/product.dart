import 'package:flutter/material.dart';
import 'package:flutter_code_sample/base/resourceful_state.dart';
import 'package:flutter_code_sample/utils/navigator.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends ResourcefulState<ProductPage> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSearchStarted = false;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .primaryContainer,
        appBar: AppBar(
          title: Text(
            'Awesome Store',
            style: typography.titleLarge?.copyWith(color: AppColors.scaffold),
          ),
          elevation: 0,


        ),
        body:productList()
    );
  }

  Widget productList(){
    return GridView.builder(
      padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
      itemCount: 10,
      itemBuilder: (context, index) =>item() ,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 3.w,
        mainAxisSpacing: 3.w

      ),
    );

  }
  Widget item(){
   return InkWell(
     onTap: ()=>NavigatorApp.productDetail(context),
     child: Container(
        decoration: BoxDecoration(
          color:AppColors.scaffold,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x3600000F),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3LyAUdC0rlLZ1ADbJIQw9RCv23lFwgAJeFg&usqp=CAU',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      'Pinky',
                      style:typography.bodyMedium!.apply(fontWeightDelta: 1,fontSizeDelta: -1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      '\$${'78.2'}',
                      style: typography.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
   );
  }
}
