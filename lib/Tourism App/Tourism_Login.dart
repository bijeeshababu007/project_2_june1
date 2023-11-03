import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home : Tourism_Login(),));
}
class Tourism_Login extends StatelessWidget {
  const Tourism_Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration:
                const BoxDecoration(
                    image:DecorationImage(
                        image: AssetImage("assets/images/maldives.png"))
                ),
              ),
              const SizedBox(height: 40),
              MaterialButton(
                onPressed: (){},
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                color: Colors.blue,
                child: const Text("Login",style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white70
                ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("-Or-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(onPressed:(){},
                label: const Text("Login With Facebook",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white,
                ),
                ),
                icon: const Icon(Icons.facebook),
              ),
              const SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: (){},
                label: const Text("Login With Twitter", style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white,
                ),
                ),
                icon: const Icon(Icons.transfer_within_a_station),
              ),
              const SizedBox(height: 15),
        ElevatedButton.icon(
          onPressed: (){},
          label: const Text("Login With Google",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white,
                ),
                ),
          icon: const Icon(Icons.transfer_within_a_station),
              ),
            ],
          ),
        ),
      ),
    );
  }

}