import 'package:education/Constants/Appber.dart';
import 'package:education/Constants/CustomDrawer.dart';
import 'package:education/Drawer%20Screen/TestPurchased.dart';
import 'package:flutter/material.dart';

class Testseries extends StatefulWidget {
  const Testseries({super.key});

  @override
  State<Testseries> createState() => _TestseriesState();
}

class _TestseriesState extends State<Testseries>  with SingleTickerProviderStateMixin{
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


  // Tab-specific content
  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0:
        return Container();
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
            child: InkWell(
              onTap: (){
                Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Testpurchased()),
             );
              },
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
                        "Purchased Test",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Top to see Your Tests / Quiz'),
                    ),
                  )),
            ),
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
                        label: "Free",
                        isSelected: _selectedTabIndex == 0,
                        onTap: () => _onTabSelected(0),
                      ),
                      CustomTab(
                        label: "Paid",
                        isSelected: _selectedTabIndex == 1,
                        onTap: () => _onTabSelected(1),
                      ),
                      CustomTab(
                        label: "Live",
                        isSelected: _selectedTabIndex == 2,
                        onTap: () => _onTabSelected(2),
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
