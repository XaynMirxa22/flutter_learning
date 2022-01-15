import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(width: 2.0, color: Colors.red),
          children: [
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      size: 40.0,
                    ),
                    Text("Camera")
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
