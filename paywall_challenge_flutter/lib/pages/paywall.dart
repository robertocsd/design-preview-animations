import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paywall_challenge/pages/paywall/bloc/paywall_bloc.dart';
import 'package:paywall_challenge/pages/widgets/listview.dart';
import 'package:paywall_challenge/utils/texts.dart';
import 'package:paywall_challenge/utils/translate_colors.dart';

class PayWallPage extends StatefulWidget {
  const PayWallPage({Key? key}) : super(key: key);

  @override
  State<PayWallPage> createState() => _PayWallPageState();
}

class _PayWallPageState extends State<PayWallPage> {
  final ScrollController _scrollController1 = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController1.position.minScrollExtent;
      double maxScrollExtent1 = 400;

      animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 8,
          _scrollController1);
    });
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController scrollController) {
    scrollController
        .animateTo(direction,
            duration: Duration(seconds: seconds), curve: Curves.linear)
        .then((value) {
      direction = direction + 400;
      animateToMaxMin(max, min, direction, seconds, scrollController);
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<PaywallBloc>(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: HexColor('#17171B'),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Text(
                    TextsPayWall().alreadyPurchase,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      child: const Icon(
                        Icons.close,
                        size: 25.0,
                      ),
                      padding: const EdgeInsets.all(7.0),
                      shape: const CircleBorder(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.08,
              ),
              MoviesListView(
                scrollController: _scrollController1,
              ),
              Container(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  TextsPayWall().getFullAccess,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      letterSpacing: .25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    TextsPayWall().cancelAnytime,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .25),
                  ),
                  Text(
                    TextsPayWall().stillLoveyou,
                    style: TextStyle(
                        color: HexColor('#B2B2B8'),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .15),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.07,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: HexColor('#74747B'),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BlocBuilder<PaywallBloc, PaywallState>(
                      builder: (context, state) {
                        return Stack(
                          children: [
                            AnimatedOpacity(
                              opacity: state.model.switchVale ? 0 : 1,
                              duration: const Duration(milliseconds: 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    TextsPayWall().notsure,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: .25),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    TextsPayWall().freetrial,
                                    style: TextStyle(
                                        color: HexColor('#B2B2B8'),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: .15),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: AnimatedOpacity(
                                opacity: state.model.switchVale ? 1 : 0,
                                duration: const Duration(milliseconds: 300),
                                child: Text(
                                  TextsPayWall().freeTryal,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: .25),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    BlocBuilder<PaywallBloc, PaywallState>(
                      builder: (context, state) {
                        return CupertinoSwitch(
                            trackColor: HexColor('#74747B'),
                            value: state.model.switchVale,
                            onChanged: (value) {
                              bloc.add(ChanginEvent());
                            });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              BlocBuilder<PaywallBloc, PaywallState>(
                builder: (context, state) {
                  return SizedBox(
                    width: width * 0.9,
                    height: height * 0.07,
                    child: CupertinoButton(
                      borderRadius: BorderRadius.circular(30),
                      color: HexColor('#FFFFFF'),
                      onPressed: () {},
                      child: Stack(
                        children: [
                          Center(
                            child: AnimatedOpacity(
                              opacity: state.model.switchVale ? 1 : 0,
                              duration: const Duration(milliseconds: 300),
                              child: Text(
                                TextsPayWall().start7days,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: .25),
                              ),
                            ),
                          ),
                          Center(
                            child: AnimatedOpacity(
                              opacity: state.model.switchVale ? 0 : 1,
                              duration: const Duration(milliseconds: 300),
                              child: Text(
                                TextsPayWall().continues,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: .25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              BlocBuilder<PaywallBloc, PaywallState>(
                builder: (context, state) {
                  return Stack(
                    children: [
                      Center(
                        child: AnimatedOpacity(
                          opacity: state.model.switchVale ? 1 : 0,
                          duration: const Duration(milliseconds: 300),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              TextsPayWall().freeDays,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: .15),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: AnimatedOpacity(
                          opacity: state.model.switchVale ? 0 : 1,
                          duration: const Duration(milliseconds: 300),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              TextsPayWall().priceMonthly,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: .15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ));
  }
}
