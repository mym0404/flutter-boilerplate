import '../../../../export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.s.homeTitle),
      ),
      body: Full(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Gap(12),
              Assets.images.logo.image(width: 128, height: 128),
              const Gap(48),
              Text(
                context.s.homeBody,
                textAlign: TextAlign.center,
                style: TS.labelLarge.medium,
              ),
              const Gap(24),
              FilledButton.tonal(
                onPressed: () {
                  context.go('/detail');
                },
                child: Text(context.s.homeNavigateDetailButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
