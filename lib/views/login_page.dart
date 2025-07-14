import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
//import "package:tarea2_1/views/home_page.dart";

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Espacio superior
              Center(
                child:Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    )
                ),
            ),

            SizedBox(height: 20), 

          // TextFiel del nombre de usuario
            TextField(
              controller: usernameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Nombre de usuario',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

           //TexFiel del numero de telefono
            SizedBox(height: 20),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Número de teléfono',
                border: OutlineInputBorder(),
              ),
            ),  

            //TexFiel del Correo Institucional
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Correo Institucional',
                border: OutlineInputBorder(),
              ),
            ), 

            //TexFiel de contraseña
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
            ),
            // Botón de inicio de sesión
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: () {
                  // cuando le falta de rellenar los textfields
                  if(usernameController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      phoneController.text.isEmpty ||
                      emailController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder:(context){
                        return AlertDialog(
                          title: Text('Opa!'),
                          content: Text('Por favor rellenar todos los campos.'),
                          actions: [
                            TextButton(onPressed: context.pop, child: Text('Aceptar'))
                          ],
                        );
                      }
                      );
                    return;
                    }
                  // cuando la contraseña es menor a 6 caracteres
                  if(passwordController.text.length<6 && passwordController.text.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 2),
                        action: SnackBarAction(
                        label: 'Cerrar', 
                        onPressed: (){}),
                        content: Text('La contraseña debe al menos llevar un caracter especial o ser mayor de 6 digitos.') 
                      
                      )
                    );
                    return;
                  }

                  // el correo institucional bien ingresado
                  if(!emailController.text.contains('@unah.hn')){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 2),
                        action: SnackBarAction(
                        label: 'Cerrar', 
                        onPressed: (){}),
                        content: Text('El correo institucional esta mal ingresado.') 
                      
                      )
                    );
                    return;
                  }
                   context.push('/home');
                  
                },
                child: Text('Iniciar Sesión'),
              ),
            ),
            ],
            )
        ) 
      )
    );
  }
}