part of '../widgets.dart';

Widget loadingcard(double width, double height, num radius) {
  return Shimmer.fromColors(
    direction: ShimmerDirection.ltr,
    baseColor: Colors.white.withAlpha(80),
    highlightColor: Colors.white,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(radius.toDouble()),
      child: Container(
        width: width,
        height: height,
        color: Colors.white.withAlpha(60),
      ),
    ),
  );
}

Widget imageLoading(num size) {
  return Shimmer.fromColors(
    baseColor: const Color.fromARGB(0, 88, 84, 84).withValues(alpha: .1),
    highlightColor: const Color.fromARGB(
      222,
      222,
      222,
      222,
    ).withValues(alpha: .2),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: Container(width: size * 2, height: size * 2, color: Colors.white),
    ),
  );
}
