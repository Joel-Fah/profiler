import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:profiler/models/skills.dart';
import 'package:profiler/utils/constants.dart';
import 'package:profiler/views/screens/home.dart';

import '../../../widgets/form_fields.dart';

class RegisterStepThreePage extends StatefulWidget {
  const RegisterStepThreePage({super.key});

  @override
  State<RegisterStepThreePage> createState() => _RegisterStepThreePageState();
}

class _RegisterStepThreePageState extends State<RegisterStepThreePage> {
  final MultiSelectController<String> _controller = MultiSelectController();
  final List<ValueItem> _selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Points of interest"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // padding: EdgeInsets.all(10),
          // physics: AlwaysScrollableScrollPhysics(),
          children: [
            Text(
              "Select your skillset",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(4.0),
            Text(
              "Choose among the list the skills that suits you perfectly.",
            ),
            Gap(4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.info,
                  color: Theme.of(context).disabledColor,
                  size: 16.0,
                ),
                Gap(8.0),
                Expanded(
                  child: Text(
                    "If you instead want to sign up with your Google account or Apple ID, go back to the previous screen.",
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            Gap(24.0),
            MultiSelectDropDown(
              controller: _controller,
              onOptionSelected: (options) {
                debugPrint(options.toString());
              },
              options: <ValueItem<String>>[
                ValueItem(label: 'Motion', value: '1'),
                ValueItem(label: 'Design', value: '2'),
                ValueItem(label: 'Graphics', value: '3'),
                ValueItem(label: 'Animation', value: '4'),
                ValueItem(label: 'Development', value: '5'),
                ValueItem(label: 'Thinking', value: '6'),
              ],
              selectionType: SelectionType.multi,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(LucideIcons.checkCircle2),
              borderRadius: 16.0,
              searchEnabled: true,
              clearIcon: Icon(LucideIcons.x),
              dropdownBorderRadius: 16,
              hint: "Select all your skills",
              hintStyle: TextStyle(color: Theme.of(context).disabledColor),
              suffixIcon: Icon(LucideIcons.chevronDown),
              padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
              inputDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: borderRadius,
                boxShadow: [primaryShadow],
              ),
            ),
            Spacer(),
            SizedBox(
              width: Get.width,
              height: 48.0,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    enableDrag: false,
                    isDismissible: false,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: bottomSheetTopRadius),
                    builder: (context) {
                      return ListView(
                        shrinkWrap: true,
                        physics: AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.all(10.0),
                        children: [
                          Image.asset(userAvatars, height: 150,),
                          Text(
                            "Registration successful",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                              color: successColor,
                                ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(8.0),
                          Text(
                              "Congratsss!! You’re now in. Login into your account and start enjoying the Profiler app."),
                          Gap(16.0),
                          ElevatedButton(
                            onPressed: () => Get.to(() => HomePage()),
                            child: Text(
                              "Understood! Let's go",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Save and continue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
