import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/progress.dart';

final userRef = FirebaseFirestore.instance.collection('user');

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  void initState() {
    getUser();
    //getUserById();
    super.initState();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: header(context, isAppTitle: true, titleText: 'ChuksShare'),
      body: circularProgress(),
    );
  }
}

void getUserById() async {
  final String id = 'KMLi4MhcZDy03jPbPEzB';
  final DocumentSnapshot doc = await userRef.doc(id).get();
  print(
    doc.id,
  );
  print(doc.data());
  print(doc.exists);
  //   .then((DocumentSnapshot doc) {
  // print(
  //   doc.id,
  // );
  // print(doc.data());
  // print(doc.exists);
  // });
}

getUser() async {
  final QuerySnapshot snapshot =
      await userRef.where('isAdmin', isEqualTo: true).get();
  // userRef.get().then((QuerySnapshot snapshot) {
  //   snapshot.docs.forEach((DocumentSnapshot docu) {
  //     //print(docu.data());
  //   });
  // });
}
