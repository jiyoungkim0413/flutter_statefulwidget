import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  final Color color;

   HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key){
     print('Widget Contructor 실행!!');
   }

  @override
  _HomeScreenState createState() {
     print("createState 실행!!");
     return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    print('initState 실행!!');
    super.initState();

  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('didChangeDependencies 실행!');
    super.didChangeDependencies();

  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate 실행!');
    super.deactivate();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    print('dispose 실행!');
    super.dispose();
  }
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    print('didUpdateWidget 실행!');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context){
    print("build 실행!");

    //getsturedetect 로 위젯을 감싸면 탭이나 줌 이런 모션을 다 감지함.
    return GestureDetector(
      onTap: (){
        setState(() {
          number ++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
        child: Center(
          child:Text(number.toString()),
        )
      ),
    );
  }
}
