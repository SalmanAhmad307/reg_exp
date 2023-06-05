import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:reg_exp_practice/constants/constants.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var mobileNoController=TextEditingController();
  var addressController=TextEditingController();
  var myKey=GlobalKey<FormState>();
  late String name,email,mobileNo,address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
            'RegEXp',
        style: kTextStyle,
        ),
        backgroundColor: Colors.deepPurple.shade400,
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Form(
            key: myKey,
            child: Column(
              children: [
                const SizedBox(height: 30,),
               TextFormField(
                   controller: nameController,
                  style: const TextStyle(
                color: Colors.white,
                 ),

                 cursorColor: Colors.white,
                decoration:const InputDecoration(
                hintText: 'Enter Name',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                fillColor: Colors.white,
                label: Text('Name',style:TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),

                 validator: (value){
                if(
                value!.isEmpty||!RegExp(r'^[a-zA-Z\s]*$',).hasMatch(value)){
                  return 'please provide your name';
                }else{
                  name=value;
                  return null;
                }
              },
            ),
              const SizedBox(height: 20,),
                TextFormField(
                  controller: emailController,
                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  cursorColor: Colors.white,
                  decoration:const InputDecoration(
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    fillColor: Colors.white,
                    label: Text(
                      'Email',
                      style:TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),

                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}',).hasMatch(value)){
                      return 'please provide your email';
                    }else{
                      email=value;
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: mobileNoController,
                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  cursorColor: Colors.white,
                  decoration:const InputDecoration(
                    hintText: 'Enter Mobile No',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    fillColor: Colors.white,
                    label: Text('Mobile No',style:TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),

                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',).hasMatch(value)){
                      return 'please provide your mobileNo';
                    }else{
                      mobileNo=value;
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: addressController,
                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  cursorColor: Colors.white,
                  decoration:const InputDecoration(
                    hintText: 'Enter Address',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    fillColor: Colors.white,
                    label: Text(
                      'Address',
                      style:TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),

                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[a-zA-Z\s]*$',).hasMatch(value)){
                      return 'please provide your address';
                    }else{
                      address=value;
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20,),


                ElevatedButton(
                    onPressed: (){
                      if(myKey.currentState!.validate()){
                        Fluttertoast.showToast(msg: 'Submitted');
                      }else{
                        Fluttertoast.showToast(msg: 'Please Fill fields correctly');
                      }

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                       fontSize: 20,
                       color: Colors.deepPurple,
                       fontWeight: FontWeight.bold,
                      ),
                    ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
