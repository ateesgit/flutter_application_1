import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title:Text('Form')
      ),
      body: Form(
        key: _formKey,
        child:Center(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email_outlined
                      ),
                      hintText: 'email',
                      label: Text('Email Address'),
                      
                    ),
                    
                  ),
                  SizedBox(
                    height: 15,
                  ),
                    TextField(
                      // controller: donorPhone,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                       decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Phone Number'),
                        prefixIcon: Icon(Icons.phone_android),
            
                      ),
                    ),
                    SizedBox(
                    height: 15,
                  ),
                  TextFormField(  
                    textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person
                      ),
                      hintText: 'name',
                      label: Text('Name'),
                    ),),
                    SizedBox(
                    height: 15,
                  ),
                  TextFormField(  
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                       prefixIcon: Icon(
                        Icons.password_outlined
                      ),
                      hintText: 'password',
                      label: Text('Password'),
                      suffixIcon: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.visibility_off_outlined))
                    ),),
                   Container(
                    padding: EdgeInsets.only(top: 52),
                    width: double.infinity,
                     child: ElevatedButton(
                      style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.lightGreenAccent)
                      ),
                      onPressed: (){}, 
                      child: Text('Submit')
                                 ),
                   )
                ],
              ),
            ),
          ),
        )
        
        
         ),
    );
  }
}