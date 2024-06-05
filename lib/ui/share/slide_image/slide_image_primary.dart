// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

// Project imports:
import 'package:base_flutter/resource/dimens/dimens.dart';

class SlideImagePrimary extends StatefulWidget {
  const SlideImagePrimary(
      {super.key, required this.listMedia, this.isDesinationDetail = true});
  final List<String> listMedia;
  final bool? isDesinationDetail;
  @override
  State<SlideImagePrimary> createState() => _SlideImagePrimaryState();
}

class _SlideImagePrimaryState extends State<SlideImagePrimary> {
  var carouselIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 1.6,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: false,
                  reverse: false,
                  autoPlay: true,
                  //autoPlayCurve: Curves.easeInOutCubicEmphasized,
                  autoPlayInterval: const Duration(seconds: 4),
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, resson) {
                    // homeController.handleUpdateCarouselIndex(index);
                    setState(() {
                      carouselIndex = index;
                    });
                  },
                  enlargeStrategy: CenterPageEnlargeStrategy.height),
              items: widget.listMedia.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.d10.r),
                      ),
                      child: ClipRRect(
                        // borderRadius:
                        //     BorderRadius.circular(defaultBorderRadius),
                        child: CachedNetworkImage(
                          imageUrl: item,
                          fit: BoxFit.fill,
                          memCacheHeight: 1000,
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey.withOpacity(0.4),
                            highlightColor: Colors.grey.withOpacity(0.2),
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Positioned(
              // right: kScreenSpacing.sp,
              bottom: 20.h,

              child: Container(
                height: 16.h,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: ListView.builder(
                    padding: EdgeInsets.only(top: Dimens.d12.sp),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.listMedia.length,
                    itemBuilder: (ctx, index) {
                      return Container(
                        width: 7.w,
                        height: 7.w,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.w),
                            color: carouselIndex == index
                                ? Colors.red
                                : const Color(0xffF5F5F5)),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
