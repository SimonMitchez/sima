import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
const WalletPage({Key? key}) : super(key: key);
  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding:const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 111, 188, 250),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                   Text('Your Current Balance',  style: Theme.of(context).textTheme.bodyMedium),
                   Text('Ksh 5000', style: Theme.of(context).textTheme.titleLarge),
                ],
                    ),
                  ),
                  const  SizedBox(height: 5),
                    WalletPageMenuWidget(title: "What is Your balance?", icon: Icons.question_mark_rounded, onPress: () {}),
                
                    const  SizedBox(height: 5),
                    WalletPageMenuWidget(title: " Latest Transactions", icon: Icons.punch_clock_outlined, onPress: () {}),

                    const Divider(),
                    Text('Payment Methods', style: Theme.of(context).textTheme.titleLarge),
                    const  SizedBox(height: 2),
                    WalletPageMenuWidget(title: "M-Pesa", icon: Icons.phone_android, onPress: () {}),

                    const Divider(),
                    const  SizedBox(height: 2),
                    WalletPageMenuWidget(title: "Airtel Money", icon: Icons.wallet, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    WalletPageMenuWidget(title: "Equitel", icon: Icons.credit_card, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    WalletPageMenuWidget(title: "Cash", icon: Icons.attach_money, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    WalletPageMenuWidget(title: "Add debit/credit card", icon: Icons.add, onPress: () {}),
                  ],
              ),
            ),
          ],
        ),
      ),  
    );
  }
}

class WalletPageMenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;

  const WalletPageMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}

