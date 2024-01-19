import 'package:flutter/material.dart';

class Beneficiary {
  final String id;
  String name;
  int number; // Added the "number" field

  Beneficiary({required this.id, required this.name, required this.number});
}

class BeneficiaryList {
  List<Beneficiary> beneficiaries = [];

  void addBeneficiary(Beneficiary beneficiary) {
    beneficiaries.add(beneficiary);
  }

  void updateBeneficiary(String id, String newName, int newNumber) {
    int beneficiaryIndex = beneficiaries.indexWhere((b) => b.id == id);

    if (beneficiaryIndex != -1) {
      beneficiaries[beneficiaryIndex].name = newName;
      beneficiaries[beneficiaryIndex].number = newNumber;
    }
  }

  void deleteBeneficiary(String id) {
    beneficiaries.removeWhere((b) => b.id == id);
  }
}

class BeneficiaryScreen extends StatefulWidget {
  @override
  _BeneficiaryScreenState createState() => _BeneficiaryScreenState();
}

class _BeneficiaryScreenState extends State<BeneficiaryScreen> {
  final BeneficiaryList beneficiaryList = BeneficiaryList();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF343A48),
        title: Text('Beneficiary Management'),
      ),
      body: ListView.builder(
        itemCount: beneficiaryList.beneficiaries.length,
        itemBuilder: (context, index) {
          Beneficiary beneficiary = beneficiaryList.beneficiaries[index];
          return ListTile(
            title: Text(beneficiary.name),
            subtitle:
                Text('Number: ${beneficiary.number}'), // Displaying the number
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    _showUpdateDialog(beneficiary);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    beneficiaryList.deleteBeneficiary(beneficiary.id);
                    setState(() {});
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF343A48),
        onPressed: () {
          _showAddDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add Beneficiary'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: 16.0, horizontal: 24.0), // Adjust the vertical padding
        content: Column(
          mainAxisSize: MainAxisSize
              .min, // Use MainAxisSize.min to make the AlertDialog only take up as much space as needed
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _numberController,
              decoration: InputDecoration(
                labelText: 'Number',
                hintText: 'Enter number',
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF343A48),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF343A48),
            ),
            onPressed: () {
              String name = _nameController.text.trim();
              String number = _numberController.text.trim();
              if (name.isNotEmpty && number.isNotEmpty) {
                Beneficiary newBeneficiary = Beneficiary(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  name: name,
                  number: int.parse(number),
                );
                setState(() {
                  beneficiaryList.addBeneficiary(newBeneficiary);
                });
                Navigator.pop(context);
              }
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  void _showUpdateDialog(Beneficiary beneficiary) {
    _nameController.text = beneficiary.name;
    _numberController.text = beneficiary.number.toString();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Update Beneficiary'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: 16.0, horizontal: 24.0), // Adjust the vertical padding
        content: Column(
          mainAxisSize: MainAxisSize
              .min, // Use MainAxisSize.min to make the AlertDialog only take up as much space as needed
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter name',
              ),
            ),
            SizedBox(height: 25.0),
            TextField(
              controller: _numberController,
              decoration: InputDecoration(
                labelText: 'Number',
                hintText: 'Enter number',
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Color(0xFF343A48),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
                //foregroundColor: Color(0xFF343A48),
                backgroundColor: Color(0xFF343A48)),
            onPressed: () {
              String newName = _nameController.text.trim();
              String newNumber = _numberController.text.trim();
              if (newName.isNotEmpty && newNumber.isNotEmpty) {
                setState(() {
                  beneficiaryList.updateBeneficiary(
                    beneficiary.id,
                    newName,
                    int.parse(newNumber),
                  );
                });
                Navigator.pop(context);
              }
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }
}
