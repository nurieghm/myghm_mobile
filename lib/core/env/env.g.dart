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
    19289986,
    3313186037,
    396925863,
    3071661702,
    612588650,
    3250089993,
    1247365497,
    3109816512,
    733245711,
    3387453221,
    4261076089,
    144309846,
    2964799429,
    2089943807,
    4101532413,
    4203598054,
    2784225506,
    1818108254,
    3179289258,
    4126220897,
    1730449859,
    926387420,
    4096163552,
    2050983341,
    3054829657,
    2546622024,
    2140064290,
    2784117645,
    483757328,
    2300094140,
  ];

  static const List<int> _envieddatabaseEndpoint = <int>[
    19290090,
    3313185921,
    396925907,
    3071661814,
    612588569,
    3250090035,
    1247365462,
    3109816559,
    733245806,
    3387453269,
    4261075984,
    144309880,
    2964799405,
    2089943690,
    4101532304,
    4203597959,
    2784225420,
    1818108215,
    3179289284,
    4126220805,
    1730449836,
    926387442,
    4096163459,
    2050983362,
    3054829620,
    2546622055,
    2140064323,
    2784117757,
    483757433,
    2300094099,
  ];

  static final String baseEndpoint = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseEndpoint.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseEndpoint[i] ^ _enviedkeybaseEndpoint[i]),
  );

  static const List<int> _enviedkeyapiKey = <int>[
    573132003,
    2948285211,
    2650557699,
    2162768868,
    464005406,
    1136975353,
    1201923301,
    382261031,
    83415239,
    3673942253,
    1406351480,
    3985586147,
    789711634,
    143134901,
  ];

  static const List<int> _envieddataapiKey = <int>[
    573131911,
    2948285310,
    2650557813,
    2162768841,
    464005485,
    1136975260,
    1201923206,
    382261077,
    83415202,
    3673942169,
    1406351445,
    3985586056,
    789711735,
    143134924,
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
