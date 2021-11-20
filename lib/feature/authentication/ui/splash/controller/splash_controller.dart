import 'package:dalang_mobile/domain/authentication/domain/entities/result_token.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/get_refresh_token_usecase.dart';
import 'package:dalang_mobile/domain/authentication/domain/usecases/get_token_usecase.dart';
import 'package:dalang_mobile/shared_library/failure/failure.dart';
import 'package:dalang_mobile/shared_library/state/view_data_state.dart';
import 'package:dalang_mobile/shared_library/use_case/use_case.dart';
import 'package:dalang_mobile/shared_library/utils/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  late GetTokenUseCase _getTokenUseCase;
  late GetRefreshTokenUseCase _getRefreshTokenUseCase;

  SplashController({
    required GetTokenUseCase getTokenUseCase,
    required GetRefreshTokenUseCase getRefreshTokenUseCase,
  }) {
    _getTokenUseCase = getTokenUseCase;
    _getRefreshTokenUseCase = getRefreshTokenUseCase;
  }

  final Rx<ViewData<ResultToken>> viewState = Rx(ViewData.initial());

  Future<void> getToken() async {
    viewState.value = ViewData.loading();
    update();
    final Either<Failure, ResultToken> result = await _getTokenUseCase.call(
      NoParams(),
    );
    result.fold((Failure failure) {
      Get.toNamed(Constants.smRoute.onBoarding);
    }, (ResultToken resultToken) {
      _getRefreshToken(resultToken.token);
    });
  }

  Future<void> _getRefreshToken(String token) async {
    final Either<Failure, ResultToken> result =
        await _getRefreshTokenUseCase.call(
      RefreshTokenParams(token: token),
    );
    result.fold((Failure failure) {
      viewState.value = ViewData.error(message: failure.message);
      update();
    }, (ResultToken resultToken) {
      /// TODO Navigate to Homepage.
    });
  }

  void toOnBoarding() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAndToNamed(Constants.smRoute.onBoarding);
    });
  }
}
