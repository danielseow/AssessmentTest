import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({Key? key}) : super(key: key);
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Hero(
        tag: "navigation_bar",
        child: SizedBox(
          height: 115,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        offset: Offset(2, -2), // Shadow position
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      _controller.widgetIndex.value = 0;
                      _controller.isPressed[_controller.isPressed.indexOf(1)] = 0;
                      _controller.isPressed[_controller.widgetIndex.value] = 1;
                    },
                    child: Column(
                      children: [
                        const Spacer(),
                        Obx(() {
                          var color = Colors.black;
                          if (_controller.isPressed[0] == 1) {
                            color = Colors.blue;
                          }
                          return Icon(
                            Icons.local_offer_outlined,
                            color: color,
                          );
                        }),
                        const Text(
                          "Deals",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      _controller.widgetIndex.value = 1;
                      _controller.isPressed[_controller.isPressed.indexOf(1)] = 0;
                      _controller.isPressed[_controller.widgetIndex.value] = 1;
                    },
                    child: Column(
                      children: [
                        const Spacer(),
                        Obx(() {
                          var color = Colors.black;
                          if (_controller.isPressed[1] == 1) {
                            color = Colors.blue;
                          }
                          return Icon(Icons.airplane_ticket_outlined, color: color);
                        }),
                        const Text(
                          "Vouchers",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      _controller.widgetIndex.value = 2;
                      _controller.isPressed[_controller.isPressed.indexOf(1)] = 0;
                      _controller.isPressed[_controller.widgetIndex.value] = 1;
                    },
                    child: Column(
                      children: [
                        const Spacer(),
                        ClipOval(
                          child: Container(
                            width: 80,
                            height: 80,
                            color: Colors.red,
                            child: Obx(() {
                              var color = Colors.black;
                              if (_controller.isPressed[2] == 1) {
                                color = Colors.blue;
                              }
                              return Icon(
                                Icons.food_bank_outlined,
                                color: color,
                                size: 50,
                              );
                            }),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "F&B Deals",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      _controller.widgetIndex.value = 3;
                      _controller.isPressed[_controller.isPressed.indexOf(1)] = 0;
                      _controller.isPressed[_controller.widgetIndex.value] = 1;
                    },
                    child: Column(
                      children: [
                        const Spacer(),
                        Obx(() {
                          var color = Colors.black;
                          if (_controller.isPressed[3] == 1) {
                            color = Colors.blue;
                          }
                          return Icon(
                            Icons.auto_graph_outlined,
                            color: color,
                          );
                        }),
                        const Text(
                          "Price Tracker",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      _controller.widgetIndex.value = 4;
                       _controller.isPressed[_controller.isPressed.indexOf(1)] = 0;
                      _controller.isPressed[_controller.widgetIndex.value] = 1;
                    },
                    child: Column(
                      children:  [
                        const Spacer(),
                        Obx( () {
                          var color = Colors.black;
                              if (_controller.isPressed[4] == 1) {
                                color = Colors.blue;
                              }
                            return Icon(Icons.account_circle_outlined,color: color,);
                          }
                        ),
                        const Text(
                          "Profile",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
