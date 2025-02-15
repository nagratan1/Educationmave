import 'package:education/Constants/Appber.dart';
import 'package:education/Constants/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ApniKakshaAppScreen extends StatefulWidget {
  @override
  _ApniKakshaAppScreenState createState() => _ApniKakshaAppScreenState();
}

class _ApniKakshaAppScreenState extends State<ApniKakshaAppScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedTabIndex = 0;

  // Update the selected tab index
  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  // Tab-specific content
  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0:
        return _buildAllContent();
      case 1:
        return _buildJeeContent();
      // Center(
      //   child: Text(
      //     "JEE Content",
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      // );
      case 2:
        return _buildJeeContent();

      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildAllContent() {
    return ListView(
      children: [
        Container(
          height: 1,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 12,
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  child: Image.asset("assets/images/education.png"),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "   JEE Advanced 2024 Result",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      Text("   Congratulations Student !",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900)),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                            height: 40,
                            width: 500,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(18)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.remove_red_eye),
                                Text("  650.0K"),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.whatsapp,
                                      color: Colors.green, size: 20.0),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
            //child: Image.asset("assets/images/education.png"),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 12,
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  child: Image.asset("assets/images/education.png"),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "  JEE Advanced 2024 Result",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      Text("  Congratulations Student !",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900)),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                            height: 40,
                            width: 500,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(18)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.remove_red_eye),
                                Text("  650.0K"),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.whatsapp,
                                      color: Colors.green, size: 20.0),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
            //child: Image.asset("assets/images/education.png"),
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.red.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                "STAR + SAFALTA BATCH",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "ADMISSION OPEN!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add explore button action
                },
                child: Text("EXPLORE"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildJeeContent() {
    return ListView(
      children: [
        Container(
          height: 1,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 12,
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  child: Image.asset("assets/images/education.png"),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "   JEE Advanced 2024 Result",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      Text("   Congratulations Student !",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900)),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                            height: 40,
                            width: 500,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(18)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.remove_red_eye),
                                Text("  650.0K"),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.whatsapp,
                                      color: Colors.green, size: 20.0),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
            //child: Image.asset("assets/images/education.png"),
          ),
        ),
        SizedBox(height: 16),
      ],
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
          Container(
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
                        label: "NEET",
                        isSelected: _selectedTabIndex == 2,
                        onTap: () => _onTabSelected(2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
