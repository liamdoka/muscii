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

enum KeyName {
  c_maj,
  c_sharp_maj
  // and so on and so forth
}

enum Clef {
  treble,
  bass
}

class PianoNotes {
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
