import 'package:calculator_app/components/my_buuton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userinput = '';
  var answer ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal : 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: Text(userinput.toString(),style: const TextStyle(fontSize: 30,color: Colors.white),),
                      ),
                      Text(answer.toString(),style: const TextStyle(fontSize: 30,color: Colors.white),),

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Mybutton(title: 'AC',
                            onPress: (){
                          userinput = '';
                          answer='';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '+/-',
                            onPress: (){
                              userinput += '+/-';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '%',
                            onPress: (){
                              userinput += '%';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '/',
                          onPress: (){
                            userinput += '/';
                            setState(() {

                            },);
                          },color: const Color(0xffffa00a),),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(title: '7',
                            onPress: (){
                          userinput += '7';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '8',
                            onPress: (){
                              userinput += '8';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '9',
                            onPress: (){
                              userinput += '9';
                              setState(() {

                              });
                            }),
                        Mybutton(title: 'x',
                          onPress: (){
                            userinput += '*';
                            setState(() {

                            });
                          },color: const Color(0xffffa00a),),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(title: '4',
                            onPress: (){
                              userinput += '4';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '5',
                            onPress: (){
                              userinput += '5';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '6',
                            onPress: (){
                              userinput += '6';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '-',
                          onPress: (){
                            userinput += '-';
                            setState(() {

                            });
                          },color: const Color(0xffffa00a),),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(title: '1',
                            onPress: (){
                              userinput += '1';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '2',
                            onPress: (){
                              userinput += '2';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '3',
                            onPress: (){
                              userinput += '3';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '+',
                          onPress: (){
                            userinput += '+';
                            setState(() {

                            });
                          },color: const Color(0xffffa00a),),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(title: '0',
                            onPress: (){
                              userinput += '0';
                              setState(() {

                              });
                            }),
                        Mybutton(title: '.',
                            onPress: (){
                              userinput += '.';
                              setState(() {

                              });
                            }),
                        Mybutton(title: 'Del',
                            onPress: (){
                              userinput = userinput.substring(0,userinput.length-1);
                              setState(() {

                              });
                            }),
                        Mybutton(title: '=',
                          onPress: (){
                            equalpres();
                            setState(() {

                            });
                          },color: const Color(0xffffa00a),),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          )

        ));
  }


  void equalpres() {// Debugging line
      Parser p = Parser();
      Expression expression = p.parse(userinput);
      ContextModel contextModel = ContextModel();
      double eval = expression.evaluate(EvaluationType.REAL, contextModel); // Debugging line
      answer = eval.toString();
    }
  }







//
// class Mybutton extends StatelessWidget {
//   final String title;
//   const Mybutton({super.key,this.title = 'SignUp'});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 5),
//         child: Container(
//          height: 50,
//             width: 250,
//           decoration: BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.circular(50),
//           ),
//             child : Center(child: Text(title,style: kfontsize,))
//         ),
//       );
//   }
// }

