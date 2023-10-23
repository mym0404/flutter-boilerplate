import '../../export.dart';

class TS {
  TS._();

  static const displayLarge = TextStyle(
    fontSize: 56,
    height: 64 / 56,
    fontWeight: FontWeight.bold,
  );
  static const displayMedium = TextStyle(
    fontSize: 45,
    height: 52 / 45,
    fontWeight: FontWeight.bold,
  );
  static const displaySmall = TextStyle(
    fontSize: 36,
    height: 44 / 36,
    fontWeight: FontWeight.bold,
  );
  static const headLarge = TextStyle(
    fontSize: 32,
    height: 40 / 32,
    fontWeight: FontWeight.w500,
  );
  static const headMedium = TextStyle(
    fontSize: 28,
    height: 36 / 28,
    fontWeight: FontWeight.w500,
  );
  static const headSmall = TextStyle(
    fontSize: 24,
    height: 32 / 24,
    fontWeight: FontWeight.w500,
  );

  static const titleLarge = TextStyle(
    fontSize: 22,
    height: 28 / 22,
    fontWeight: FontWeight.w500,
  );
  static const titleMedium = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w500,
  );
  static const titleSmall = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
  );
  static const labelLarge = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
  );
  static const labelMedium = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w500,
  );
  static const labelSmall = TextStyle(
    fontSize: 11,
    height: 16 / 11,
    fontWeight: FontWeight.w500,
  );

  static const bodyLarge = TextStyle(
    fontSize: 16,
    height: 24 / 16,
  );
  static const bodyMedium = TextStyle(
    fontSize: 14,
    height: 20 / 14,
  );
  static const bodySmall = TextStyle(
    fontSize: 12,
    height: 16 / 12,
  );

  static const bold = TextStyle(fontWeight: FontWeight.bold);
}

extension TextStyleExtension on TextStyle {
  TextStyle c(Color c) => copyWith(color: c);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
}
