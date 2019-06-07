import 'package:flutter/material.dart';
import 'package:flutter_news/models/onboarding_page.dart';
import 'package:flutter_news/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<OnboardingPage> pages = List<OnboardingPage>();
  int _activePageIndex = 0;

  void initState() {
    _populatePages();
  }

  void _setSeen() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isSeen', true);
  }

  void _populatePages() {
    pages.add(OnboardingPage(
        'Welcome!',
        '1- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ',
        Icons.ac_unit,
        'assets/images/bg0.png'));
    pages.add(OnboardingPage(
        'Alarm!',
        '2- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ',
        Icons.alarm,
        'assets/images/bg1.png'));
    pages.add(OnboardingPage(
        'Print!',
        '3- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ',
        Icons.print,
        'assets/images/bg2.png'));
    pages.add(OnboardingPage(
        'Map!',
        '4- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ',
        Icons.map,
        'assets/images/bg3.png'));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _indicators = [];
    for (int i = 0; i < pages.length; i++) {
      _indicators.add(PageDot(
        isActive: i == _activePageIndex ? true : false,
      ));
    }
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                _activePageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(0, -120),
                        child: Icon(
                          pages[index].icon,
                          size: 150,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        pages[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: Text(
                          pages[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _indicators,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 48, left: 24, right: 24),
              child: Container(
                width: double.infinity,
                height: 48,
                child: RaisedButton(
                  color: Colors.red.shade900,
                  child: Text(
                    'Get STARTED',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          this._setSeen();
                          return HomeScreen();
                        })
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageDot extends StatelessWidget {
  final bool isActive;

  PageDot({this.isActive});

  @override
  Widget build(BuildContext context) {
    double size = isActive ? 16: 12;
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive == true ? Colors.red.shade900 : Colors.grey,
      ),
    );
  }
}
