import 'package:glassmorphism/glassmorphism.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class GlassmorphicSample extends StatefulWidget {
  const GlassmorphicSample({super.key});

  @override
  State<GlassmorphicSample> createState() => GlassmorphicSampleState();
}

class GlassmorphicSampleState extends State<GlassmorphicSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/image1.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            scale: 1,
          ),
          GlassmorphicContainer(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            borderRadius: 0,
            blur: 20,
            alignment: Alignment.bottomCenter,
            border: 0,
            linearGradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
              const Color(0xFFffffff).withOpacity(0.1),
              const Color(0xFFFFFFFF).withOpacity(0.05),
            ], stops: const [
              0.1,
              1,
            ]),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFFffffff).withOpacity(0.5),
                const Color((0xFFFFFFFF)).withOpacity(0.5),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "View your",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.settings,
                        ),
                        Icon(
                          Icons.more_vert,
                        )
                      ],
                    ),
                  ),
                  const Text(
                    "Resents",
                    style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search here....",
                        suffixIcon: const Icon(Icons.search, color: Colors.blueAccent),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(10), // Adjust the vertical padding as needed
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Files",
                    style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GridView(

                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10, mainAxisExtent: 120),


                    children: [
                      Container(
                        height: 120,
                        width:  MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.blueAccent.withOpacity(0.1)),
                        child: Column(
                          children: [

                            const Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.more_vert,color: Colors.blueAccent,)),
                            Image.asset("images/wordlogo.png",width: 60,height: 60,),
                            const Text("Paper Scan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 5,),
                            const Text("13 Mar 2023",style: TextStyle(color: Colors.black,fontSize: 10,),)
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width:  MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.blueAccent.withOpacity(0.1)),
                        child: Column(
                          children: [

                            const Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.more_vert,color: Colors.blueAccent,)),
                            Image.asset("images/wordlogo.png",width: 60,height: 60,),
                            const Text("College Docs",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 5,),
                            const Text("13 Mar 2023",style: TextStyle(color: Colors.black,fontSize: 10,),)
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width:  MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.blueAccent.withOpacity(0.1)),
                        child: Column(
                          children: [

                            const Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.more_vert,color: Colors.blueAccent,)),
                            Image.asset("images/excelIcon.png",width: 60,height: 60,),
                            const Text("FYP Project",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 5,),
                            const Text("13 Mar 2023",style: TextStyle(color: Colors.black,fontSize: 10,),)
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width:  MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.blueAccent.withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4.0,right: 4),
                          child: Column(
                            children: [

                              const Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(Icons.more_vert,color: Colors.blueAccent,)),
                              Image.asset("images/presentation.png",width: 60,height: 60,),
                              const Text("FYP Presentation",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                              const SizedBox(height: 5,),
                              const Text("13 Mar 2023",style: TextStyle(color: Colors.black,fontSize: 10,),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 120,
                        width:  MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.blueAccent.withOpacity(0.1)),
                        child: Column(
                          children: [

                            const Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.more_vert,color: Colors.blueAccent,)),
                            Image.asset("images/wordlogo.png",width: 60,height: 60,),
                            const Text("Paper Scan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 5,),
                            const Text("13 Mar 2023",style: TextStyle(color: Colors.black,fontSize: 10,),)
                          ],
                        ),
                      ),

                    ],

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