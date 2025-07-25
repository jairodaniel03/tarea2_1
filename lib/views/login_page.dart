import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:tarea2_1/views/Widgets/textfiel_login.dart";

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            
            
            children: [
              // Espacio superior
              Center(
                child:Text(
                  'Ingrese de nuevo :D',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    )
                ),
            ),


           
            //TexFiel del Correo Institucional
            SizedBox(height: 20),
            TextfielLogin(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              labelText: 'Correo Institucional', 
              icon: Icon(Icons.email), 
            ), 

            //TexFiel de contraseña
            SizedBox(height: 20),
            TextfielLogin(
              controller: passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              labelText: 'Contraseña', 
              icon: Icon(Icons.password), 
              
            ),
          
          //PRUEBA
            
           // Botón de inicio de sesión
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: () {
                  // cuando le falta de rellenar los textfields
                  if( 
                      passwordController.text.isEmpty ||
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
                  // cuando la contraseña 
                  if( !passwordController.text.contains(('20232001147'))){
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
                  if(!emailController.text.contains('jdcruzz@unah.hn')){
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
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),),
              ),

            ),
            SizedBox(height: 20),
            // Botón de registrarse
            TextButton(
              onPressed: () {
                context.push('/registrarse');
              },
              child: Text(
                'Registrarse',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
            ],
            )
        ) 
      )
    );
  }
}