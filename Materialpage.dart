import 'package:flutter/material.dart';

class materialpage extends StatefulWidget {
  const materialpage({super.key});
  @override
  State<materialpage> createState() => _materialpagestate();
}

class _materialpagestate extends State<materialpage> {
  @override
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  final border = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)));
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 15, 66, 92),
          elevation: 0,
          title: const Text("Curency converter  "),
          centerTitle: false,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "₹${result!= 0 ? result.toStringAsFixed(3) :result.toStringAsFixed(0) }",
                  style: const TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      // labelText: ("Enter the amount "),
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      floatingLabelStyle: const TextStyle(color: Colors.black),
                      focusedBorder: border,
                      hintText: "Please enter the amount ",
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(Icons.monetization_on_outlined),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: border),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(50),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.black),
                        foregroundColor: const MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        minimumSize: const MaterialStatePropertyAll(
                            Size(double.infinity, 50)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    onPressed: () {
                      // debugPrint("hello");
                      print(textEditingController.text);
                      print(result);
                      setState(() {
                        result =
                            double.parse(textEditingController.text) * 83.26;
                      });
                    },
                    child: const Text("CLICK HERE ")),
                // ElevatedButton(
                //   style:const ButtonStyle(
                //     backgroundColor:
                //                MaterialStatePropertyAll(Colors.black),
                //     foregroundColor:
                //                 MaterialStatePropertyAll(Colors.red) ,
                //   ),
                //     onPressed: () {
                //       debugPrint("hello there");
                //     },
                //     child: Text("click here "))
                const Text("harshit's app ")
              ],
            ),
          ),
        ));
  }
}
