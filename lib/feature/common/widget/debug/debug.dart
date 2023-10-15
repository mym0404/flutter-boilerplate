import '../../../../export.dart';

class Debug extends StatelessWidget {
  const Debug({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.yellow,
        ),
      ),
      child: child,
    );
  }
}
