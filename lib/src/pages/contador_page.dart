
import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

@override
 createState() => _ContadorPageState();


}

class _ContadorPageState extends State<ContadorPage> {

  final  _estiloTexto = new TextStyle( fontSize : 25);
  int _conteo = 0;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps:', style : _estiloTexto ),
            Text('$_conteo', style: _estiloTexto),
          ],
        )
        ),
        floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reiniciar),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _sumar),
        SizedBox(width: 5.0),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _restar )
      ],
    );
       
  }

      void _sumar(){
      _conteo++;
      setState(() {
        
      });
    }

      void _restar(){
      _conteo --;
      setState(() {
        
      });
    }

      void _reiniciar(){
        _conteo = 0;
        setState(() {
        
      });
    }


}