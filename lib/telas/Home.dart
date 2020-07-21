import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _turnSaldo(){

    if (_status == true){
      setState(() {
        _corDefault = Colors.grey;
        _displaySaldo = "--,--";
      });
      _status = false;
    } else{
      setState(() {
        _corDefault = Colors.yellow;
        _displaySaldo = _saldo;
      });
      _status = true;
    }
  }


  var _corDefault = Colors.yellow;
  var _saldo = "10,00";
  var _displaySaldo = "10,00";
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        shadowColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child:
              Row(
                children: [
                  Image.asset(
                    'assets/images/logoBB.png',
                    width: 40,
                  ),
                  Text(
                      'Oi, José',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  )
                ],
              ),
            ),
            Container(
              width: 110,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person_outline, color: Colors.deepPurpleAccent, size: 36),
                  Icon(Icons.chat_bubble_outline, color: Colors.deepPurpleAccent, size: 36,)
                ],
              ),
            )
          ],
          )
        ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.yellowAccent
                ),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  child: Image.asset('assets/images/perfil.png'),
                )
            ),

            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(127, 63, 191, 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
              ),
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 128, right: 128),
                    child: 
                      Column(
                        children: [
                          Text(
                            "Você tem:",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "R\$",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                _displaySaldo,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              GestureDetector(
                                onTap: _turnSaldo,
                                child: Icon(Icons.remove_red_eye, color: _corDefault)
                              )
                            ],
                          ),
                        ],
                      )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 64, right: 64),
                    child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            onPressed: (){

                            },
                            child: Row(

                              children: [
                                Icon(Icons.arrow_downward, color: Colors.white,),
                                Column(
                                  children: [
                                    Text('Colocar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                    Text(' dinheiro', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal))
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.only(left: 5, right: 60, top: 8, bottom: 8),
                            color: Color.fromRGBO(102, 51, 153, 1),

                          ),
                          RaisedButton(
                            onPressed: (){

                            },
                            child: Row(
                              children: [
                                Icon(Icons.arrow_upward, color: Colors.white,),
                                Column(
                                  children: [
                                    Text('Retirar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                    Text('  dinheiro', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal))
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.only(left: 5, right: 60, top: 8, bottom: 8),
                            color: Color.fromRGBO(102, 51, 153, 1),
                          ),
                        ],
                      )
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 50,)
                ],
              ),
            )
          ],
        )
      ),

      bottomNavigationBar: BottomAppBar(
        // receber / transferir / pagar / promoções / mais
        child: Container(
          padding: EdgeInsets.only(bottom: 12, top: 12),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.arrow_downward, size: 40, color: Colors.purple,),
              Icon(Icons.arrow_upward, size: 40, color: Colors.purple),
              Icon(Icons.attach_money, size: 40, color: Colors.purple),
              Icon(Icons.account_balance, size: 40, color: Colors.purple,),
              Icon(Icons.more_horiz, size: 40, color: Colors.purple,)
            ]
          ),
        )
      ),
    );
  }
}
