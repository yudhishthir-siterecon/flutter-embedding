import 'package:flutter/material.dart';

class SidePanel extends StatefulWidget {
  const SidePanel({Key? key}) : super(key: key);

  @override
  State<SidePanel> createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.white, // Set your desired app bar background color here
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Snapshot",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Icon(Icons.close),
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Second Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Created Snapshots"),
                DropdownButton<String>(
                  value: 'Snapshot Studio', // Set your initial value here
                  onChanged: (String? newValue) {
                    // Handle dropdown value change
                  },
                  items: <String>['Snapshot Studio', 'Legacy Snapshots']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text("Snapshots card"),
            const Text("Snapshots card"),
            const Text("Snapshots card"),
            const Text("Snapshots card"),
          ],
        ),
      ),
    );
  }
}
