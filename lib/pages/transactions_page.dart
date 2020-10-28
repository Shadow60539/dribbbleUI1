import 'dart:math';

import 'package:dribbble1/core/colors.dart';
import 'package:dribbble1/pages/earnings_page.dart';
import 'package:dribbble1/widgets/fade_animations.dart';
import 'package:dribbble1/widgets/indicator.dart';
import 'package:dribbble1/widgets/middle_container.dart';
import 'package:dribbble1/widgets/my_sized_box.dart';
import 'package:dribbble1/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  ValueNotifier<bool> indexNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    TabBarView _tabBarView() {
      return TabBarView(
        controller: tabController,
        children: [
          MiddleContainer(),
          MiddleContainerFull(),
        ],
      );
    }

    TabBar _tabBar = TabBar(
      controller: tabController,
      labelPadding: EdgeInsets.only(top: 10),
      indicator: RectangularTabIndicator(
          color: kDifferentGreen, radius: 5, width: width / 2.5, height: 35),
      unselectedLabelColor: kWhite,
      labelColor: kBlack,
      labelStyle: TextStyle(fontWeight: FontWeight.w900, fontFamily: 'Gilroy'),
      tabs: [
        Text(
          'Last 30 days',
        ),
        Text(
          'This month',
        ),
      ],
    );

    Widget _bottomOptions(
        {String price, String img, String title, String items}) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FlutterLogo(),
                WidthSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WhiteText(title),
                    GreyText(
                      '$items items',
                      size: 12,
                    )
                  ],
                )
              ],
            ),
            GreenText(
              price,
              weight: FontWeight.bold,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kWhite,
              size: 12,
            )
          ],
        ),
      );
    }

    Widget _proPic = Stack(
      overflow: Overflow.visible,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 14.0, top: 10),
          child: SvgPicture.asset(
            'assets/pro_pic.svg',
            height: 30,
            width: 30,
          ),
        ),
        Positioned(
          right: 18,
          top: 10,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.redAccent,
            ),
          ),
        )
      ],
    );

    AppBar _appBar() {
      return AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        title: BlackText('Transactions', weight: FontWeight.bold),
        centerTitle: true,
        actions: [_proPic],
        leading: IconButton(
          icon: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(color: kGrey, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.arrow_back,
              size: 18,
            ),
          ),
          color: kBlack,
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return EarningsPage();
                  },
                  transitionsBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                      Widget child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                ));
          },
        ),
      );
    }

    Widget lowerContainer = Container(
      height: height / 4.5,
      padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
      alignment: Alignment.center,
      width: width - 40,
      decoration: BoxDecoration(
        color: kBlack,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 5,
            width: width / 3,
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(100)),
          ),
          HeightSpace(20),
          _bottomOptions(price: '\$98,034.83', items: '3', title: 'UI Designs'),
          HeightSpace(20),
          _bottomOptions(price: '\$6,234.72', items: '16', title: '3D Assets'),
        ],
      ),
    );

    _onNotification(notification) {
      if (notification is ScrollUpdateNotification) {
        indexNotifier.value = notification.scrollDelta > 0.0;
      }
    }

    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (BuildContext context, bool indexisChanging, Widget child) {
        return Scaffold(
          appBar: _appBar(),
          backgroundColor: kWhite,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeFromUpAnimation(
                  child: Row(
                    children: [
                      BlackText(
                        'Transactions',
                        size: 18,
                        weight: FontWeight.bold,
                      ),
                      WidthSpace(8),
                      Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.code,
                          size: 16,
                          color: kBlack,
                        ),
                      )
                    ],
                  ),
                ),
                HeightSpace(5),
                GreyText(
                  'Last 30 days',
                  size: 12,
                ),
                HeightSpace(40),
                FadeFromUpAnimation(
                  child: Container(
                    height: height / 8,
                    padding: EdgeInsets.only(top: 14),
                    alignment: Alignment.topCenter,
                    width: width,
                    decoration: BoxDecoration(
                      color: kBlack,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: _tabBar,
                  ),
                ),
                LimitedBox(
                  maxHeight: height / 2.4,
                  maxWidth: width - 40,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        top: -30,
                        child: LimitedBox(
                          maxHeight: height,
                          maxWidth: width - 40,
                          child: NotificationListener(
                              child: _tabBarView(),
                              onNotification: _onNotification),
                        ),
                      ),
                    ],
                  ),
                ),
                LimitedBox(
                  maxHeight: 10,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      AnimatedPositioned(
                        child: FadeFromDownAnimation(child: lowerContainer),
                        top: indexisChanging ? height / 6 : 0,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOutBack,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
