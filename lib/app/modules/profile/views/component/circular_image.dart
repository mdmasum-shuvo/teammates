
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:teammates/theme/image_assets.dart';

import '../../../../../theme/Colors.dart';

Widget circularProfileImage(String? img) {
  return SizedBox(
    height: 100.h,
    width: 100.w,
    child: Container(
      decoration:const BoxDecoration(shape: BoxShape.circle,color: primaryDarkColor),
        child: ClipOval(
          child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: img ?? "",
              placeholder: (context, url) =>  Padding(
                padding: EdgeInsets.all(4.r),
                child: const SpinKitCircle(
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
              errorWidget: (context, url, error) => Padding(
                padding: EdgeInsets.all(4.r),
                child: CircleAvatar(
                  radius: 98.r,
                  // Image radius
                  backgroundImage: Image.asset(profile_logo).image,
                ),
              )),
        )

      // Image.network(
      //     "${Constants.baseUrl}/${data.thumbnailImg}",
      //     fit: BoxFit.cover),
    ),
  );
}
