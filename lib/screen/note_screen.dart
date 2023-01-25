import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_pad_flutter/screen/note_editor.dart';
import 'package:note_pad_flutter/screen/note_reader.dart';
import 'package:note_pad_flutter/style/app_style.dart';
import 'package:note_pad_flutter/widget/note_cart.dart';

import '../widget/menu.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Notes"),
        centerTitle: true,
        backgroundColor: AppStyle.mainColor,
      ),
      drawer: NavDrware(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your recent Notes",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection("notes").snapshots(),
                builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData){
                    // return Text("data",style: TextStyle(
                    //     color: Colors.white
                    // ),);
                    return Expanded(
                      child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2
                          ),
                        padding: EdgeInsets.all(8.0),
                        children: snapshot.data!.docs
                            .map((note) => noteCard(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NoteReaderScreen(note),
                                  )
                              );
                        }, note))
                        .toList(),
                      ),
                    );
                  }
                  return Text("there's no notes",
                  style: TextStyle(
                    color: Colors.white
                  ),
                  );

                }
              ),
            )
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppStyle.accentColor,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NoteEditorScreen(),));
          },
          label: Text("Add Note"),
        icon: Icon(Icons.add),
      ),
    );
  }
}

