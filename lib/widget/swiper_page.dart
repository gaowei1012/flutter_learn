import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('swiper page'),
        ),
        body: Column(
          children: [
            Container(

                /// 宽度
                width: MediaQuery.of(context).size.width,
                height: 120,
                margin: EdgeInsets.only(bottom: 20),
                child: Swiper(
                  itemCount: 3,
                  loop: true,
                  autoplay: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: _swiperBuilder,
                  pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.black12, activeColor: Colors.white)),
                  // control: SwiperControl(),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              margin: EdgeInsets.only(bottom: 20),
              child: Swiper(
                itemCount: 6,
                loop: true,
                autoplay: true,
                viewportFraction: .8,
                scale: .9,
                scrollDirection: Axis.horizontal,
                itemBuilder: _swiperBuilderA,
                pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.black26, activeColor: Colors.white)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              margin: EdgeInsets.only(bottom: 20),
              child: Swiper(
                itemCount: 6,
                autoplay: true,
                loop: true,

                /// 内建样式
                layout: SwiperLayout.STACK,
                itemWidth: 300,
                itemHeight: 400,
                scrollDirection: Axis.horizontal,
                itemBuilder: _swiperBuilderB,
                pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.black12, activeColor: Colors.white)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              child: Swiper(
                itemCount: 6,
                loop: true,
                autoplay: true,
                layout: SwiperLayout.CUSTOM,
                itemWidth: 300,
                itemHeight: 160,
                itemBuilder: _swiperBuilderC,
                scrollDirection: Axis.horizontal,
                pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.black12, activeColor: Colors.white)),

                /// 自定义轮播效果
                /// 描述布局和动画
                customLayoutOption: CustomLayoutOption(
                        startIndex: -1, stateCount: 3)
                    .addRotate([-45.0 / 100, 0.0, 45.0 / 100]).addTranslate([
                  Offset(-370.0, -40.0),
                  Offset(0.0, 0.0),
                  Offset(370.0, -40.0)
                ]),
              ),
            )
          ],
        ));
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(
      'http://via.placeholder.com/350x150',
      fit: BoxFit.fill,
    ));
  }

  Widget _swiperBuilderA(BuildContext context, int index) {
    return (Image.network(
      'http://via.placeholder.com/350x150',
      fit: BoxFit.fill,
    ));
  }

  Widget _swiperBuilderB(BuildContext context, int index) {
    return (Image.network(
      'http://via.placeholder.com/350x150',
      fit: BoxFit.fill,
    ));
  }

  Widget _swiperBuilderC(BuildContext context, int index) {
    return (Image.network(
      'http://via.placeholder.com/350x150',
      fit: BoxFit.fill,
    ));
  }
}
