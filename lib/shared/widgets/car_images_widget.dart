import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarImagesWidget extends StatelessWidget {
  const CarImagesWidget({
    Key? key,
    required this.images,
    this.isExpanded = false,
  }) : super(key: key);

  final List<String> images;
  final bool isExpanded;
  @override
  Widget build(BuildContext context) {
    return ValueBuilder<int?>(
      initialValue: 0,
      builder: (currentImage, updater) => Column(
        children: [
          isExpanded
              ? Expanded(
                  child: _buildImagePage(updater),
                )
              : _buildImagePage(updater),
          images.length > 1
              ? Container(
                  margin: const EdgeInsets.only(top: 12),
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images
                        .map((e) => _buildIndicator(
                              images.indexOf(e) == currentImage,
                            ))
                        .toList(),
                  ),
                )
              : Container()
        ],
      ),
    );
  }

  SizedBox _buildImagePage(ValueBuilderUpdateCallback<int?> updater) {
    return SizedBox(
      height: 150,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        onPageChanged: updater,
        children: images
            .map(
              (e) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Hero(
                    tag: images[0],
                    child: Image.asset(
                      e,
                      fit: BoxFit.scaleDown,
                    ),
                  )),
            )
            .toList(),
      ),
    );
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey[400],
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
