import 'export.dart';
import 'service/bootstrap/boot_strap.dart';
import 'service/di/singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSingletons();

  runApp(const BootStrap());
}
