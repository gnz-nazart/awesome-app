import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:awesome_app/widgets/buttons.dart';
import 'package:awesome_app/widgets/country_sheet.dart';
import 'package:flutter/material.dart';

class PhoneFormWidget extends StatefulWidget {
  final Function(String) onSubmit;

  PhoneFormWidget({
    @required this.onSubmit,
  });

  @override
  _PhoneFormWidgetState createState() => _PhoneFormWidgetState();
}

class _PhoneFormWidgetState extends State<PhoneFormWidget> {
  String _phoneCountryIsoCode = 'ES';
  String _phoneCountryDialCode = '+34';

  TextEditingController _textController =
      TextEditingController(text: '637279124');

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 56.0,
        ),
        child: TextField(
          autofocus: true,
          controller: _textController,
          decoration: InputDecoration(
            prefix: Padding(
              padding: EdgeInsets.only(right: 24),
              child: RawMaterialButton(
                constraints:
                    const BoxConstraints(maxWidth: 110.0, maxHeight: 32),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3.0),
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                        'https://flagcdn.com/w40/${_phoneCountryIsoCode.toLowerCase()}.png',
                        width: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 4, 0),
                      child: Text(_phoneCountryDialCode,
                          style: AppTextStyle.normalRegular,
                          textAlign: TextAlign.right),
                    ),
                    Icon(Icons.arrow_drop_down,
                        color: AppColors.grey[700], size: 24)
                  ],
                ),
                onPressed: () => _openPrefixSelector(),
              ),
            ),
            labelText: 'Phone number',
          ),
          keyboardType: TextInputType.number,
        ),
      ),
      SizedBox(height: 8.0),
      Text(
        'We will call or send you an SMS to confirm your number. Standard message and data rates apply.',
        style: AppTextStyle.superSmallRegular,
      ),
      SizedBox(height: 24.0),
      PrimaryButton(
        text: 'Continue',
        onPressed: () =>
            widget.onSubmit('$_phoneCountryDialCode${_textController.text}'),
      ),
    ]);
  }

  void _openPrefixSelector() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.95,
          child: CountrySelector(),
        );
      },
    ).then((value) {
      if (value != null) {
        setState(() {
          _phoneCountryDialCode = value.dialCode;
          _phoneCountryIsoCode = value.isoCode;
        });
      }
    });
  }
}
