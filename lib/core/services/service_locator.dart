import 'package:clean_arch_bookly_app/core/services/api_service.dart';
import 'package:clean_arch_bookly_app/core/services/hive_service.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote/home_remote_datasource.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote/home_remote_datasource_imp.dart';
import 'package:clean_arch_bookly_app/features/home/data/repositories/home_repository_imp.dart';
import 'package:clean_arch_bookly_app/features/home/domain/repositories/home_repository.dart';
import 'package:clean_arch_bookly_app/features/home/domain/usecases/get_books_usecase.dart';
import 'package:clean_arch_bookly_app/features/home/domain/usecases/get_newset_books_usecase.dart';
import 'package:clean_arch_bookly_app/features/home/domain/usecases/get_similar_usecase.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class ServiceLocator {
  Future<void> setupServiceLocator() async {
    // Dio instance
    getIt.registerLazySingleton<Dio>(
      () => Dio(),
    );

    //Api Service
    getIt.registerLazySingleton<ApiService>(
      () => ApiService(dio: getIt()),
    );

    //RemoteDataSource
    getIt.registerLazySingleton<HomeRemoteDatasource>(
      () => HomeRemoteDatasourceImp(
        apiService: getIt<ApiService>(),
        hiveService: getIt<HiveService>(),
      ),
    );

    //Repository
    getIt.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImp(
        homeRemoteDatasource: getIt<HomeRemoteDatasource>(),
      ),
    );

    //useCases
    getIt.registerLazySingleton<GetBooksUseCase>(
      () => GetBooksUseCase(
        homeRepository: getIt<HomeRepository>(),
      ),
    );
    getIt.registerLazySingleton<GetNewsetBooksUseCase>(
      () => GetNewsetBooksUseCase(
        homeRepository: getIt<HomeRepository>(),
      ),
    );
    getIt.registerLazySingleton<GetSimilarUsecase>(
      () => GetSimilarUsecase(
        homeRepository: getIt<HomeRepository>(),
      ),
    );

    //Bloc
    getIt.registerFactory<HomeBloc>(
      () => HomeBloc(
        getBooksUseCase: getIt<GetBooksUseCase>(),
        getNewsetBooksUseCase: getIt<GetNewsetBooksUseCase>(),
        getSimilarUsecase: getIt<GetSimilarUsecase>(),
      ),
    );

    //HiveService
    getIt.registerLazySingleton<HiveService>(
      () => HiveService(),
    );
  }
}
