import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
  Story(
      storyTitle:
      'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      firstChoice: 'I\'ll hop in. Thanks for the help!',
      secondChoice: 'Better ask him if he\'s a murderer first.'),
  Story(
      storyTitle: 'He nods slowly, unphased by the question.',
      firstChoice: 'At least he\'s honest. I\'ll climb in.',
      secondChoice: 'Wait, I know how to change a tire.'),
  Story(
      storyTitle:
      'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      firstChoice: 'I love Elton John! Hand him the cassette tape.',
      secondChoice: 'It\'s him or me! You take the knife and stab him.'),
  Story(
      storyTitle:
      'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      firstChoice: 'Restart',
      secondChoice: ''),
  Story(
      storyTitle:
      'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      firstChoice: 'Restart',
      secondChoice: ''),
  Story(
      storyTitle:
      'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      firstChoice: 'Restart',
      secondChoice: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getFirstChoice() {
    return _storyData[_storyNumber].firstChoice;
  }

  String getSecondChoice(int storyNumber) {
    return _storyData[_storyNumber].secondChoice;
  }

  void nextStory(int choiceNumber) {
    Map<int, Map<int, int>> _storyPlan = {
      0: { 1: 2, 2: 1 },
      1: { 1: 2, 2: 3 },
      2: { 1: 5, 2: 4 },
      3: { 1: 0, 2: 0 },
      4: { 1: 0, 2: 0 },
      5: { 1: 0, 2: 0 },
    };

    _storyNumber = _storyPlan[_storyNumber][choiceNumber];
  }

  bool buttonShouldVisible() {
    return _storyNumber <= 2;
  }
}
