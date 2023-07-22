import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: currentStep,
      onStepTapped: (value) {
        setState(() {
          currentStep = value;
        });
      },
      onStepContinue: () {
        if (currentStep <= 1) {
          currentStep += 1;
          setState(() {});
        }
      },
      onStepCancel: () {
        if (currentStep > 0) {
          currentStep -= 1;
          setState(() {});
        }
      },
      steps: const <Step>[
        Step(
          title: Text('Step 1 Title'),
          subtitle: Text('Step 1 Subtitle'),
          content: Text('Step 1 Content'),
          isActive: true,
        ),
        Step(
          title: Text('Step 2 Title'),
          subtitle: Text('Step 2 Subtitle'),
          content: Text('Step 2 Content'),
          isActive: true,
        ),
        Step(
          title: Text('Step 3 Title'),
          subtitle: Text('Step 3 Subtitle'),
          content: Text('Step 3 Content'),
        ),
      ],
    );
  }
}
