import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final _db = FirebaseFirestore.instance;

  Future<void> createDonation(Map<String, dynamic> data) async {
    await _db.collection('donations').add(data);
  }

  Stream<QuerySnapshot> getNGOs() {
    return _db.collection('users')
        .where('role', isEqualTo: 'NGO')
        .snapshots();
  }
}
