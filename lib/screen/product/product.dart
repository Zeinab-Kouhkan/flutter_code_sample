import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/base/resourceful_state.dart';
import 'package:flutter_code_sample/data/entity/product.dart';
import 'package:flutter_code_sample/screen/product/detail/args.dart';
import 'package:flutter_code_sample/utils/navigator.dart';
import 'package:flutter_code_sample/widget/appbar_back.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';
import 'bloc/bloc.dart';
import 'bloc/state.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends ResourcefulState<ProductPage> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSearchStarted = false;
  late ProductBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = ProductBloc();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<ProductBloc, ProductState>(
      bloc: bloc,
      builder: (context, state) {
        return Scaffold(
            key: scaffoldKey,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            appBar: AppBarBack(
              title: intl.products,
              context: context,
              progressVisible: state is LoadingProductState,
              actions: [
                IconButton(
                  onPressed: () => NavigatorApp.setting(context),
                  icon: const Icon(Icons.settings),
                )
              ],
            ),
            body: state.when(
              loaded: (products) => productList(products),
              error: (message) => Center(
                  child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(message),
              )),
              initial: () => const SizedBox.shrink(),
              loading: () {
                return null;
              },
            ));
      },
    );
  }

  Widget productList(List<ProductData> products) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      itemCount: 10,
      itemBuilder: (context, index) => item(products[index]),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 3.w,
          mainAxisSpacing: 3.w),
    );
  }

  Widget item(ProductData product) {
    return InkWell(
      onTap: () =>
          NavigatorApp.productDetail(context, ProductDetailArgs(product.id)),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.scaffold,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 2.h,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: CachedNetworkImage(
                imageUrl: product.image,
                width: 100,
                height: 100,
                fit: BoxFit.scaleDown,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              product.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: typography.bodyMedium!
                  .apply(fontWeightDelta: 2, fontSizeDelta: -1),
            ),
          ],
        ),
      ),
    );
  }
}
