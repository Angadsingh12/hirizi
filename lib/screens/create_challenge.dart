import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiriizi/components/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CreateChallenge extends StatefulWidget {
  const CreateChallenge({super.key});

  @override
  State<CreateChallenge> createState() => _CreateChallengeState();
}

class _CreateChallengeState extends State<CreateChallenge> {
  final challengeController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {},
        ),
        title: Text(
          'Create Challenge',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xff1C1B1F),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CachedNetworkImage(
                    imageUrl: "https://images.pexels.com/photos/3979134/pexels-photo-3979134.jpeg",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  // child: Image.network(
                  //     'https://s3-alpha-sig.figma.com/img/945f/ec4e/60c632e61c6f1797e267f08f4c22f025?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=aNJcRsNgGGuS6~D2G6uUQaSm7DBIgV7NZSgjytGV-o2xtgDa6Lj8MPb~azealTJhur0LDR~DNtFecKty7JiCXucm~t8hCXimpX04MXEz43iTTmzbMcpVXGAd1qJNXSGvTf2TFIv4~YMEKkLUzM2K4XF3~zx4OPiyRH0CPGjnPagK5EC8BK9QExV93YDwcdVhu9RDL6NFR-Tc-Dj2NGrGJZBeVEjGo3NNkgYF2fhtLxbGR2UgdNHZ2khv5~C3BH8vnAcatTgyojMNzJjLAJpoQKw9fsWgwe2mJnEnRrtyeJGGrllvAIPMCixNp0z2urmfqYapXDrH4KLCQKUuNQPcJg__'),
                ), // change it to network image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Challenge Name',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(
                      obscureText: false,
                      hintText: 'Ex:- Meditation',
                      controller: challengeController),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Challenge Description',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14)),
                  ),
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
                      controller: challengeController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintText: 'Enter Task Description',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFFBDBDBD)),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: FloatingActionButton(
              backgroundColor: const Color(0XFFF07F20),
              child: Text(
                'Upload',
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                )),
              ),
              onPressed: () {}),
        ),
      ),
    );
  }
}
