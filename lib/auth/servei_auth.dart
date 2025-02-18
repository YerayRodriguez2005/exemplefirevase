import 'package:firebase_auth/firebase_auth.dart';

class ServeiAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
//Hacer registros
  Future<UserCredential> registroconmailycontarena(String email, String password) async {
   try {
     UserCredential credencialUsuario = await _auth.createUserWithEmailAndPassword(
       email: email,
       password: password
     );
     return credencialUsuario;
   }on FirebaseAuthException catch (e) {
    throw Exception(e.code);
   }
  }
}