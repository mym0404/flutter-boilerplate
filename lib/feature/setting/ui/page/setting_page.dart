import '../../../../design/color/color_manager.dart';
import '../../../../export.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  void _toggleDarkTheme() {
    di<ColorManager>().toggleDarkMode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.s.settingTitle),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Dark Theme'),
            trailing: ValueListenableBuilder(
              valueListenable: di<ColorManager>(),
              builder: (context, value, _) {
                return Switch(
                  value: value.isDarkMode,
                  onChanged: (_) => _toggleDarkTheme(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
