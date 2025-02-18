import 'package:education/Group%20D/GroupDIntro.dart';
import 'package:education/JEE/MathsVgSir.dart';
import 'package:education/Theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Group_D_List extends StatefulWidget {
  const Group_D_List({super.key});

  @override
  State<Group_D_List> createState() => _Group_D_ListState();
}

class _Group_D_ListState extends State<Group_D_List> {
 List<String> data=[
  'Intro',
  'Maths(VG Sir)',
  'Maths(GB Sir)',
  'Phy (NS Sir)',
  'Phy (JP Sir)',
  'Chem (VJ Sir)',
  'Chem (AKK Sir)',
  'Chem (SKM Sir)',
  'Test Paper & Solution',
  
  
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.dashbord,
        leading: InkWell(
          onTap: (){
           Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text("GROUP D - 2025 (MAIN & ADV) 11...",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
     actions: [Padding(
       padding: const EdgeInsets.only(right: 20),
       child: Icon(FontAwesomeIcons.whatsapp,
                                        color: Colors.green, size: 20.0),
     ),],
      ),
      body: 
     Stack(
  children: [
    Column(
      children: [
         SizedBox(height: 10),
        // Top Container
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Container(
            height: 40,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black38),
            ),
            child: Center(
              child: Text(
                'Batch Completed || Final Validity : 15-Jul-2025',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        // ListView Builder inside Expanded
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  index==0?Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Groupdintro()),
                  ):null;
                  index==1?Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MathsOne()),
                  ):null;
                  // Navigation logic here
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    margin: EdgeInsets.all(2),
                    height: MediaQuery.of(context).size.height / 11,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 12,
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ListTile(
                        leading: Container(
                          height: 60,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColor.Allcolor,
                          ),
                          child: Icon(Icons.text_fields_rounded, color: Colors.white),
                        ),
                        title: Text(
                          data[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      
      
      SizedBox(height: 80,)
      ],
    ),
    // Positioned Widget
    Positioned(
      bottom: 20,
      left: 10,
      right: 10,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.dashbord,
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Admission Closed",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  ],
)

  
      
    );
  }

}