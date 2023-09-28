import 'package:flutter/material.dart';

class ShowTimeDialog extends StatefulWidget {
  const ShowTimeDialog({super.key});

  @override
  State<ShowTimeDialog> createState() => _ShowTimeDialogState();
}

class _ShowTimeDialogState extends State<ShowTimeDialog> {

  
  List<String> times = ["9:00 AM", "1:00 PM", "5:00 PM", "8:00 PM"];
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: const Text('Select a Time'),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.builder(
          itemCount: times.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(times[index]),
              onTap: () {
                Navigator.of(context).pop(times[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
  
