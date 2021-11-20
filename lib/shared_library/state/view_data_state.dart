enum ViewState { initial, loading, error, loaded }

class ViewData<T> {
  ViewState status;
  T? data;
  String message = "";

  ViewData._({
    required this.status,
    this.data,
    this.message = "",
  });

  factory ViewData.loaded({T? data}) {
    return ViewData._(status: ViewState.loaded, data: data);
  }

  factory ViewData.error({required String message}) {
    return ViewData._(status: ViewState.error, message: message);
  }

  factory ViewData.loading() {
    return ViewData._(status: ViewState.loading);
  }

  factory ViewData.initial() {
    return ViewData._(status: ViewState.initial);
  }
}
