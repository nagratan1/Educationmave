import 'package:education/JEE/JEEVideoList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MathsOne extends StatefulWidget {
  const MathsOne({super.key});

  @override
  State<MathsOne> createState() => _MathsOneState();
}

class _MathsOneState extends State<MathsOne> {
  List<String>ClassName=[
    'DPP Video Solutions',
    'Basic Maths',
    'Compound Angles',
    'Logarithm',
    'Calculus',
    'Quadratic Eduation',
    'Sequence and Progression',
    'Trigonometric Equation',
    'Solution Of Tringle',
    'Determinants',
    'Straight Line',
    'Circle',
    'Complex Number',
    'Permutation And Combination',
    'Binomial Tehorem',
    'Parabola'
  ];
  @override
 Widget build(BuildContext context) {
    return 
    Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: InkWell(
          onTap: (){
           Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text("MATHS (TEACHER NAME )",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
     actions: [Padding(
       padding: const EdgeInsets.only(right: 20),
       child: Icon(FontAwesomeIcons.whatsapp,
                                        color: Colors.green, size: 20.0),
     ),],
      ),
      body:
      ListView.builder(
              itemCount:ClassName.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                //     index == 0
                // ? Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Jeevideolist()),
                //   )
                // : null;Jeevideolist
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jeevideolist()),
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
                                  color: Colors.blue),
                              child: Icon(Icons.text_fields_rounded, color: Colors.white)),
                          title: Text(
                            ClassName[index],
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          trailing: Container(
                            height: 40, 
                            width: 40 , 
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color:Colors.blue),
                            child:Center(child: Text("8",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),))
                          ),
                         
                          
                       
                        ),
                      ),
                    ),
                  ),
                );
              },
              
                  ),
           
           
    );
  
  
  }


}