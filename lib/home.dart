import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _formstate = GlobalKey<FormState>();
  String? id, pass;
  bool redEye = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Form(
      key: _formstate,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: ListView(padding: const EdgeInsets.all(25.0), children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          TextField(
            onChanged: (value) => id = value.trim(),
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
                label: Text(
                  'ไอดี :',
                  style: TextStyle(fontSize: 18),
                ),
                hintText: 'xxx123'),
          ),
          const SizedBox(
            height: 25.0,
          ),
          TextField(
            onChanged: (value) => pass = value.trim(),
            //obscureText: redEye,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
                // suffixIcon: IconButton(
                //   onPressed: () {
                //     setState(() {
                //       redEye = !redEye;
                //     });
                //   },
                //   icon: Icon(
                //     redEye
                //         ? Icons.remove_red_eye_outlined
                //         : Icons.remove_red_eye_sharp,
                //   ),
                // ),
                label: const Text(
                  'รหัสผ่าน :',
                  style: TextStyle(fontSize: 18),
                ),
                hintText: '123456'),
          ),
          const SizedBox(
            height: 25.0,
          ),
          ElevatedButton(
            child: const Text(
              'เข้าสู่ระบบ',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              print(id);
            },
          ),
        ]),
      ),
    )));
  }
}
