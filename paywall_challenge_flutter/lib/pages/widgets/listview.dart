import 'package:flutter/material.dart';
import 'package:paywall_challenge/utils/translate_colors.dart';

class MoviesListView extends StatelessWidget {
  final ScrollController? scrollController;

  const MoviesListView({Key? key, this.scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List movies1 = [
      'features.jpg',
      'all_collections.jpg',
      'fonts.jpg',
      'stickers.jpg',
    ];

    List texts = [
      'All Features',
      'All collections',
      'Additional Fonts',
      'Unique Stickers',
    ];

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.3,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              children: [
                //1
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/${movies1[3]}',
                          height: height * 0.3,
                          width: width * 0.4,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height * 0.035,
                        width: width * 0.4,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: HexColor('#303036'),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                        ),
                        child: ClipRRect(
                          child: Center(
                              child: Text(
                            '${texts[3]}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: HexColor('#FFFFFF'),
                                letterSpacing: .1),
                          )),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ],
                ),
                //2
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/${movies1[2]}',
                          height: height * 0.3,
                          width: width * 0.4,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height * 0.035,
                        width: width * 0.4,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: HexColor('#303036'),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                        ),
                        child: ClipRRect(
                          child: Center(
                              child: Text(
                            '${texts[2]}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: HexColor('#FFFFFF'),
                                letterSpacing: .1),
                          )),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ],
                ),
                //3
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/${movies1[0]}',
                          height: height * 0.3,
                          width: width * 0.4,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height * 0.035,
                        width: width * 0.4,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: HexColor('#303036'),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                        ),
                        child: ClipRRect(
                          child: Center(
                              child: Text(
                            '${texts[0]}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: HexColor('#FFFFFF'),
                                letterSpacing: .1),
                          )),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ],
                ),
                //4
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/${movies1[1]}',
                          height: height * 0.3,
                          width: width * 0.4,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height * 0.035,
                        width: width * 0.4,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: HexColor('#303036'),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                        ),
                        child: ClipRRect(
                          child: Center(
                              child: Text(
                            '${texts[1]}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: HexColor('#FFFFFF'),
                                letterSpacing: .1),
                          )),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
