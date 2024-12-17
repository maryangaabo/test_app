import 'package:flutter/material.dart';
import 'package:tets3/screens/addcart.dart';
import 'package:tets3/screens/concaguratoin.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String? selectedCard = 'EVC Plus'; // Default selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xfffd0fbf8),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Register',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 240, 250),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: const Color(0xFFE0F7FA),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Enter your Email:',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Enter your Password:',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                ),
                child: DropdownButtonFormField<String>(
                  value: selectedCard,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'EVC Plus',
                      child: Row(
                        children: [
                          Icon(Icons.credit_card, color: Colors.green),
                          SizedBox(width: 10),
                          Text('EVC Plus'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Master Card',
                      child: Row(
                        children: [
                          Icon(Icons.credit_card, color: Colors.blue),
                          SizedBox(width: 10),
                          Text('Master Card'),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedCard = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              if (selectedCard == 'EVC Plus')
                TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Enter your Phone Number (+252):',
                    prefixText: '+252 ',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddCardPage()));
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  'ADD NEW',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 2,
                  backgroundColor: const Color(0Xfff6b3e0),
                  foregroundColor: Colors.black,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(double.infinity, 45),
                ),
              ),
              const SizedBox(height: 160),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Concaguratoin()));
                },
                child: const Text(
                  'Register \$3',
                  style: TextStyle(fontSize: 23),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 2,
                  backgroundColor: const Color(0Xfff6b3e0),
                  foregroundColor: Colors.black,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(double.infinity, 45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
