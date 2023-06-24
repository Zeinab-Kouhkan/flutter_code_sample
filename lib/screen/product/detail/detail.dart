import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/base/resourceful_state.dart';
import 'package:flutter_code_sample/data/entity/product.dart';
import 'package:flutter_code_sample/extensions/build_context.dart';
import 'package:flutter_code_sample/screen/product/detail/bloc/state.dart';
import 'package:flutter_code_sample/widget/appbar_back.dart';
import 'package:sizer/sizer.dart';

import 'args.dart';
import 'bloc/bloc.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends ResourcefulState<ProductDetailPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late ProductDetailArgs args;
  late ProductDetailBloc bloc;

  @override
  void initState() {
    bloc = ProductDetailBloc();
    super.initState();
  }

  @override
  void onReady() {
    super.onReady();
    bloc.onReady(args);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    args = context.requiredArguments as ProductDetailArgs;
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      bloc: bloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          key: scaffoldKey,
          appBar: AppBarBack(
            title: state is LoadedProductDetailState ? state.data.title : '',
            context: context,
            progressVisible: state is LoadingProductDetailState
          ),
          body:state.when(initial: ()=>const SizedBox.shrink(), loading: ()=>null, loaded: (data)=>body(data), error:(message)=> Center(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(message),
          )))


        );
      },
    );
  }
  Widget body(ProductData data){
    return         SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Hero(
                tag: 'mainImage',
                transitionOnUserGestures: true,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: data.image,
                    fit: BoxFit.scaleDown,
                    width: double.infinity,
                    height: 50.h,
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: Text(
             data.title,
              style: typography.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
              style: typography.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
