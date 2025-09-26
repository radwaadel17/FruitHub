import 'package:app/Features/auth/data/data%20sources/remote_data_source.dart';
import 'package:app/Features/auth/data/repos/repos_imp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<RemoteDataSourceImp>(RemoteDataSourceImp(FirebaseAuth.instance));
  getIt.registerSingleton<AuthRepoImp>(AuthRepoImp(getIt<RemoteDataSourceImp>()));

}