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
    596174929,
    3690654366,
    279171582,
    3429689983,
    3708570463,
    466917589,
    1038026898,
    1402356055,
    3094289631,
    2409172254,
    700512155,
    1467416895,
    1274566540,
    1830492742,
    4077720005,
    3774544343,
    270752057,
    2775912780,
    2118099631,
    2611079721,
    1745704790,
    220959838,
    2240913554,
    3447974711,
    2896393813,
    3436487234,
    1693385304,
    3161291536,
    3270792169,
    683948562,
  ];

  static const List<int> _envieddatabaseEndpoint = <int>[
    596174905,
    3690654442,
    279171466,
    3429689871,
    3708570412,
    466917615,
    1038026941,
    1402356088,
    3094289598,
    2409172334,
    700512242,
    1467416849,
    1274566628,
    1830492723,
    4077719976,
    3774544310,
    270752087,
    2775912741,
    2118099649,
    2611079757,
    1745704761,
    220959856,
    2240913649,
    3447974744,
    2896393784,
    3436487277,
    1693385273,
    3161291616,
    3270792064,
    683948605,
  ];

  static final String baseEndpoint = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseEndpoint.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseEndpoint[i] ^ _enviedkeybaseEndpoint[i]),
  );

  static const List<int> _enviedkeyapiKey = <int>[
    823477223,
    1181501480,
    468949226,
    426358318,
    2428550035,
    3529068205,
    2415609504,
    1751299573,
    3541859746,
    170230544,
    125672449,
    285203527,
    2392898624,
    3651319503,
  ];

  static const List<int> _envieddataapiKey = <int>[
    823477123,
    1181501517,
    468949148,
    426358275,
    2428550112,
    3529068232,
    2415609539,
    1751299463,
    3541859783,
    170230628,
    125672492,
    285203500,
    2392898597,
    3651319478,
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
