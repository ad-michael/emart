import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:commerce_shop/constants/colors.dart';
import 'package:commerce_shop/models/product_model.dart';
// ignore: unused_import
import 'package:commerce_shop/screens/home/widgets/image_slider.dart';
import 'package:commerce_shop/screens/home/widgets/product_card_widget.dart';
import 'package:commerce_shop/screens/home/widgets/product_categories.dart';
import 'package:commerce_shop/screens/mainwidgets/text_widget.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Icon(Icons.grid_view_rounded, size: 35,),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined, size: 35),
              ),
            ]
        ),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
        child: Column(
          children: [
            
            const SizedBox(height: 20),
            // Search Text Field
            TextFormField(
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.all(5),
                prefixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.tune)),
                suffix: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 18,
                    width: 2,
                    color: kprimaryColor,
                  ),
                ),
                fillColor: kcontentColor,
                filled: true,
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),
            // Scroll banner
            
            const SizedBox(height: 20),

            // Categories
            const ProductCategoryWidget(),

            const SizedBox(height: 20),
            // products
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'Special Products',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  text: 'See All',
                  fontSize: 16,
                ),
              ],
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: allProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(product: allProducts[index]);
              },
            )
          ],
        ),
      ),
     ),
    );
  }
}