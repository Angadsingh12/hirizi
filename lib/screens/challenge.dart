import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter_polls/flutter_polls.dart';
import 'package:hiriizi/components/widgets.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  final String _errorImage = "https://i.ytimg.com/vi/z8wrRRR7_qU/maxresdefault.jpg";
  final String _url1 =
      "https://www.espn.in/football/soccer-transfers/story/4163866/transfer-talk-lionel-messi-tells-barcelona-hes-more-likely-to-leave-then-stay";

  String description =
      'This challenge will help uou learn about fignma desgin. This challenge will help uou learn about'; // will be taken from the TexteditingController
  String mentorName = 'Jyoti';
  String designation = 'Mentor';
  int numberOfParticipants = 103;
  int dayCount = 1;
  Color nonSelectedColour = const Color(0XFFE9E9E9);

  @override
  void initState() {
    super.initState();
    _getMetadata(_url1);
  }

  void _getMetadata(String url) async {
    bool _isValid = _getUrlValid(url);
    if (_isValid) {
      Metadata? _metadata = await AnyLinkPreview.getMetadata(
        link: url,
        cache: const Duration(days: 7),
        proxyUrl: "https://cors-anywhere.herokuapp.com/", // Needed for web app
      );
      debugPrint("URL1 => ${_metadata?.title}");
      debugPrint(_metadata?.desc);
    } else {
      debugPrint("URL is not valid");
    }
  }

  bool _getUrlValid(String url) {
    bool _isUrlValid = AnyLinkPreview.isValidLink(
      url,
      protocols: ['http', 'https'],
      hostWhitelist: ['https://youtube.com/'],
      hostBlacklist: ['https://facebook.com/'],
    );
    return _isUrlValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: const Icon(CupertinoIcons.back),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            '3 Day Figma design Learn Challenge',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 21,
                  top: 21,
                  right: 21,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF07F20),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/profilepic1.jpg'),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 9.0,
                              ),
                              child: Text(
                                '$mentorName' + ' [$designation]',
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0, right: 24),
                          child: Text(
                            '$description' + ' ...',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0, top: 15),
                          child: Row(
                            children: [
                              const Stack(
                                children: [
                                  Positioned(
                                    left: 70,
                                    child: participants(
                                      imageUrl: 'images/user1.jpg',
                                    ),
                                  ),
                                  Positioned(
                                    left: 35,
                                    child: participants(
                                      imageUrl: 'images/user2.jpg',
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    child: participants(
                                      imageUrl: 'images/user3.jpg',
                                    ),
                                  ),
                                  participants(
                                    imageUrl: 'images/user4.jpg',
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '$numberOfParticipants ' + 'participants',
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, top: 14),
                child: Text(
                  'Action Plan',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: GestureDetector(
                        child: DayButton(
                          dayCount: dayCount,
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
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: GestureDetector(
                        child: DayButton(
                          dayCount: 3,
                          selectedColor: nonSelectedColour,
                          borderColor: false,
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: GestureDetector(
                        child: DayButton(
                          dayCount: 4,
                          selectedColor: nonSelectedColour,
                          borderColor: false,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21, top: 21, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/profilepic1.jpg'),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Practice this Design',
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Text(
                            'Practrince this design (yoiutube link) Living The This challenge will help uou learn about fignma ou learn..',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  color: Color(0XFF6C6C6C),
                                  fontSize: 10.5,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Text(
                                'Required Time - ',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFF686868),
                                  ),
                                ),
                              ),
                              const Text(
                                '02:03 hr',
                                style: TextStyle(color: Color(0XFFFF7C7C)),
                              )
                            ],
                          ),
                        ),
                        Text(_url1,style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 8.75,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF6D8CDD)
                          )
                        ),),
                        AnyLinkPreview(
                          link: _url1,
                          displayDirection: UIDirection.uiDirectionHorizontal,
                          showMultimedia: true,
                          bodyMaxLines: 5,
                          bodyTextOverflow: TextOverflow.ellipsis,
                          titleStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        FlutterPolls(pollId: '1', onVoted: (PollOption pollOption, int newTotalVotes) async {
                          /// Simulate HTTP request
                          await Future.delayed(const Duration(seconds: 1));

                          /// If HTTP status is success, return true else false
                          return true;
                        }, pollTitle: const Text(''), pollOptions: <PollOption>[

                          PollOption(id: '1', title: const Text('Doing'), votes: 2,),
                          PollOption(id: '2', title: const Text('Done'), votes: 5),
                        ],
                            votedProgressColor:const Color(0XFF59EA26),
                            voteInProgressColor: Colors.blueAccent, leadingVotedProgessColor: const Color(0XFFDDF545),



                         ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class participants extends StatelessWidget {
  final String imageUrl;
  const participants({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 22,
      child: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
