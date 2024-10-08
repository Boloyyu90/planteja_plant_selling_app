import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_application_testing/components/plants_card_grid.dart'; 
import 'package:flutter_application_testing/components/plants_data.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const BackgroundImage(),
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: const NewsHeader(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 400.0),
          child: PlantGridScreen(plants: plants),
        ),
      ],
    ));
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/dark_leaf.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class NewsHeader extends StatelessWidget {
  const NewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const SearchBarWidget(),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              'Promo',
              style: TextStyle(
                  fontFamily: 'Tropical Taste',
                  fontSize: 64,
                  color: Colors.green.shade400),
            ),
          ),
          SizedBox(
            height: 200,
            child: PromoCarousel(),
          ),
        ],
      ),
    );
  }
}

class PromoCarousel extends StatefulWidget {
  const PromoCarousel({Key? key}) : super(key: key);

  @override
  _PromoCarouselState createState() => _PromoCarouselState();
}

class _PromoCarouselState extends State<PromoCarousel> {
  late final PageController _pageController;
  late final Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Image.asset('lib/images/promo_banner/promo (1).webp',
            fit: BoxFit.cover),
        Image.asset('lib/images/promo_banner/promo (2).webp',
            fit: BoxFit.cover),
        Image.asset('lib/images/promo_banner/promo (3).webp',
            fit: BoxFit.cover),
      ],
    );
  }
}

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          hintText: "Let's find something new!",
          controller: controller,
          padding: const MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 12.0),
          ),
          onTap: () {
            controller.openView();
          },
          onChanged: (_) {
            controller.openView();
          },
          leading: const Icon(Icons.search),
        );
      }, suggestionsBuilder:
              (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
            onTap: () {
              setState(() {
                controller.closeView(item);
              });
            },
          );
        });
      }),
    );
  }
}
