import 'package:didpoolfit/global/utils/validator_util.dart';
import 'package:didpoolfit/global/widgets/buttons/submit_button.dart';
import 'package:didpoolfit/modules/auth/register/choose_program_page.dart';
import 'package:didpoolfit/modules/auth/widgets/etc/gradient_square.dart';
import 'package:didpoolfit/modules/auth/widgets/fields/auth_date_form_field.dart';
import 'package:didpoolfit/modules/auth/widgets/fields/auth_dropdown_button_form_field.dart';
import 'package:didpoolfit/modules/auth/widgets/fields/auth_text_form_field.dart';
import 'package:flutter/material.dart';

class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({super.key});

  @override
  State<CompleteProfilePage> createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedGender;
  final _dateController = TextEditingController();
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now().subtract(
        const Duration(days: 365 * 100),
      ),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(
        () {
          _selectedDate = picked;
          _dateController.text =
              _selectedDate.toLocal().toString().split(' ')[0];
        },
      );
    }
  }

  Future<void> completeProfile() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();

    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ChooseProgramPage(),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 36),
                          child: Image.asset(
                              'assets/images/form/complete-profile.png'),
                        ),
                        Text(
                          "Let's complete your profile",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "It will help us to know more about you!",
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: const Color(0xFF7B6F72),
                                  ),
                        ),
                        const SizedBox(height: 24),
                        AuthDropdownButtonFormField(
                          hintText: "Choose Gender",
                          iconPath: "assets/icons/complete-profile/2-users.png",
                          onChanged: (value) {
                            _selectedGender = value;
                          },
                          validator: ValidatorUtil().genderValidator,
                          items: const [
                            DropdownMenuItem(
                              value: "Male",
                              child: Text("Male"),
                            ),
                            DropdownMenuItem(
                              value: "Female",
                              child: Text("Female"),
                            ),
                          ],
                          // items: [],
                        ),
                        const SizedBox(height: 12),
                        AuthDateFormField(
                          controller: _dateController,
                          hintText: "Date of Birth",
                          iconPath:
                              'assets/icons/complete-profile/calendar.png',
                          onTap: _selectDate,
                          validator: ValidatorUtil().dateOfBirthValidator,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: AuthTextFormField(
                                controller: _weightController,
                                hintText: "Your Weight",
                                iconPath:
                                    'assets/icons/complete-profile/weight-scale.png',
                                keyboardType: TextInputType.number,
                                validator: ValidatorUtil().weightValidator,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const GradientSquare(text: "KG"),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: AuthTextFormField(
                                controller: _heightController,
                                hintText: "Your Height",
                                iconPath:
                                    'assets/icons/complete-profile/swap.png',
                                keyboardType: TextInputType.number,
                                validator: ValidatorUtil().heightValidator,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const GradientSquare(text: "CM"),
                          ],
                        ),
                        const SizedBox(height: 36),
                        SubmitButton(
                          onPressed: completeProfile,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Next"),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
