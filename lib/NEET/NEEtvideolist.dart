import 'package:education/JEE/JEEVideoPlay.dart';
import 'package:education/Theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class Neetvideolist extends StatefulWidget {
  const Neetvideolist({super.key});

  @override
  State<Neetvideolist> createState() => _NeetvideolistState();
}

class _NeetvideolistState extends State<Neetvideolist> {
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
        return _buildJeeContent();

      default:
        return SizedBox.shrink();
    }
  }
Widget _buildAllContent() {
  return ListView.builder(
    itemCount: 6,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Jeevideoplay()),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
          child: Container(
            margin: EdgeInsets.all(2),
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
              boxShadow: [
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
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            //color: Colors.amber,
                          ),
                          child: _controller.value.isInitialized
                              ? AspectRatio(
                                  aspectRatio: _controller.value.aspectRatio,
                                  child: VideoPlayer(_controller),
                                )
                              : Container(),
                        ),
                        // Duration Overlay
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 6),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              _controller.value.isInitialized
                                  ? _formatDuration(
                                      _controller.value.duration)
                                  : "00:00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Maths Demo Class"),
                        SizedBox(height: 40),
                        Text("17-Apr-2024 19:44"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

// Helper function to format the duration
String _formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  String minutes = twoDigits(duration.inMinutes.remainder(60));
  String seconds = twoDigits(duration.inSeconds.remainder(60));
  return "${duration.inHours > 0 ? '${twoDigits(duration.inHours)}:' : ''}$minutes:$seconds";
}



  
  
  
  
  Widget _buildJeeContent() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50, 
          width: 190, 
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.black45)),
       child:Center(child: Text("No Data Found"))
        )

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
          "NEET - 2025 (MAIN & ADV) 11...",
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
              color: isSelected ? AppColor.Allcolor : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
