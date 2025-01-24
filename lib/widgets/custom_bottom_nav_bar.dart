import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_ui/views/explore_screen.dart';
import 'package:grocery_app_ui/views/favourites_screen.dart';
import 'package:grocery_app_ui/views/home_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';


class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ExploreScreen(),
    HomeScreen(),
    FavouritesScreen()
  ];

  NavBarConfig get _navBarConfig => NavBarConfig(
    selectedIndex: _selectedIndex,
    items: [
      ItemConfig(
        textStyle: GoogleFonts.dmSans(
          fontSize: 12,
          fontWeight: FontWeight.w700
        ),
        icon: SvgPicture.asset('assets/svg/shop.svg',color: Color.fromRGBO(83, 177, 117, 1),),
        inactiveIcon: SvgPicture.asset('assets/svg/shop.svg',color: Colors.black,),
        title: "Shop",
        activeForegroundColor: Color.fromRGBO(83, 177, 117, 1),
        inactiveForegroundColor: Colors.black,
      ),
      ItemConfig(
        textStyle: GoogleFonts.dmSans(
          fontSize: 12,
          fontWeight: FontWeight.w700
        ),
        icon: SvgPicture.asset('assets/svg/explore.svg',color: Color.fromRGBO(83, 177, 117, 1),),
        inactiveIcon: SvgPicture.asset('assets/svg/explore.svg',color: Colors.black,),
        title: "Explore",
        activeForegroundColor: Color.fromRGBO(83, 177, 117, 1),
        inactiveForegroundColor: Colors.black,
      ),
      ItemConfig(
        textStyle: GoogleFonts.dmSans(
          fontSize: 12,
          fontWeight: FontWeight.w700
        ),
        icon: SvgPicture.asset('assets/svg/cart.svg',color: Color.fromRGBO(83, 177, 117, 1),),
        inactiveIcon: SvgPicture.asset('assets/svg/cart.svg',color: Colors.black,),
        title: "Cart",
        activeForegroundColor: Color.fromRGBO(83, 177, 117, 1),
        inactiveForegroundColor: Colors.black,
      ),
      ItemConfig(
        textStyle: GoogleFonts.dmSans(
          fontSize: 12,
          fontWeight: FontWeight.w700
        ),
        icon: SvgPicture.asset('assets/svg/favourite.svg',color: Color.fromRGBO(83, 177, 117, 1),),
        inactiveIcon: SvgPicture.asset('assets/svg/favourite.svg',color: Colors.black,),
        title: "Favourite",
        activeForegroundColor: Color.fromRGBO(83, 177, 117, 1),
        inactiveForegroundColor: Colors.black,
      ),
    ],
    onItemSelected: (index) {
      setState(() {
        _selectedIndex = index;
      });
    },
    navBarHeight: 80,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        navBarConfig: _navBarConfig,
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final NavBarConfig navBarConfig;
  final NavBarDecoration navBarDecoration;

  const CustomBottomNavBar({
    super.key,
    required this.navBarConfig,
    this.navBarDecoration = const NavBarDecoration(),
  });

  Widget _buildItem(ItemConfig item, bool isSelected) {
    final title = item.title;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: IconTheme(
            data: IconThemeData(
              size: item.iconSize,
              color: isSelected
                      ? item.activeForegroundColor
                      : item.inactiveForegroundColor,
            ),
            child: isSelected ? item.icon : item.inactiveIcon,
          ),
        ),
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                child: Text(
                  title,
                  style: item.textStyle.apply(
                    color: isSelected
                            ? item.activeForegroundColor
                            : item.inactiveForegroundColor,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedNavBar(
      decoration: navBarDecoration,
      height: navBarConfig.navBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (final (index, item) in navBarConfig.items.indexed)
            Expanded(
              child: InkWell(
                // This is the most important part. Without this, nothing would happen if you tap on an item.
                onTap: () => navBarConfig.onItemSelected(index),
                child: _buildItem(item, navBarConfig.selectedIndex == index),
              ),
            ),
        ],
      ),
    );
  }
}