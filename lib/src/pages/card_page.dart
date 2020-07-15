import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
                  ],
                ),
              );
            }
          
          
          
          
            Widget _cardTipo1() {
          
              return Card(
                elevation: 10.0,// elevacion de la sombra
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon( Icons.photo_album, color: Colors.blue ),
                      title:Text("I'm a title"),
                      subtitle: Text('here is the description that want use for this card'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Cancelar'),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text('Cancelar'),
                          onPressed: () {},
                        ),
                      ]
                    )
                  ],
                ),
              );
          
            }
          
          Widget _cardTipo2() {
            final card = Container(
              // clipBehavior: Clip.antiAliasWithSaveLayer,// para que el contenido de la tarjeta no se salga
              child: Column(
                children: <Widget>[

                  FadeInImage(
                    image:  NetworkImage('https://cdn.pixabay.com/photo/2016/03/09/09/17/computer-1245714_960_720.jpg'),
                    placeholder: AssetImage('assets/jar-loading.gif'),
                    fadeInDuration: Duration( milliseconds: 200 ),
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),

                  // Image(
                  //   image: NetworkImage('https://cdn.pixabay.com/photo/2016/03/09/09/17/computer-1245714_960_720.jpg')
                  // ),
                  Container(
                    padding:EdgeInsets.all(10.0) ,
                    child: Text('Some text...')
                  )
                ],
              ),
            );

              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,// que tanto se expande
                      offset: Offset(2.0, 10.0), //posicion en el plano cartesiano
                    )
                  ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: card,
                ),
              );

          }

}