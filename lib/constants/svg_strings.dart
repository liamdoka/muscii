import 'package:muscii/game/models/staff_model.dart';
import 'package:muscii/utils/notation.dart';

String buildGuideline(num offset) {
  return """
      <g transform="translate(5.5, $offset)">
      <line stroke-linejoin="round" stroke-linecap="round" stroke-width="0.1000" stroke="currentColor" x1="0" y1="0" x2="3.0000" y2="0"/>
      </g>
    """;
}

String buildStaff({num offset = 6.5}) {

  const topLine = 4;
  const bottomLine = 8;
  String extraLines = "";

  List<int> guidelines = [];
  if (offset < topLine - 0.5) {
    guidelines = List.generate(topLine - offset.ceil(), (i) => topLine - i - 1);
  } else if (offset > bottomLine + 0.5) {
    guidelines = List.generate(offset.floor() - bottomLine, (i) => i + bottomLine + 1);
  }

  for (final i in guidelines) {
    extraLines += buildGuideline(i);
  }

  return """
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.2" width="20.00px" height="20.00px" viewBox="0 0 12 12">
    <style type="text/css">
    <![CDATA[
    tspan { white-space: pre; }
    ]]>
    </style>
    <g transform="translate(0, 8)">
    <line stroke-linejoin="round" stroke-linecap="round" stroke-width="0.1000" stroke="currentColor" x1="0.0000" y1="0" x2="12.0000" y2="0"/>
    </g>
    <g transform="translate(0, 7)">
    <line stroke-linejoin="round" stroke-linecap="round" stroke-width="0.1000" stroke="currentColor" x1="0" y1="0" x2="12.0000" y2="0"/>
    </g>
    <g transform="translate(0, 6)">
    <line stroke-linejoin="round" stroke-linecap="round" stroke-width="0.1000" stroke="currentColor" x1="0" y1="0" x2="12.0000" y2="0"/>
    </g>
    <g transform="translate(0, 5)">
    <line stroke-linejoin="round" stroke-linecap="round" stroke-width="0.1000" stroke="currentColor" x1="0" y1="0" x2="12.0000" y2="0"/>
    </g>
    <g transform="translate(0, 4)">
    <line stroke-linejoin="round" stroke-linecap="round" stroke-width="0.1000" stroke="currentColor" x1="0" y1="0" x2="12.0000" y2="0"/>
    </g>
    <g transform="translate(12, 4)">
    <rect x="-0.1" y="0" width="0.1" height="4" ry="0" fill="currentColor"/>
    </g>
    <a style="color:inherit;" xlink:href="textedit:///Users/LOK/personal/projects/muscii/music-svg-generator/test.ly:23:3:25">
    <g transform="translate(6, $offset)">
    <path transform="scale(0.0040, -0.0040)" d="M213 112c-45 0 -69 -34 -69 -88c0 -102 89 -136 134 -136s69 34 69 88c0 102 -89 136 -134 136zM245 136c144 0 246 -65 246 -136s-102 -136 -246 -136s-245 65 -245 136s101 136 245 136z" fill="currentColor"/>
    </g>
    $extraLines
    </a>
    <g transform="translate(0.5, 7)">
    <path transform="scale(0.0040, -0.0040)" d="M266 -635h-6c-108 0 -195 88 -195 197c0 58 53 103 112 103c54 0 95 -47 95 -103c0 -52 -43 -95 -95 -95c-11 0 -21 2 -31 6c26 -39 68 -65 117 -65h4zM461 -203c68 24 113 90 113 164c0 90 -66 179 -173 190c19 -89 48 -242 60 -354zM74 28c0 -145 141 -247 264 -247
    c1 0 47 0 82 6c-7 64 -29 203 -63 364c-79 -8 -124 -61 -124 -119c0 -44 25 -91 81 -123c5 -5 7 -10 7 -15c0 -11 -10 -22 -22 -22c-15 0 -126 62 -126 187c0 88 58 174 160 197c-14 58 -29 117 -46 175c-107 -121 -213 -243 -213 -403zM250 553c-29 96 -52 170 -52 346
    c0 115 55 224 149 292c6 5 14 5 20 0c68 -80 133 -245 133 -358c0 -143 -86 -255 -180 -364c21 -68 39 -138 56 -207c2 0 7 1 13 1c155 0 256 -128 256 -261c0 -113 -74 -212 -180 -246c3 -35 5 -70 5 -105c0 -19 -1 -39 -2 -58c-7 -119 -88 -225 -202 -228l1 43
    c93 2 153 92 159 191c1 18 2 37 2 55c0 31 -1 61 -4 92c-5 -1 -44 -8 -89 -8c-193 0 -333 180 -333 374c0 177 131 306 248 441zM428 916c0 34 1 66 -20 129c-99 -48 -162 -149 -162 -259c0 -52 12 -115 36 -194c80 97 146 198 146 324z" fill="currentColor"/>
    </g>
    </svg>
  """;
}

double mapNoteToOffset(NoteModel note, KeyName musicKey) {
  // hey so this is cursed.
  final base = ((note.octave - 4) * - 3.5) + 9;
  const values = [0,2,4,5,7,9,11];

  final newValues = values.map(
    (number) => (number + note.name.index > 11)
        ? number + musicKey.index - 12
        : number + musicKey.index
  ).toList();

  final realIndex = newValues.indexOf(note.name.index);
  if (realIndex == -1) {
    // TODO Handle errors
    print("error here please figure out how to handle");
  }
  return base - realIndex / 2;
}