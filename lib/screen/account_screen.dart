import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Account',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                children: [
                  Container(
                    height: 98,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                          radius: 26,
                        ),
                        SizedBox(width: 16,),
                        Text("Nickname", style: Theme.of(context).textTheme.titleSmall,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    AccountButton(
                      icon: Icons.account_circle_outlined,
                      text: "Account view",
                      onTap: () {},
                    ),
                    SizedBox(height: 2,),
                    Divider(color: Theme.of(context).colorScheme.secondaryContainer,),
                    SizedBox(height: 2,),
                    AccountButton(
                      icon: Icons.area_chart_outlined,
                      text: "Activity",
                      onTap: () {},
                    ),
                    SizedBox(height: 2,),
                    Divider(color: Theme.of(context).colorScheme.secondaryContainer,),
                    SizedBox(height: 2,),
                    AccountButton(
                      icon: Icons.border_color,
                      text: "Edit information",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    AccountButton(
                      icon: Icons.favorite_border,
                      text: "Favorites",
                      onTap: () {},
                    ),
                    SizedBox(height: 2,),
                    Divider(color: Theme.of(context).colorScheme.secondaryContainer,),
                    SizedBox(height: 2,),
                    AccountButton(
                      icon: Icons.settings_outlined, 
                      text: "Settings", 
                      onTap: () {},
                    ),
                    SizedBox(height: 2,),
                    Divider(color: Theme.of(context).colorScheme.secondaryContainer,),
                    SizedBox(height: 2,),
                    AccountButton(
                      icon: Icons.logout, 
                      text: "Log out", 
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  const AccountButton({super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.tertiary, size: 24,),
            SizedBox(width: 18,),
            Text(text, style: Theme.of(context).textTheme.labelMedium,)
          ],
        ),
      ),
    );
  }
}