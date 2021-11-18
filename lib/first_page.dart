import 'package:flutter/material.dart';
import 'package:test/controller.dart';
import 'package:test/navigation_bar.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Controller _controller = Get.put(Controller());

  Widget product() {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blueGrey,
          ),
          const Text(
            "Maggie\nRM3.50/pack",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double safeArea = MediaQuery.of(context).padding.top;
    return Scaffold(
      key: _scaffoldKey,
      // =================================================== Drawer
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150,
              child: DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow[300],
                          ),
                          child: const Center(
                            child: Text("M"),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Mahadir"),
                              Text(
                                "asdjhasdkahsdjkashdjkhas@asdljkasdkl.con",
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.mail_outline),
              title: const Text('Inbox'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.airplane_ticket_outlined),
              title: const Text('My Vouchers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text('Purchase History'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.card_giftcard_outlined),
              title: const Text('My Retailers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.category_outlined),
              title: const Text('Explore Categories'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_book_outlined),
              title: const Text('Brochures'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // ===================================================
      body: Stack(
        children: [
          Obx(() {
            return IndexedStack(
              index: _controller.widgetIndex.value,
              children: [
                Container(
                  color: Colors.white,
                  width: size.width,
                  height: size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: safeArea,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                _scaffoldKey.currentState!.openDrawer();
                              },
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: const Icon(Icons.menu),
                            ),
                            const Spacer(),
                            Expanded(
                              flex: 50,
                              child: SizedBox(
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                    prefixIcon: const Icon(Icons.search),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: const Icon(Icons.camera_outlined),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: const Icon(Icons.notifications_none_outlined),
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(height: 10),
                        /* SizedBox(
                            width: size.width,
                            height: 110,
                            child: PageView.builder(
                              itemCount: 2,
                              itemBuilder: (context, position) {
                                return Row(
                                  children: [
                                    SizedBox(
                                      width: size.width,
                                      height: 110,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    width: 70,
                                                    height: 70,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.blueGrey,
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(12.0),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 70,
                                                    child: Text(
                                                      "Products & Items",
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ), */
                        SizedBox(
                          width: size.width,
                          height: 110,
                          child: Scrollbar(
                            child: ListView.builder(
                              shrinkWrap: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Row(
                                  children: [
                                    if (index == 0)
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    Column(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 70,
                                          child: Text("Products & Item"),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        // First Container
                        Container(
                          width: size.width,
                          color: Colors.grey,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: size.width - 20,
                                height: 210,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Cheapest Daily Essentials On Lazada"),
                                    Row(
                                      children: [
                                        product(),
                                        product(),
                                        product(),
                                        product(),
                                        product(),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        product(),
                                        product(),
                                        product(),
                                        product(),
                                        product(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // Second Container
                              Container(
                                width: size.width - 20,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Moon Cake As Low As RM1.98!"),
                                        Spacer(),
                                        Text("SHOW MORE >"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Center(
                                                  child: FlutterLogo(
                                                    size: 100,
                                                  ),
                                                ),
                                                Text(
                                                  "Healthy Low Sugar Mooncake",
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5.0),
                                                  child: Text("RM 15"),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Center(
                                                  child: FlutterLogo(
                                                    size: 100,
                                                  ),
                                                ),
                                                Text(
                                                  "Healthy Low Sugar Mooncake",
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5.0),
                                                  child: Text("RM 15"),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Center(
                                                  child: FlutterLogo(
                                                    size: 100,
                                                  ),
                                                ),
                                                Text(
                                                  "Healthy Low Sugar Mooncake",
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5.0),
                                                  child: Text("RM 15"),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: size.width - 20,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 115,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.cyan,
                ),
                Container(color: Colors.blueAccent),
                Container(color: Colors.indigo),
              ],
            );
          }),
          NavigationBar()
        ],
      ),
    );
  }
}
