import 'package:education/11thCalss(VOD%20Batch)/Intro.dart';
import 'package:education/11thCalss(VOD%20Batch)/MathsSBSir.dart';
import 'package:education/Theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Classbatch extends StatefulWidget {
  const Classbatch({super.key});

  @override
  State<Classbatch> createState() => _ClassbatchState();
}

class _ClassbatchState extends State<Classbatch> {

List<String> data=[
  'Intro',
  'Maths(SB Sir)',
  'Maths(MS Sir)',
  'Physics',
  'Chemistry',
  'Biolgy',
  'English'
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
        title: Text("11TH CLASS (VOD BATCH)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
     actions: [Padding(
       padding: const EdgeInsets.only(right: 20),
       child: Icon(FontAwesomeIcons.whatsapp,
                                        color: Colors.green, size: 20.0),
     ),],
      ),
      body: Stack(
        
          children: [
            Expanded(
              child: 
              ListView.builder(
              itemCount:data.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    index == 0
                ? Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Intro()),
                  )
                : Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MathsSBSir()),
                  );
                    
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
                              height: 60,
                              width: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColor.Allcolor),
                              child: Icon(Icons.text_fields_rounded, color: Colors.white)),
                          title: Text(
                            data[index],
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                         
                          
                       
                        ),
                      ),
                    ),
                  ),
                );
              },
              
                  ),
           
           
            ),
                Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColor.dashbord,),
               
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Registration Starts 18th Apr 7:30 PM ",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
    
  
  
      
    );
  }



}