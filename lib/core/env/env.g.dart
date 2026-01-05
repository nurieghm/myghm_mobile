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
    2255374816,
    2795240323,
    4076684573,
    2960099532,
    517722078,
    2847370486,
    2028080309,
    2111456504,
    2251124949,
    728095625,
    212649108,
    3495317629,
    2586543275,
    2217936742,
    2580613062,
    1919532947,
    3869258425,
    3806766903,
    3079790051,
    3449492590,
    1506898582,
    2037942831,
    1950749118,
    36581913,
    1907532189,
    2221273867,
    3970590447,
    3397298305,
    2365184970,
    1748474368,
  ];

  static const List<int> _envieddatabaseEndpoint = <int>[
    2255374728,
    2795240439,
    4076684649,
    2960099516,
    517722029,
    2847370444,
    2028080282,
    2111456471,
    2251124916,
    728095737,
    212649213,
    3495317587,
    2586543299,
    2217936659,
    2580613035,
    1919533042,
    3869258455,
    3806766942,
    3079789965,
    3449492490,
    1506898681,
    2037942785,
    1950749149,
    36582006,
    1907532272,
    2221273892,
    3970590350,
    3397298417,
    2365184931,
    1748474415,
  ];

  static final String baseEndpoint = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseEndpoint.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseEndpoint[i] ^ _enviedkeybaseEndpoint[i]),
  );

  static const List<int> _enviedkeyapiKey = <int>[
    4000205890,
    617559614,
    544524812,
    1230023602,
    2335741494,
    595555007,
    1912152961,
    2517702296,
    3398702217,
    2327390255,
    409527094,
    2738631707,
    2610213499,
    2577993986,
  ];

  static const List<int> _envieddataapiKey = <int>[
    4000205862,
    617559643,
    544524922,
    1230023583,
    2335741509,
    595555034,
    1912153058,
    2517702378,
    3398702316,
    2327390299,
    409527067,
    2738631792,
    2610213406,
    2577994107,
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
