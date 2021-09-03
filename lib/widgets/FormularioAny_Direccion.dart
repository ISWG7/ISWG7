import 'package:flutter/material.dart';
import 'package:tp_isw/entities/PedidoAnyEntity.dart';
import 'package:tp_isw/widgets/ComboCiudad.dart';

class FormularioAnythingDireccion extends StatefulWidget {
  PedidoAnyEntity entityModel;
  GlobalKey<FormState> formkey;

  String ciudad = "Cordoba";
  final TextEditingController _referenciaController = TextEditingController();
  final TextEditingController _calleController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();

  FormularioAnythingDireccion(
      {required this.entityModel, required this.formkey});

  @override
  _FormularioAnythingDireccionState createState() => _FormularioAnythingDireccionState();
}

class _FormularioAnythingDireccionState extends State<FormularioAnythingDireccion> {

  @override
  Widget build(BuildContext context) {

    Widget referencia = TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: 3,
      controller: widget._referenciaController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Casa de 2 pisos roja',
          labelText: 'Referencia - Opcional'),
    );

    Widget calle = TextFormField(
      keyboardType: TextInputType.streetAddress,
      controller: widget._calleController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Av. 19 de Abril',
          labelText: 'Calle * '),
    );

    Widget numero = TextFormField(
      keyboardType: TextInputType.number,
      controller: widget._numeroController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '505',
          labelText: 'Numeración *'),
    );

    final CiudadCombo ciudadCombo =
        CiudadCombo(onChange: (newvalue) => this.setState(() {
          widget.ciudad = newvalue;
        }), dropdownValue: widget.ciudad ,);

    final Form form = Form(
      autovalidateMode: AutovalidateMode.disabled,
      key: widget.formkey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ciudadCombo,
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: calle,
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: numero,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: referencia,
          )
        ],
      ),
    );

    return form;
  }
}
