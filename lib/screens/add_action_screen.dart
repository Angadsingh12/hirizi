import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiriizi/components/widgets.dart';

class ActionScreen extends StatefulWidget {
  const ActionScreen({super.key});

  @override
  State<ActionScreen> createState() => _ActionScreenState();
}

class _ActionScreenState extends State<ActionScreen> {
  final controller = TextEditingController();
  Color nonSelectedColour = const Color(0XFFE9E9E9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {},
        ),
        title: Text('Add Action',style: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xff1C1B1F),
          ),
        ),),
      ),
      body: ListView(
        children: [Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 10),
                          child: GestureDetector(
                            child: const DayButton(
                              dayCount: 1,
                              selectedColor: Color(0XFFF07F20),
                              borderColor: false,
                            ),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 10),
                          child: GestureDetector(
                            child: DayButton(
                              dayCount: 2,
                              selectedColor: nonSelectedColour,
                              borderColor: false,
                            ),
                            onTap: () {},
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(nonSelectedColour),
                              shape: MaterialStateProperty.all(const CircleBorder())
                            ),

                            onPressed: () {}, child: const Icon(CupertinoIcons.add), ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0,20,8,8),
                  child: MyTextField(obscureText: false, hintText: 'Action Title', controller: controller),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 124,
                    alignment: Alignment.bottomLeft,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      maxLines: null,
                      expands: true,
                      controller:controller,
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintText: 'Enter Task Description',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFFBDBDBD)),
                          borderRadius: BorderRadius.all(Radius.circular(6))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(obscureText: false, hintText: 'Action Title', controller: controller),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(obscureText: false, hintText: 'Action Title', controller: controller),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Add Action +',style: GoogleFonts.inter(textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF4974A)
                  )
                  ),),),

              ],
            ),
          ),
        )
    ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: FloatingActionButton(
              backgroundColor: const Color(0XFFF07F20),
              child: Text('Upload',style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )
              ),),
              onPressed: (){}),
        ),
      ),
    );
  }
}
