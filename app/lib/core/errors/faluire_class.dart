import 'package:firebase_auth/firebase_auth.dart';

abstract class Faluire{
   final String message;
   Faluire(this.message);

}
 class ServerFaluire extends Faluire{
  ServerFaluire(super.message);

  factory ServerFaluire.fromFirebaseException(FirebaseException e){

    switch (e.code){
      case 'weak-password':
        return ServerFaluire('الرقم السري ضعيف جدا');
      case 'email-already-in-use':
        return ServerFaluire('هذا البريد الإلكتروني مستخدم مسبقاً');
      case 'invalid-email':
        return ServerFaluire('هذا البريد الإلكتروني غير صحيح');
      case 'wrong-password':
        return ServerFaluire('الرقم السري غير صحيح');
      case 'user-not-found':
        return ServerFaluire("لا يوجد مستخدم بهذا البريد الإلكتروني");
      case 'user-disabled':
        return ServerFaluire('تم تعطيل هذا المستخدم. يرجى الاتصال بالدعم للمساعدة.');
      case 'too-many-requests':
        return ServerFaluire('تم حظر الوصول مؤقتًا بسبب العديد من المحاولات غير الناجحة. يرجى المحاولة مرة أخرى لاحقًا.');
      case 'operation-not-allowed':
        return ServerFaluire('هذه العملية غير مسموح بها. يرجى الاتصال بالدعم للمساعدة.');
      default:
        return ServerFaluire('حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.');
    }
  }
 }