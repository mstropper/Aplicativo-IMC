import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _pesoController = TextEditingController();
  TextEditingController _alturaController = TextEditingController();
  TextEditingController _idadeController = TextEditingController();
  TextEditingController _sexoController = TextEditingController();

  String _result;

  @override
  void initState() {
    super.initState();
    resetFields();
  }

  void resetFields() {
    _pesoController.text = '';
    _alturaController.text = '';
    _idadeController.text = '';
    _sexoController.text = '';
    setState(() {
      _result = 'Informe seus dados';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0), child: buildForm()));
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Calculadora de IMC'),
      backgroundColor: Colors.orange[400],
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            resetFields();
          },
        )
      ],
    );
  }

  Form buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildTextFormField(
              label: "Peso (kg)",
              error: "Insira seu peso!",
              controller: _pesoController),
          buildTextFormField(
              label: "Altura (cm)",
              error: "Insira uma altura!",
              controller: _alturaController),
          Text(
            "Informe a idade",
            style: TextStyle(fontSize: 15),
          ),
          idade(),
          Text(
            "Informe o sexo",
            style: TextStyle(fontSize: 15),
          ),
          sexo(),
          buildTextResult(),
          buildCalculateButton(),
        ],
      ),
    );
  }

  void calculateImc() {
    double weight = double.parse(_pesoController.text);
    double height = double.parse(_alturaController.text) / 100.0;
    double imc = weight / (height * height);

    setState(() {
      _result = "IMC = ${imc.toStringAsPrecision(2)}\n";

      if (camposexo == 'Meninos' && campoidade == '6') {
        if (imc < 14.5)
          _result += "ABAIXO DO PESO";
        else if (imc >= 14.5 && imc <= 16.6)
          _result += "NORMAL";
        else if (imc > 16.6 && imc <= 18.0)
          _result += "SOBREPESO";
        else if (imc > 18.0) _result += "OBESIDADE";
      }

      if (camposexo == 'Meninos' && campoidade == '7') {
        if (imc < 15.0)
          _result += "ABAIXO DO PESO";
        else if (imc >= 15.0 && imc <= 17.3)
          _result += "NORMAL";
        else if (imc > 17.3 && imc <= 19.1)
          _result += "SOBREPESO";
        else if (imc > 19.1) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninos' && campoidade == '8') {
        if (imc < 15.6)
          _result += "ABAIXO DO PESO";
        else if (imc >= 15.6 && imc <= 16.7)
          _result += "NORMAL";
        else if (imc > 16.7 && imc <= 20.3)
          _result += "SOBREPESO";
        else if (imc > 20.3) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninos' && campoidade == '9') {
        if (imc < 16.1)
          _result += "ABAIXO DO PESO";
        else if (imc >= 16.1 && imc <= 18.8)
          _result += "NORMAL";
        else if (imc > 18.8 && imc <= 21.4)
          _result += "SOBREPESO";
        else if (imc > 21.4) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninos' && campoidade == '10') {
        if (imc < 16.7)
          _result += "ABAIXO DO PESO";
        else if (imc >= 16.7 && imc <= 19.6)
          _result += "NORMAL";
        else if (imc > 19.6 && imc <= 22.5)
          _result += "SOBREPESO";
        else if (imc > 22.5) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninos' && campoidade == '11') {
        if (imc < 17.2)
          _result += "ABAIXO DO PESO";
        else if (imc >= 17.2 && imc <= 20.3)
          _result += "NORMAL";
        else if (imc > 20.3 && imc <= 23.7)
          _result += "SOBREPESO";
        else if (imc > 23.7) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninos' && campoidade == '12') {
        if (imc < 17.8)
          _result += "ABAIXO DO PESO";
        else if (imc >= 17.8 && imc <= 21.1)
          _result += "NORMAL";
        else if (imc > 21.1 && imc <= 24.8)
          _result += "SOBREPESO";
        else if (imc > 24.8) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninos' && campoidade == '13') {
        if (imc < 18.5)
          _result += "ABAIXO DO PESO";
        else if (imc >= 18.5 && imc <= 21.9)
          _result += "NORMAL";
        else if (imc > 21.9 && imc <= 25.9)
          _result += "SOBREPESO";
        else if (imc > 25.9) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninos' && campoidade == '14') {
        if (imc < 19.2)
          _result += "ABAIXO DO PESO";
        else if (imc >= 19.2 && imc <= 22.7)
          _result += "NORMAL";
        else if (imc > 22.7 && imc <= 26.9)
          _result += "SOBREPESO";
        else if (imc > 26.9) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninos' && campoidade == '15') {
        if (imc < 19.9)
          _result += "ABAIXO DO PESO";
        else if (imc >= 19.9 && imc <= 23.6)
          _result += "NORMAL";
        else if (imc > 23.6 && imc <= 27.7)
          _result += "SOBREPESO";
        else if (imc > 27.7) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '6') {
        if (imc < 14.3)
          _result += "ABAIXO DO PESO";
        else if (imc >= 14.3 && imc <= 16.1)
          _result += "NORMAL";
        else if (imc > 16.1 && imc <= 17.4)
          _result += "SOBREPESO";
        else if (imc > 17.4) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '7') {
        if (imc < 14.9)
          _result += "ABAIXO DO PESO";
        else if (imc >= 14.9 && imc <= 17.1)
          _result += "NORMAL";
        else if (imc > 17.1 && imc <= 18.9)
          _result += "SOBREPESO";
        else if (imc > 18.9) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '8') {
        if (imc < 15.6)
          _result += "ABAIXO DO PESO";
        else if (imc >= 15.6 && imc <= 18.1)
          _result += "NORMAL";
        else if (imc > 18.1 && imc <= 20.3)
          _result += "SOBREPESO";
        else if (imc > 20.3) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '9') {
        if (imc < 16.3)
          _result += "ABAIXO DO PESO";
        else if (imc >= 16.3 && imc <= 19.1)
          _result += "NORMAL";
        else if (imc > 19.1 && imc <= 21.7)
          _result += "SOBREPESO";
        else if (imc > 21.73) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '10') {
        if (imc < 17)
          _result += "ABAIXO DO PESO";
        else if (imc >= 17 && imc <= 20.1)
          _result += "NORMAL";
        else if (imc > 20.1 && imc <= 23.2)
          _result += "SOBREPESO";
        else if (imc > 23.2) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '11') {
        if (imc < 17.6)
          _result += "ABAIXO DO PESO";
        else if (imc >= 17.6 && imc <= 21.1)
          _result += "NORMAL";
        else if (imc > 21.1 && imc <= 24.5)
          _result += "SOBREPESO";
        else if (imc > 24.5) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '12') {
        if (imc < 18.3)
          _result += "ABAIXO DO PESO";
        else if (imc >= 18.3 && imc <= 22.1)
          _result += "NORMAL";
        else if (imc > 22.1 && imc <= 25.9)
          _result += "SOBREPESO";
        else if (imc > 25.9) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '13') {
        if (imc < 18.9)
          _result += "ABAIXO DO PESO";
        else if (imc >= 18.9 && imc <= 23)
          _result += "NORMAL";
        else if (imc > 23 && imc <= 27.7)
          _result += "SOBREPESO";
        else if (imc > 27.7) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '14') {
        if (imc < 19.3)
          _result += "ABAIXO DO PESO";
        else if (imc >= 19.3 && imc <= 23.8)
          _result += "NORMAL";
        else if (imc > 23.8 && imc <= 27.9)
          _result += "SOBREPESO";
        else if (imc > 27.9) _result += "OBESIDADE";
      }
      if (camposexo == 'Meninas' && campoidade == '15') {
        if (imc < 19.6)
          _result += "ABAIXO DO PESO";
        else if (imc >= 19.6 && imc <= 24.2)
          _result += "NORMAL";
        else if (imc > 24.2 && imc <= 28.8)
          _result += "SOBREPESO";
        else if (imc > 28.8) _result += "OBESIDADE";
      }
    });
  }

////////////@Alex kubiaki dos santos -- Pandemia Mode On  --->  15/05/2021 as 00:19
////////////////////dropdown com escolha de sexo menino ou menina/////////////////
  String camposexo = 'Meninos';

  ///valor padrão que inicia

  Widget sexo() {
    return DropdownButton<String>(
      value: camposexo,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          camposexo = newValue; //ao setar o estado, adquire novo valor
        });
      },
      items: <String>['Meninos', 'Meninas'] //-->valores dentro do Dropdown
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
////////////////////fim do dropdown com escolha de sexo menino ou menina///////////

////////////////////dropdown com escolha de idade entre 6 e 15 anos////////////////
  String campoidade = '6';
  Widget idade() {
    return DropdownButton<String>(
      value: campoidade,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          campoidade = newValue;
        });
      },
      items: <String>['6', '7', '8', '9', '10', '11', '12', '13', '14', '15']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
////////////////////fim do dropdown com escolha de idade entre 6 e 15 anos/////////

  Widget buildCalculateButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 36.0),
      child: RaisedButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            calculateImc();
          }
        },
        child: Text('CALCULAR', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget buildTextResult() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 36.0),
      child: Text(
        _result,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildTextFormField(
      {TextEditingController controller, String error, String label}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: label),
      controller: controller,
      validator: (text) {
        return text.isEmpty ? error : null;
      },
    );
  }
}
