import 'package:education/11thCalss(VOD%20Batch)/Openpdf.dart';
import 'package:education/11thCalss(VOD%20Batch)/youtube.dart';
import 'package:education/Theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class Relationsfvideolist extends StatefulWidget {
  const Relationsfvideolist({super.key});

  @override
  State<Relationsfvideolist> createState() => _RelationsfvideolistState();
}

class _RelationsfvideolistState extends State<Relationsfvideolist> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedTabIndex = 0;
  late VideoPlayerController _controller;

  // Update the selected tab index
  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
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
        return _buildAllContent();
      case 1:
        return _buildJeeContent();

      case 2:
        return _buildDownloadContent();

      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildAllContent() {
  return ListView.builder(
    itemCount: 10,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'Purchase Course First !!',
                style: TextStyle(color: Colors.red),
              ),
              content: const Text(
                  'You Haven`t purchased course yet .\n Buy Course Now !!!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Show toast message
                    Fluttertoast.showToast(
                      msg: "Payment Link Not Activated",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.black45,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                    Navigator.pop(context, 'OK');
                  },
                  child: const Text(
                    'BUY NOW',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
              insetPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
       
       
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
          child: Container(
            margin: const EdgeInsets.all(2),
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 12,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                )
              ],
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.amber,
                      ),
                      child: _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : Container(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: const [
                        Text("Maths Demo Class "),
                        SizedBox(height: 40),
                        Text("17-Apr-2024 19:44 "),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

 
  Widget _buildJeeContent() {
    return  ListView.builder(
              itemCount:10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final reverseIndex = 10 - index;
                return InkWell(
                  onTap: () {
                   showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'You have to purchase the course to view this document .',
                style: TextStyle(color: Colors.black,fontSize: 12),
              ),
              // content: const Text(
              //     'You Haven`t purchased course yet .\n Buy Course Now !!!'),
              actions: <Widget>[
                // TextButton(
                //   onPressed: () => Navigator.pop(context, 'Cancel'),
                //   child: const Text(
                //     'Cancel',
                //     style: TextStyle(color: Colors.red),
                //   ),
                // ),
                TextButton(
                  onPressed: () {
                    // Show toast message
                    // Fluttertoast.showToast(
                    //   msg: "Payment Link Not Activated",
                    //   toastLength: Toast.LENGTH_SHORT,
                    //   gravity: ToastGravity.BOTTOM,
                    //   backgroundColor: Colors.black45,
                    //   textColor: Colors.white,
                    //   fontSize: 16.0,
                    // );
                    Navigator.pop(context, 'OK');
                  },
                  child: const Text(
                    'OK',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
              insetPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
       
       

            //         Navigator.push(
            //    context,
            //    MaterialPageRoute(builder: (context) => OpenPdf()),
            //  );
                    
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      margin: EdgeInsets.all(2),
                      height: MediaQuery.of(context).size.height / 11,
                      width: MediaQuery.of(context).size.width / 1,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 12,
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                        )
                      ], borderRadius: BorderRadius.circular(8), color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ListTile(
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.blue),
                              child: Center(child: Text('${reverseIndex}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.white),))),
                          title: Text(
                            "DPP -14 | Relations & Function | \n Elementary Methods Of Finding Range",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('Published on : 16-Apr-2024 15:47'),
                          
                         
                          
                       
                        ),
                      ),
                    ),
                  ),
                );
              },
              
                  );
           
       
  }

 Widget _buildDownloadContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 50,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black45)),
            child: Center(child: Text("No Data Found")))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.dashbord,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "11TH CLASS (VOD BATCH)",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(FontAwesomeIcons.whatsapp,
                color: Colors.green, size: 20.0),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: AppColor.dashbord,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTab(
                        label: "Live Class",
                        isSelected: _selectedTabIndex == 0,
                        onTap: () => _onTabSelected(0),
                      ),
                      CustomTab(
                        label: "Notes",
                        isSelected: _selectedTabIndex == 1,
                        onTap: () => _onTabSelected(1),
                      ),
                      CustomTab(
                        label: "Downloads",
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
        width: MediaQuery.of(context).size.width / 3.2,
        height: MediaQuery.of(context).size.height / 19,
        //margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : AppColor.Allcolor,
          //borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColor.dashbord : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
