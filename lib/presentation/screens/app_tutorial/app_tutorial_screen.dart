import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);

}


final slides = <SlideInfo> [
  SlideInfo('Busca la comida', 'Ea do excepteur officia minim aute.', 'assets/images/1.png'),
  SlideInfo('Entrega Rapida', 'Labore amet occaecat in ad proident deserunt exercitation est sit.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Cillum aute irure nulla reprehenderit id ex eu irure aute nulla.', 'assets/images/3.png'),
];

class TutorialScreen extends StatelessWidget {

  static const name = 'tutorial';

  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(slideData.title, slideData.caption, slideData.imageUrl)
        ).toList()
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(this.title, this.caption, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}