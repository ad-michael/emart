import 'package:commerce_shop/constants/colors.dart';
import 'package:commerce_shop/models/product_model.dart';
import 'package:commerce_shop/screens/details/widgets/detail_image_slider.dart';
import 'package:commerce_shop/screens/details/widgets/detail_page_appbar.dart';
import 'package:commerce_shop/screens/details/widgets/item_details.dart';
// ignore: unused_import
import 'package:commerce_shop/screens/mainwidgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Custom AppBar
              const DetailPageAppbar(),

              // Detail Image Slider
              DetailImageSlider(
                image: widget.product.image,
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentImage == index ? 20 : 10,
                    height: currentImage == index ? 20 : 10,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: currentImage == index ? kprimaryColor : Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                      color: currentImage == index ? kprimaryColor : Colors.black,
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),

              // product item details
              ItemDetails(product: widget.product),
            ],
          ),
        ),
      ),
    );
  }
}