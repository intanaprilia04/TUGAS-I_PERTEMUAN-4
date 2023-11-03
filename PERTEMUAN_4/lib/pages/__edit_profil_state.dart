
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/__edit_profil_state.dart';
import 'package:food/pages/custom_button.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final globalKey = GlobalKey<ScaffoldState>();
  TextEditingController nameController = new TextEditingController();
  
  get child => null;
  
  get currentContext => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: Container(
        padding: EdgeInsets.only(
          top: 64, 
          bottom: 64, 
          left: 24, 
          right: 24
          ),
        child : Column (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              //color: Colors.amber,
              child: Text(
                'EDIT PROFIL', 
                style: TextStyle(
                  fontSize: 40,
                   color: Colors.blueAccent,
                   ),
                ),
            ),
            Container(
              height: 100,
              //color: Color.fromARGB(255, 7, 185, 16),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Name',
                ),
              ),
            ),
            Container(
          child: CustomButton(
            text: 'Update',
            onPressed: () {
             if(nameController.text == ''){
                    // showToast('Please Input Your Name');
                    // showSnackBar('Please Input Your Name');
                    // showAlertDialogMaterial('Please Input Your Name');
                    // showAlertDialogCupertino('Please Input Your Name');
                    } else{
                      Navigator.push(
                      context, 
                      MaterialPageRoute(
                      builder: (context) => Profile(),
                      ),
                      ); 
                    };
            },
            )
                   ),
                  ] ),
                )
             );
                                    
    
  }
      
  showToast(){
   Fluttertoast.showToast(
        msg: "Please input your name",
        toastLength:Toast.LENGTH_LONG,
        gravity: ToastGravity.button,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0,5),
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
 showSnackBar(text){
    final snackbar = SnackBar(
      content: Text(
        'text'
      ),
      action: SnackBarAction(
        label: 'Undo', 
        onPressed: (){
        print ('Click Undo');
        },
        ),
      );
 globalKey.currentState.showSnackBar(showSnackBar,);
  }

  showAlertDialogMaterial(text, {required GlobalKey<ScaffoldState> context, required Color barrierColor, required bool barrierDismissible}){
  showAlertDialogMaterial(
    context: globalKey, currentContext(),
    builder: (_) => AlertDialogM(
      title: Text (
        'Info'
      ),
      content: Text (text),
      actions: [
       child: TextButton(
          onPressed: (){
          Navigator.pop(globalKey.currentContext);
        child: Text ('No')
        print('Clicked No!')
        },
      );
      TextButton(
        onPressed: (){
        child: Text ('Yes')
        print('Clicked Yes!')
        },
      );
      ],
      elevation: 4,
      backgroundColor: Colors.white,
    )
    barrierColor: Colors.black.withOpacity(5),
    barrierDismissible: false,
      );

  }

  showAlertDialogCupertino(text){
    showDialog(
      context: globalKey.BuildContext,
    builder: (_) => CupertinoAlertDialog(
      title: Text ('Info'),
      content: Text (text),
      actions: <Widget>[
        child : CupertinoAlertDialog(
        onPressed: (){
          Navigator.popAndPushNamed(globalKey, currentContext);
        child: Text ('No');
        print('Clicked No!');
        },
      ),
     CupertinoDialogAction(
      child: Text('Yes'),
      onPressed:(){
      print('Clicked Yes');
      },
      ),
      ],
    ),
    barrierColor: Colors.black.withOpacity(4),
    barrierDismissible: false,
      );
}
  }
  

  
  class ToastGravity {
  static var button;
  }
  
  
  class Toast {
  }
  
  class Fluttertoast {
  static void showToast({required String msg, required toastLength, required gravity, required int timeInSecForIosWeb, required Color backgroundColor, required Color textColor, required double fontSize}) {}
  }
  
  Profile() {
  }



