import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muscii/components/buttons/answer_button_piano.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/constants/svg_strings.dart';
import 'package:muscii/data/staves/staff_provider.dart';
import 'package:muscii/data/staves/staff_model.dart';


@RoutePage()
class TestGamePage extends ConsumerWidget {

  const TestGamePage({ super.key });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final staff = ref.watch(staffProvider).value;
    final staffNotifier = ref.watch(staffProvider.notifier);
    final Widget? svg = staff != null ? _buildStaff(context, staff) : null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Quiz!'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close, size: 24)
        ),
        actions: [
          IconButton(onPressed: () => staffNotifier.getRandomStaff(), icon: const Icon(Icons.volume_off))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: svg ?? const SizedBox.shrink()
            ),
            if (staff != null) AnswerButtonPiano(correctKey: staff.notes.first.first, isAnnotated: true),
            const Spacer(),
            Text('help',
              style: TextStyle(
                fontSize: 16,
                color: primaryColor[500],
                decoration: TextDecoration.underline
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStaff(BuildContext context, StaffModel staff) {

    final note = staff.notes.first.first;

    final maxWidth = MediaQuery.of(context).size.width;
    final Widget svg = SvgPicture.string(
      buildStaff(offset: mapNoteToOffset(note, staff.keySignature)),
      width: maxWidth,
      height: maxWidth,
      colorFilter: ColorFilter.mode(
        primaryColor[700]!,
        BlendMode.srcIn
      ),
    );

    return svg;
  }
}