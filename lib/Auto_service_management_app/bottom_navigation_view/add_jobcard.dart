import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['Ford', 'Tata', 'Mahindra', 'Hyundai', 'Suzuki'];
void main() => runApp(const AddJob());

class AddJob extends StatelessWidget {
  const AddJob({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(

          backgroundColor: Color(0xFF00B6F0),
          title: const Text(
            'Add Job Card',
            style: TextStyle(
              fontFamily:
              AppTheme.fontName,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: -0.1,
              color: AppTheme.white
            ),
          ),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Padding(
                padding: const EdgeInsets.only(left:4, right: 0, top: 10, bottom: 0),
                child: Text(
                    'Vehicle Number',
                    style: TextStyle(
                      fontFamily:
                      AppTheme.fontName,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      letterSpacing: -0.1,
                      color: AppTheme.dark_grey,
                  ),
                ),
              )
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left:4, right: 0, top: 20, bottom: 10),
            child: Text(
              'Vehicle Model',
              style: TextStyle(
                fontFamily:
                AppTheme.fontName,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                letterSpacing: -0.1,
                color: AppTheme.dark_grey,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(
                 children: [
                   DropdownButtonExample(),
                 ],
              ),
              VerticalDivider(width: 60.0),
              Column(
                children: [
                  DropdownButtonExample(),
                ],
              ),
              VerticalDivider(width: 60.0),
              Column(
                children: [
                  DropdownButtonExample(),
                ],
              ),

            ],
          ),
          Container(
              child: Padding(
                padding: const EdgeInsets.only(left:4, right: 0, top: 10, bottom: 0),
                child: Text(
                  'Customer Full Name',
                  style: TextStyle(
                    fontFamily:
                    AppTheme.fontName,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    letterSpacing: -0.1,
                    color: AppTheme.dark_grey,
                  ),
                ),
              )
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
              child: Padding(
                padding: const EdgeInsets.only(left:4, right: 0, top: 10, bottom: 0),
                child: Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontFamily:
                    AppTheme.fontName,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    letterSpacing: -0.1,
                    color: AppTheme.dark_grey,
                  ),
                ),
              )
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),




          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF00B6F0)),

              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },

              child: Center(child: const Text('Create Job Card')),
            ),
          ),
        ],
      ),
    );
  }
}
class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}
class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_outlined),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
