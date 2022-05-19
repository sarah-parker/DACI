class ButtonData {
  final String label;
  final void Function() goToRoute;
  final int? index;

  ButtonData({required this.label, required this.goToRoute, this.index});
}
