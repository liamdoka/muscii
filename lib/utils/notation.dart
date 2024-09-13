enum NoteName {
  c,
  c_sharp,
  d,
  d_sharp,
  e,
  f,
  f_sharp,
  g,
  g_sharp,
  a,
  a_sharp,
  b;

  String get formattedName => (name[0].toUpperCase() + (name.contains("sharp") ? "#" : ""));
}

enum KeySignature {
  c_maj,
  c_min,
  c_sharp_maj,
  c_sharp_min,
  d_maj;
  // and so on and so forth

  String get formattedName => (name[0].toUpperCase() + (name.contains("sharp") ? "#" : "") + (name.contains("minor") ? " minor" : ""));
}

enum Clef {
  treble,
  bass
}

abstract class PianoNotes {
  static List<NoteName?> topNotes = [
    NoteName.c_sharp,
    NoteName.d_sharp,
    null,
    NoteName.f_sharp,
    NoteName.g_sharp,
    NoteName.a_sharp,
  ];

  static List<NoteName> bottomNotes = [
    NoteName.c,
    NoteName.d,
    NoteName.e,
    NoteName.f,
    NoteName.g,
    NoteName.a,
    NoteName.b,
  ];
}
