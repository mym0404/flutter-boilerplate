export 'dart:async';
export 'dart:convert';
export 'dart:math';

export 'package:collection/collection.dart';
export 'package:flutter/foundation.dart' hide binarySearch, mergeSort;
export 'package:flutter/gestures.dart';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:gap/gap.dart';
export 'package:get_it/get_it.dart';
export 'package:intl/intl.dart' hide TextDirection;
export 'package:shared_preferences/shared_preferences.dart';
export 'package:watch_it/watch_it.dart';

export 'common/util/local_storage.dart';
export 'design/typography/text_style.dart';
export 'l10n/generated/l10n.dart';
export 'l10n/util/l10n_util.dart';

typedef VC = void Function();
typedef Json = Map<String, dynamic>;
