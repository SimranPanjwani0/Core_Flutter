import 'package:lets_buy/header.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    bool hide = true;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(
                  size.height * 0.1,
                ),
                Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Enter your details below & get better experience",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(
                  size.height * 0.05,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: size.height * 0.0046,
                    ),
                    label: const Text(
                      "Username",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3,
                        )),
                  ),
                ),
                Gap(
                  size.height * 0.05,
                ),
                TextFormField(
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: size.height * 0.0046,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        hide = !hide;
                      },
                      icon: hide
                          ? Icon(
                              Icons.visibility_outlined,
                              color: Colors.black,
                            )
                          : Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.white,
                            ),
                    ),
                    label: Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(
                  size.height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(MyRoutes.SelectLanguagePage);
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "LOG IN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Gap(
                  size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyRoutes.SignUpPage);
                      },
                      child: Text(
                        " Sign Up",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(
                  size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Gap(
                      size.width * 0.02,
                    ),
                    Text(
                      "Or Login with",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Gap(
                      size.width * 0.02,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Gap(
                  size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(MyRoutes.SelectLanguagePage);
                      },
                      child: Container(
                        height: size.height * 0.12,
                        width: size.width * 0.12,
                        decoration: BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage(
                            //       ImgPath.path + ImgPath.google_logo),
                            // ),
                            ),
                      ),
                    ),
                    Gap(
                      size.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(MyRoutes.SelectLanguagePage);
                      },
                      child: Container(
                        height: size.height * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage(
                            //     ImgPath.path + ImgPath.facebook_logo,
                            //   ),
                            // ),
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
