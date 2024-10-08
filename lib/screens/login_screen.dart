import 'package:flutter/material.dart';
import 'package:flutter_application_testing/main.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SafeArea(child: CustomBackground()),
          Padding(
            padding: const EdgeInsets.all(10),
            child: const LoginFormWrapper(),
          ),
        ],
      ),
    );
  }
}

class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/dark_leaf.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class LoginFormWrapper extends StatelessWidget {
  const LoginFormWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            children: [
              Text(
                'Planteja',
                style: TextStyle(
                    color: Colors.green.shade400,
                    fontFamily: 'Tropical Taste',
                    fontSize: 75),
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 14),
                    UserLoginForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserLoginForm extends StatefulWidget {
  const UserLoginForm({Key? key}) : super(key: key);

  @override
  _UserLoginFormState createState() => _UserLoginFormState();
}

class _UserLoginFormState extends State<UserLoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool showPassword = false;
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _validateForm() {
    final isEmailValid = RegExp(r'^[^@]+@(gmail\.com|yahoo\.com)$')
        .hasMatch(emailController.text);
    final isPasswordFilled = passwordController.text.isNotEmpty;

    setState(() {
      isButtonEnabled = isEmailValid && isPasswordFilled;
    });
  }

  void login() {
    if (_formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Successful')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: emailController,
            enableInteractiveSelection: false,
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Email cannot be empty';
              }
              final pattern = RegExp(r'^[^@]+@(gmail\.com|yahoo\.com)$');
              if (!pattern.hasMatch(value!)) {
                return 'Use Gmail or Yahoo email';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            enableInteractiveSelection: false,
            controller: passwordController,
            obscureText: !showPassword,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              suffixIcon: IconButton(
                icon: Icon(
                  showPassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password cannot be empty';
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isButtonEnabled
                  ? () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AppWrapper(),
                        ),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                backgroundColor: isButtonEnabled
                    ? Colors.green.shade400
                    : Colors.grey.shade300,
                foregroundColor: isButtonEnabled ? Colors.white : Colors.black,
              ),
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
