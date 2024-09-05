import 'package:flutter/material.dart';

class CollectionFormPage extends StatefulWidget {
  @override
  _CollectionFormPageState createState() => _CollectionFormPageState();
}

class _CollectionFormPageState extends State<CollectionFormPage> {
  DateTime? selectedDate;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        shadowColor: Colors.green,
        backgroundColor: Colors.green,
        title: Row(
          children: [
            ClipOval(
              child: Container(
                width: 40,
                child: Image.asset("assets/images/Muthalamman_image.jpg"),
              ),
            ),
            SizedBox(width: 10),
            Text(
              "Muthalamman Temple",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Collection Form",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildTextField(nameController, "Name"),
            buildTextField(surnameController, "Surname"),
            buildTextField(addressController, "Address of the Users"),
            buildTextField(mobileController, "Mobile"),
            buildTextField(amountController, "Amount"),
            buildDateField(),
            buildTextField(TextEditingController(), "Payments Method"),
            buildTextField(TextEditingController(), "Daft Mode"),
            SizedBox(height: 20),
            buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, String labelText) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 364,
        height: 57,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(74),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            controller: controller,
            // Add your validation logic here
            decoration: InputDecoration(
              hintText: labelText,
              hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDateField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () => _selectDate(context),
        child: Container(
          width: 364,
          height: 57,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(74),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                      : "Select Date",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.calendar_today),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Widget buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        onPressed: () {
          // Check if required fields are empty and show error messages
          List<String> errorMessages = [];
          if (nameController.text.isEmpty) {
            errorMessages.add("Name is required.");
          }
          if (surnameController.text.isEmpty) {
            errorMessages.add("Surname is required.");
          }
          if (addressController.text.isEmpty) {
            errorMessages.add("Address is required.");
          }
          if (mobileController.text.isEmpty) {
            errorMessages.add("Mobile is required.");
          }
          if (amountController.text.isEmpty) {
            errorMessages.add("Amount is required.");
          }

          if (errorMessages.isNotEmpty) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("alert message : These Fields are required "),
                  backgroundColor: Colors.green,
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: errorMessages.map((msg) {
                      return Text(msg);
                    }).toList(),
                  ),
                  actions: [
                    TextButton(
                      child: Text("OK"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          } else {
            // Submit the form
            // You can handle form submission here
          }
        },
        child: Container(
          width: 364,
          height: 71,
          child: Center(
            child: Text(
              "Submit",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xff42c73b),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.5),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: CollectionFormPage()));
}
