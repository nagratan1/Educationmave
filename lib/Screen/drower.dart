import 'package:education/11thCalss(VOD%20Batch)/11classbatchlist.dart';
import 'package:education/Constants/Appber.dart';
import 'package:education/Constants/CustomDrawer.dart';
import 'package:education/JEE/JEEList.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ApniKakshaAppScreenn extends StatefulWidget {
  @override
  _ApniKakshaAppScreennState createState() => _ApniKakshaAppScreennState();
}

class _ApniKakshaAppScreennState extends State<ApniKakshaAppScreenn>
    with SingleTickerProviderStateMixin {

      
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedTabIndex = 0;

  // Update the selected tab index
  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600), // Total time for one blink cycle
    )..repeat(reverse: true); // Repeat the animation back and forth

    _opacityAnimation =
        Tween<double>(begin: 1.0, end: 0.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  List<String> classdata=[
   '11th Class (VOD Batch)',
   '11th Class (VOD Batch)',
   'JEE - 2025 (Main & Adv) 11th'

  ];

  // Tab-specific content
  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0:
        return _buildAllContent();
      case 1:
        return Center(
          child: Text(
            "JEE Content",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      case 2:
        return Center(
          child: Text(
            "Boards Content",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      case 3:
        return Center(
          child: Text(
            "Free Content",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildAllContent() {
    return 
    ListView.builder(
      itemCount: classdata.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            index == 0
                ? Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Classbatch()),
                  )
                : null;
                index==2?Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JEEList()),
                  )
                : null;
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              margin: EdgeInsets.all(2),
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 12,
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                )
              ], borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: ListTile(
                  leading: Container(
                      height: 60,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue),
                      child: Icon(Icons.api_sharp, color: Colors.white)),
                  title: Text(
                    classdata[index],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('Top to see your courses'),
                  trailing: index == 2
                      ? null
                      : Container(
                          height: 25,
                          width: 60,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              FadeTransition(
                                opacity: _opacityAnimation,
                                child: Icon(
                                  LucideIcons.dot,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'NEW',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                ),
              ),
            ),
          ),
        );
      },
      //   padding: EdgeInsets.all(16.0),
      // children: [
      //   Text("fgyhuij")

      // ],
    );
  
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        title: "Education App",
        scaffoldKey: _scaffoldKey,
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 12,
                    color: Color.fromRGBO(0, 0, 0, 0.16),
                  )
                ], borderRadius: BorderRadius.circular(8), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListTile(
                    leading: Container(
                        height: 60,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue),
                        child: Icon(Icons.api_sharp, color: Colors.white)),
                    title: Text(
                      "My Courses",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Top to see your courses'),
                  ),
                )),
          ),
          // Custom TabBar aligned to the left
          Container(
            //color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTab(
                        label: "All",
                        isSelected: _selectedTabIndex == 0,
                        onTap: () => _onTabSelected(0),
                      ),
                      CustomTab(
                        label: "JEE",
                        isSelected: _selectedTabIndex == 1,
                        onTap: () => _onTabSelected(1),
                      ),
                      CustomTab(
                        label: "Boards",
                        isSelected: _selectedTabIndex == 2,
                        onTap: () => _onTabSelected(2),
                      ),
                      CustomTab(
                        label: "Free Batches",
                        isSelected: _selectedTabIndex == 3,
                        onTap: () => _onTabSelected(3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Dynamic Content Area
          Expanded(
            child: _buildTabContent(),
          ),
        ],
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  CustomTab(
      {required this.label, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black45),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
