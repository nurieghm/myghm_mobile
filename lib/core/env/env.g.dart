// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env.dev
final class _Env {
  static const List<int> _enviedkeybaseEndpoint = <int>[
    1642976331,
    206760572,
    1241555810,
    3290893631,
    3087111360,
    746409300,
    1959844450,
    1001271469,
    2949028523,
    1420590380,
    1594854803,
    3840994163,
    736833845,
    4150281433,
    3704057736,
    773945218,
    3721897528,
    2060357854,
    4062097121,
    3220664343,
    683379557,
    1093584072,
    1671538657,
    1366861391,
    2214257688,
    2774663279,
    1365173089,
    1127957488,
    1591951708,
    4245458863,
  ];

  static const List<int> _envieddatabaseEndpoint = <int>[
    1642976291,
    206760456,
    1241555734,
    3290893647,
    3087111347,
    746409326,
    1959844429,
    1001271426,
    2949028554,
    1420590428,
    1594854906,
    3840994141,
    736833885,
    4150281388,
    3704057829,
    773945315,
    3721897558,
    2060357815,
    4062097039,
    3220664435,
    683379466,
    1093584102,
    1671538562,
    1366861344,
    2214257781,
    2774663232,
    1365172992,
    1127957376,
    1591951669,
    4245458816,
  ];

  static final String baseEndpoint = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseEndpoint.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseEndpoint[i] ^ _enviedkeybaseEndpoint[i]),
  );

  static const List<int> _enviedkeyapiKey = <int>[
    3141808017,
    77003878,
    881561117,
    3079611443,
    2866253102,
    4184923334,
    2962233489,
    1391663225,
    4033259474,
    1615080793,
    3033813180,
    2706472234,
    758732118,
    1258262894,
  ];

  static const List<int> _envieddataapiKey = <int>[
    3141808117,
    77003779,
    881561195,
    3079611422,
    2866253149,
    4184923299,
    2962233586,
    1391663115,
    4033259447,
    1615080749,
    3033813137,
    2706472257,
    758732083,
    1258262807,
  ];

  static final String apiKey = String.fromCharCodes(
    List<int>.generate(
      _envieddataapiKey.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddataapiKey[i] ^ _enviedkeyapiKey[i]),
  );

  static const bool showDebugInfo = true;
}
