part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  final RegistrationData? registrationData;
  const SignUpPage({Key? key, this.registrationData}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.registrationData!.name!;
    emailController.text = widget.registrationData!.email!;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (() async {
          context.read<PageBloc>().add(GoToSplashPage());
          return Future.value(false);
        }),
        child: Scaffold(
          body: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 22),
                        height: 56,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  context
                                      .read<PageBloc>()
                                      .add(GoToSplashPage());
                                },
                                child:
                                    Icon(Icons.arrow_back, color: Colors.black),
                              )),
                          Center(
                            child: Text(
                              "Create New\nAccount",
                              style: blackTextFont.copyWith(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        width: 90,
                        height: 104,
                        child: Stack(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: (widget.registrationData!
                                                  .profileImage ==
                                              null)
                                          ? AssetImage("assets/user_pic.png")
                                              as ImageProvider
                                          : FileImage(widget
                                              .registrationData!.profileImage!),
                                      fit: BoxFit.cover)),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: GestureDetector(
                                onTap: () async {
                                  if (widget.registrationData!.profileImage ==
                                      null) {
                                    widget.registrationData!.profileImage =
                                        await getImage();
                                  } else {
                                    widget.registrationData!.profileImage =
                                        null;
                                  }
                                  ;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage((widget
                                                    .registrationData!
                                                    .profileImage ==
                                                null)
                                            ? "assets/btn_add_photo.png"
                                            : "assets/btn_del_photo")),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 36),
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Full Name",
                          hintText: "Full Name",
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Email",
                          hintText: "Email",
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Password",
                          hintText: "Password",
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        controller: retypePasswordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Confirm Password",
                          hintText: "Confirm Password",
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.arrow_forward),
                        backgroundColor: mainColor,
                        elevation: 0,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
