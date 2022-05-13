class CheckBoxState {
  final String title;
  final String? subTitle1;
  final String? subTitle2;
  final String? subTitle3;
  bool? isChecked;

  CheckBoxState({
    required this.title,
    this.subTitle1 = "",
    this.subTitle2 = "",
    this.subTitle3 = "",
    this.isChecked = false,
  });
}
