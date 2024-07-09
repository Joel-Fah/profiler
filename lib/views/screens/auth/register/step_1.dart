import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:profiler/utils/constants.dart';
import 'package:profiler/views/screens/auth/register/step_2.dart';
import 'package:profiler/views/widgets/form_fields.dart';

class RegisterStepOnePage extends StatefulWidget {
  const RegisterStepOnePage({super.key});

  @override
  State<RegisterStepOnePage> createState() => _RegisterStepOnePageState();
}

class _RegisterStepOnePageState extends State<RegisterStepOnePage> {
  @override
  Widget build(BuildContext context) {
    List<String> countries = [
      'Cameroon',
    ];

    List<String> cities = [
      'Yaounde',
      'Douala',
      'Bafoussam',
      'Bamenda',
      'Buea',
      'Garoua',
      'Maroua',
      'Ngaoundere',
      'Ebolowa',
      'Bertoua'
    ];

    String? selectedCountry;
    String? selectedCity;

    return Scaffold(
      appBar: AppBar(
        title: Text("User registration"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Text(
            "Hey, welcome to you 👋🏽",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(4.0),
          Text(
            "We are happy to have you among us. Let’s begin by knowing each other.",
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
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                child: Image.asset(picholder),
              ),
              Positioned(
                bottom: 0,
                right: 130,
                child: CircleAvatar(
                  backgroundColor: seedColor,
                  child: Icon(
                    LucideIcons.imagePlus,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Gap(8.0),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Tap to change your profile picture",
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
          ),
          Gap(16.0),
          SimpleFormField(
            hintText: "How should we call you?",
            prefixIcon: LucideIcons.user2,
          ),
          Gap(16.0),
          DropDownField(
            countries: countries,
            hintText: "Select Country",
            selectedCountry: selectedCountry,
            prefixIcon: LucideIcons.globe2,
            onChanged: (String? value) {
              setState(() {
                selectedCountry = value;
              });
            },
          ),
          Gap(16.0),
          DropDownField(
            countries: cities,
            hintText: "City",
            selectedCountry: selectedCountry,
            prefixIcon: LucideIcons.mapPin,
            onChanged: (String? value) {
              setState(() {
                selectedCity = value;
              });
            },
          ),
          Gap(16.0),
          SimpleFormField(
            hintText: "Occupation",
            prefixIcon: LucideIcons.contact2,
          ),
          Gap(16.0),
          ElevatedButton(
            onPressed: () => Get.to(() => RegisterStepTwoPage()),
            child: Text(
              'Save and proceed',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownField extends StatelessWidget {
  const DropDownField(
      {super.key,
      required this.countries,
      this.selectedCountry,
      required this.hintText,
      this.onChanged,
      required this.prefixIcon});

  final List<String> countries;
  final String? selectedCountry;
  final String hintText;
  final void Function(String?)? onChanged;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
          boxShadow: [
            primaryShadow,
          ]),
      child: DropdownButtonFormField<String>(
        hint: Text(hintText),
        borderRadius: borderRadius,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
          prefixIcon: Icon(prefixIcon),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
        isExpanded: true,
        icon: Icon(LucideIcons.chevronDown),
        value: selectedCountry,
        onChanged: onChanged,
        items: countries.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
