import 'package:flutter/material.dart';

class MyAppointmentForm extends StatefulWidget {
  const MyAppointmentForm({Key? key}) : super(key: key);

  @override
  _MyAppointmentFormState createState() => _MyAppointmentFormState();
}

class _MyAppointmentFormState extends State<MyAppointmentForm> {
  final List<DateTime> _busyDates = [
    DateTime.utc(2023, 3, 15),
    DateTime.utc(2023, 3, 16),
    DateTime.utc(2023, 3, 17),
  ];
  DateTime? _appointmentDate;
  final _formKey = GlobalKey<FormState>();
  final _mobileNumberController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _messageController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null &&
        picked != _appointmentDate &&
        !_busyDates.contains(picked)) {
      setState(() {
        _appointmentDate = picked;
      });
    } else if (picked != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('This date is not available'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  String _formattedDate(DateTime? date) {
    return date != null ? '${date.day}/${date.month}/${date.year}' : '';
  }

  Widget _buildDateField() {
    return TextFormField(
      readOnly: true,
      onTap: () => _selectDate(context),
      decoration: InputDecoration(
        labelText: 'Select Appointment Day',
        border: OutlineInputBorder(),
      ),
      controller: TextEditingController(text: _formattedDate(_appointmentDate)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a date';
        }
        return null;
      },
    );
  }

  Widget _buildOtherField() {
    return Column(
      children: [
        SizedBox(height: 30),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Enter Mobile Number',
            labelText: 'Mobile Number',
            prefixIcon: Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(9)),
            ),
          ),
          controller: _mobileNumberController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your mobile number';
            }
            return null;
          },
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Enter your Name',
            labelText: 'Full Name',
            prefixIcon: Icon(
              Icons.person_2_outlined,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(9)),
            ),
          ),
          controller: _fullNameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your full name';
            }
            return null;
          },
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Enter Your Message',
            labelText: 'Message',
            prefixIcon: Icon(
              Icons.chat,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(9)),
            ),
          ),
          controller: _messageController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your message';
            }
            return null;
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointment Form'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/med/med6pic.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildDateField(),
                _buildOtherField(),
                SizedBox(height: 30,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Add the appointment to the cart
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Appointment added to cart'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  },
                  child: Text("Book Appointment"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
