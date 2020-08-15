import 'package:archer_flutter_ui/constants/styles.dart';
import 'package:archer_flutter_ui/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';


class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/contact.jpg"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 5),
          Text('ACCOUNT LOGIN', style: titleTextStyle(DeviceScreenType.desktop)),
          SizedBox(height: kDefaultPadding * 2.5),
          SigninBox(),
        ],
      ),
    );
  }
}

class SigninBox extends StatelessWidget {
  const SigninBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding),
          SigninForm(),
        ],
      ),
    );
  }
}

class SigninForm extends StatelessWidget {
  const SigninForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address*",
                hintText: "",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Password*",
                hintText: "",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('[ ] Remember Me'),
              Expanded(child: SizedBox(),),
              Text('Forgot Password')
            ],
          ),
          SizedBox(height: kDefaultPadding * 1),
          Center(
            child: DefaultButton(
              text: "LOGIN",
              press: () {},
            ),
          ),
          SizedBox(height: kDefaultPadding * 1),
          Center(
            child: Text('- OR -'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: DefaultButton(
                  iconSrc: FontAwesomeIcons.github,
                  text: "Github",
                  press: () {},
                ),
              ),
              FittedBox(
                child: DefaultButton(
                  iconSrc: FontAwesomeIcons.google,
                  text: "Google",
                  press: () {},
                ),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding * 1),
          Center(
            child: Text('*Click “LOGIN” or Social Login to agree to Houston Dragon Academy’s Terms of Service and acknowledge that our Privacy Policy applies to you.',
                style: TextStyle(fontSize: 8)
            ),
          ),
        ],
      ),
    );
  }
}



