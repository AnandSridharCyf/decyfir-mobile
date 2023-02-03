import 'package:decyfir/src/common/constants.dart';
import 'package:flutter/material.dart';

class FaqView extends StatelessWidget {
  const FaqView({super.key});

  static const routeName = '/faq';

  Widget faqElement(BuildContext context, String question, String answer) => Container(
    margin: const EdgeInsets.fromLTRB(20, 4, 20, 4),
    decoration: BoxDecoration(
      border: Border.all(color: Theme.of(context).colorScheme.primary, width: 0.5),
      borderRadius: const BorderRadius.all(Radius.elliptical(5, 10))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 5),
          color: Theme.of(context).colorScheme.primary,
          child: Text(question, style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer))
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
          child: Text(answer)
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              color: Theme.of(context).colorScheme.tertiary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      color: Colors.transparent,
                      child: Icon(Icons.arrow_back,
                          size: 25,
                          color: Theme.of(context).colorScheme.primaryContainer),
                    ),
                  ),
                  Container(
                    width: 100,
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/decyfir_logo_white.png'),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('FAQ',
                      style: TextStyle(
                          fontSize: 25,
                          color: Theme.of(context).colorScheme.secondary)),
                  const SizedBox(height: 8),
                  Text('Troubleshoot your issues',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 190,
              child: ListView.builder(
                  itemCount: Constants.faqList.length,
                  itemBuilder: (context, index) => faqElement(
                    context,
                      Constants.faqList[index].question,
                      Constants.faqList[index].answer)),
            )
          ],
        ),
      ),
    ));
  }
}
