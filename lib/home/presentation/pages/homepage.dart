import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_buttom_textfield_search.dart';
import 'package:clot_project/home/core/widgets/app_textfield.dart';
import 'package:clot_project/home/core/widgets/app_listview_seperated.dart';
import 'package:clot_project/home/presentation/pages/categories_page.dart';
import 'package:clot_project/home/presentation/pages/notification_page.dart';
import 'package:clot_project/home/presentation/pages/orders_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> pages = [
    Homepage2(),
    NotificationPage(),
    OrdersPage(),
    Homepage2(),
  ];
  int page = 0;
  bool tanlangan = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[page],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            page = value;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: page,
        selectedItemColor: tanlangan
            ? AppColors.mainColors2
            : AppColors.mainColors,
        unselectedItemColor: tanlangan
            ? AppColors.mainColors2
            : AppColors.mainColors,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  int selectedindex = 0;
  String gender = 'Men';
  bool gender2 = true;
  final changeGender = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 20,
                        foregroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: DropdownButton<String>(
                        autofocus: true,
                        padding: .only(left: 5),
                        alignment: .center,
                        borderRadius: .circular(100),
                        value: gender,
                        underline: Container(),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.textColor,
                          size: 30,
                        ),
                        items: [
                          DropdownMenuItem(
                            value: 'Men',
                            alignment: .center,
                            child: Text(
                              'Men',
                              style: GoogleFonts.gabarito(fontWeight: .bold),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Woman',
                            alignment: .center,
                            child: Text(
                              'Woman',
                              style: TextStyle(fontWeight: .bold),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius: .circular(100),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: AppColors.mainColors,
                          borderRadius: .circular(100),
                        ),
                        child: Padding(
                          padding: .all(12),
                          child: Image.asset('assets/images/cart.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: AppButtomTextfieldSearch(),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text(
                      'Categories',
                      style: GoogleFonts.gabarito(
                        color: AppColors.textColor,
                        fontSize: 20,
                        fontWeight: .bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoriesPage(),
                          ),
                        );
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(height: 150, child: ListviewSeperatedCategories()),
                Row(
                  children: [
                    Text(
                      'Top Selling',
                      style: GoogleFonts.gabarito(
                        color: AppColors.textColor,
                        fontSize: 20,
                        fontWeight: .bold,
                      ),
                    ),
                    Spacer(),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.5),
                SizedBox(
                  height: 281,
                  width: double.infinity,
                  child: ListviewSeperatedProduct(),
                ),
                SizedBox(height: 25.5),
                Row(
                  children: [
                    Text(
                      'New in',
                      style: GoogleFonts.gabarito(
                        color: AppColors.mainColors,
                        fontSize: 20,
                        fontWeight: .bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.5),
                SizedBox(
                  height: 281,
                  width: double.infinity,
                  child: ListviewSeperatedProduct2(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
