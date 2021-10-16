import 'package:flutter/material.dart';
import 'package:fluttrek/screens/brief_screen.dart';
import 'package:fluttrek/widgets/fluttrek_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'FlutTrek',
                style: TextStyle(
                  fontSize: 50,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.grey,
                    ),
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 8.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const Text(
                'The Skeptic Invasion',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/icons8-enterprise-ncc-1701-d-100.png'),
              const SizedBox(height: 16),
              Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff005555),
                    border:
                        Border.all(color: const Color(0xffaaaaaa), width: 1.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    child: Column(
                      children: [
                        const Text('U.S.S. Lexington'),
                        const Text('RCB-92'),
                        //#03abaa
                        Container(
                          height: 60,
                          width: 80,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xff0100a9),
                            border: Border.all(
                                color: const Color(0xff03abaa), width: 1.0),
                            borderRadius: const BorderRadius.all(
                              Radius.elliptical(80, 60),
                            ),
                          ),
                          child: Stack(
                            children: const [
                              Positioned(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                right: 15,
                                top: 10,
                              ),
                              Positioned(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 5,
                                ),
                                left: 8,
                                top: 25,
                              ),
                              Positioned(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 5,
                                ),
                                left: 15,
                                top: 35,
                              ),
                              Positioned(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 5,
                                ),
                                left: 25,
                                top: 43,
                              ),
                            ],
                          ),
                        ),
                        const Text('Dept. of Space'),
                      ],
                    ),
                  )),
              const SizedBox(height: 32),
              FluttrekButton(
                onPressed: () {},
                child: const Text(
                  'Begin mission',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FluttrekButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BriefScreen()),
                  );
                },
                child: const Text(
                  'Briefing / Tutorial',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
