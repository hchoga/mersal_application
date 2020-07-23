import 'package:flutter/material.dart';
import '../../widgets/donate_button.dart';
import 'amount_field.dart';

class BankCardBody extends StatefulWidget {
  @override
  _BankCardBodyState createState() => _BankCardBodyState();
}

class _BankCardBodyState extends State<BankCardBody> {
  double amount = 0.0;

  final _formKey = GlobalKey<FormState>();

  _saveForm() {
    if (!_formKey.currentState.validate()) return;
    _formKey.currentState.save();
    print(amount);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AmountField(amount),

            Spacer(flex: 3),
            SizedBox(
                height: 50,
                child:
                    FittedBox(child: DonateButton(_saveForm, 'Donate NOW'))),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
