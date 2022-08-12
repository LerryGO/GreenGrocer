import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:green_grocer/src/auth/components/custom_text_field.dart';
import 'package:green_grocer/src/auth/sign_up_screen.dart';
import 'package:green_grocer/src/base/base_screen.dart';
import 'package:green_grocer/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Nome do app
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(fontSize: 40),
                      children: [
                        const TextSpan(
                          text: "Green",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "grocer",
                          style: TextStyle(
                            color: CustomColors.customContrastColor,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Categorias
                  SizedBox(
                    height: 30,
                    child: DefaultTextStyle(
                      style: const TextStyle(fontSize: 25),
                      child: AnimatedTextKit(
                        pause: Duration.zero,
                        repeatForever: true,
                        animatedTexts: [
                          FadeAnimatedText("Frutas"),
                          FadeAnimatedText("Verdutas"),
                          FadeAnimatedText("Legumes"),
                          FadeAnimatedText("Carnes"),
                          FadeAnimatedText("Cereais"),
                          FadeAnimatedText("Laticíneos"),
                        ],
                      ),
                    ),
                  )
                ],
              )),

              // Formulário
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Email
                    CustomTextField(
                      icon: Icons.email,
                      label: "Email",
                    ),

                    // Senha
                    CustomTextField(
                      icon: Icons.lock,
                      label: "Senha",
                      isSecret: true,
                    ),

                    // Entrar
                    SizedBox(
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => BaseScreen(),
                              ));
                            },
                            child: const Text(
                              "Entrar",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ))),

                    // Esqueceu a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Esqueceu sua senha?",
                            style: TextStyle(
                                color: CustomColors.customContrastColor),
                          )),
                    ),

                    // Divisor
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text("Ou"),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Botão novo usuário
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            side: const BorderSide(
                                width: 2, color: Colors.green)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                        },
                        child: const Text(
                          "Criar conta",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
