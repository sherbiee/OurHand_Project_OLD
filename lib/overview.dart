class Sign {
  String label;
  String imageUrl;
  List<SignInfo> infos;

  Sign(
      this.label,
      this.imageUrl,
      this.infos,
      );

// TODO; Add List<Sign> here
  static List<Sign> samples = [
    Sign(
      'Hello',
      'assets/hello.jpg',
      [
        SignInfo('To greet someone with a hello, make the sign by extending your fingers and crossing your thumb in front of your palm. Now take the hand, starting with your hand in front of your ear, and extend it outward and away from your body.'
      'Finally, smile! Emotional signs like hello are learned as much from your body language as from the actual signs.',)
      ],
    ),
    Sign(
      'Good bye',
      'assets/goodbye.jpg',
      [
        SignInfo('Goodbye is the same as the traditional gesture for the word. Open your palm, folding down your fingers, then open your palm again. An ASL alternative for goodbye or bye-bye is to wave your open hand sideways, like a leaf swaying in the wind.',)
      ],
    ),
    Sign(
      'Please',
      'assets/please.jpg',
      [
        SignInfo('To sign please, take your dominant hand with fingers extended and held together, and thumb extended and sticking out. Take the hand with the palm facing in and rub it in a circle on your chest.',)
      ],
    ),
    Sign(
      'Thank you',
      'assets/thankyou.jpg',
      [
        SignInfo('To sign thank you, extend your fingers and thumb. Touch your fingers to your chin and bring your fingers forward. It is almost like you are blowing a kiss out, to thank the person - but the sign is a bit lower.',)
      ],
    ),
    Sign(
      'Yes',
      'assets/yes.jpg',
      [
        SignInfo('The yes sign looks a head-nodding yes. You take your hand and make it into a fist, holding it at about shoulder height, then make your fist bob back and forth.',)
      ],
    ),
    Sign(
      'No',
      'assets/no.jpg',
      [
        SignInfo('The sign for no is like that scolding teacher in high school that always says no to everything. The sign looks like a mouth saying no. Take your index finger together with your middle finger and tap them together with your thumb.',)
      ],
    ),
    Sign(
      'You are welcome',
      'assets/yourewelcome.jpg',
      [
        SignInfo('You’re welcome is signed the same way as Thank you. Take your flat, open, dominant hand, and starting from your chin, take your hand out as it arcs down and away from your face. It is as if you are acknowledging that your baby has thanked you, so you are mirroring the polite gesture back, like thanking them for thanking you!',)
      ],
    ),
    Sign(
      'Sorry',
      'assets/sorry.jpg',
      [
        SignInfo('To sign sorry, make your hand into a fist and rub it in a circular motion across your chest. It is like you are rubbing around your heart because you are truly sorry.',)
      ],
    ),
    Sign(
      'I love you',
      'assets/iloveyou.jpg',
      [
        SignInfo('To sign I love you, put up your thumb, index finger, and pinkie finger, while keeping your ring finger and your middle finger down. Hold the hand out, palm facing away from you ,and move it back and forth slightly.',)
      ],
    ),
  ];
}

class SignInfo {
  String name;

  SignInfo(
      this.name,);
}
