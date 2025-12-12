// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'game_screen.dart';
import 'game_data.dart';
import 'services/level_progress_service.dart';
import 'utils/help_dialog.dart';

class SynonymGameHomeScreen extends StatefulWidget {
  const SynonymGameHomeScreen({super.key});

  @override
  State<SynonymGameHomeScreen> createState() => _SynonymGameHomeScreenState();
}

class _SynonymGameHomeScreenState extends State<SynonymGameHomeScreen> {
  final LevelProgressService _progressService = LevelProgressService.instance;
  int? selectedLevel; // Track the selected level
  bool showing = false;

  @override
  void initState() {
    super.initState();
    // Set the default selected level to the highest unlocked level
    _setDefaultSelectedLevel();
  }

  void _setDefaultSelectedLevel() {
    final highestCompleted = _progressService.getHighestLevelCompleted();
    // Select the next level after the highest completed, or level 1 if none completed
    selectedLevel = highestCompleted + 1;
    // Make sure we don't exceed total levels
    if (selectedLevel! > GameData.getTotalLevels()) {
      selectedLevel = GameData.getTotalLevels();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/homeback.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(color: const Color.fromARGB(255, 32, 1, 52));
              },
            ),
          ),
          // Content
          SafeArea(
            child: Column(
              children: [
                // Top section with navigation and game preview
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        // Navigation bar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => {},
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                width: 30,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                // Total Score Display
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        'assets/images/score.png',
                                        width: 20,
                                        height: 20,
                                        fit: BoxFit.contain,
                                        errorBuilder: (
                                          context,
                                          error,
                                          stackTrace,
                                        ) {
                                          return SizedBox(
                                            child: Icon(
                                              Icons.workspace_premium,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          );
                                        },
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '${_progressService.getTotalScore()}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 8),
                                GestureDetector(
                                  onTap: () {
                                    showHelpDialog(context);
                                  },
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/help.png',
                                      fit: BoxFit.contain,
                                      errorBuilder: (
                                        context,
                                        error,
                                        stackTrace,
                                      ) {
                                        return Container();
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showing = !showing;
                                    });
                                    if (showing) {
                                      Share.share(
                                        'Check out Synonym match Game! Test your english skills and find Synonyms quickly. Download now!',
                                        subject: 'Play Synonym match Game!',
                                      );
                                    }
                                  },
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/share.png',
                                      fit: BoxFit.contain,
                                      errorBuilder: (
                                        context,
                                        error,
                                        stackTrace,
                                      ) {
                                        return Container();
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        // Game preview area - Synonym display
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Different',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),

                                  const SizedBox(height: 8),
                                  Container(
                                    width: 200,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(
                                        0xFF8E8E93,
                                      ).withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'is a Synonym of',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Answer options
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF34C759),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Dissimilar',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Container(
                                        width: 120,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(
                                            0xFF8E8E93,
                                          ).withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Occasionally',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(
                                            0xFF8E8E93,
                                          ).withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Often',
                                            style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Container(
                                        width: 120,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(
                                            0xFF8E8E93,
                                          ).withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Very Often',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Bottom sheet
                Expanded(
                  flex: 8,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header section
                          const Text(
                            'Games',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF007AFF),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Synonym Match',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Levels section
                          const Text(
                            'Levels',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Level selector
                          SizedBox(
                            height: 80,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  GameData.getTotalLevels(), // Use dynamic level count
                              itemBuilder: (context, index) {
                                final levelNumber = index + 1;
                                final isCompleted = _progressService
                                    .isLevelCompleted(levelNumber);
                                final isUnlocked = _progressService
                                    .isLevelUnlocked(levelNumber);

                                return Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: LevelItem(
                                    levelNumber: levelNumber,
                                    isCompleted: isCompleted,
                                    isUnlocked: isUnlocked,
                                    isSelected: selectedLevel == levelNumber,
                                    onTap: () {
                                      // Select level instead of navigating
                                      setState(() {
                                        selectedLevel = levelNumber;
                                      });
                                    },
                                  ),
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 8),

                          // Benefits section (scrollable)
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Benefits',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 16),

                                  const BenefitItem(
                                    icon: Icons.psychology_outlined,
                                    title: 'Improved Vocabulary',
                                    description:
                                        'Expand your word knowledge and learn new synonyms that enhance your language comprehension.',
                                  ),
                                  const SizedBox(height: 16),
                                  const BenefitItem(
                                    icon: Icons.flash_on_outlined,
                                    title: 'Cognitive Flexibility',
                                    description:
                                        'Boost your brain’s ability to switch between different concepts quickly and efficiently, improving mental agility.',
                                  ),

                                  const SizedBox(height: 16),
                                  const BenefitItem(
                                    icon: Icons.timer_outlined,
                                    title: 'Quick Thinking Mindset',
                                    description:
                                        'Boost the speed at which you perform while thinking the Synonyms.',
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Start button (fixed at bottom)
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed:
                                  selectedLevel != null
                                      ? () {
                                        // Start game with selected level
                                        _startSynonymGame(
                                          context,
                                          selectedLevel!,
                                        );
                                      }
                                      : null, // Disable if no level selected
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF007AFF),
                                foregroundColor: Colors.white,
                                disabledBackgroundColor: Colors.grey,
                                disabledForegroundColor: Colors.white60,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Text(
                                selectedLevel != null
                                    ? 'Start Level $selectedLevel'
                                    : 'Select a Level to Start',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _startSynonymGame(BuildContext context, int level) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SynonymGameScreen(level: level)),
    );
    // Refresh the UI when returning from the game to show updated progress
    setState(() {
      _setDefaultSelectedLevel(); // Update selected level after returning
    });
  }
}

class LevelItem extends StatelessWidget {
  final int levelNumber;
  final bool isCompleted;
  final bool isUnlocked;
  final bool isSelected;
  final VoidCallback? onTap;

  const LevelItem({
    super.key,
    required this.levelNumber,
    required this.isCompleted,
    required this.isUnlocked,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    late Widget icon;

    if (isCompleted) {
      // Completed level - green check
      icon = Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color:
              isSelected
                  ? Color(0xFF34C759)
                  : Color(0xFF34C759).withOpacity(0.4),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: isSelected ? Colors.green : Colors.transparent,
            width: 3,
          ),
        ),
        child: const Icon(Icons.check, color: Colors.white, size: 24),
      );
    } else if (isUnlocked) {
      // Playable level - blue play
      icon = Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color:
              isSelected
                  ? Color(0xFF007AFF)
                  : Color(0xFF007AFF).withOpacity(0.4),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.transparent,
            width: 3,
          ),
        ),
        child: const Icon(Icons.play_arrow, color: Colors.white, size: 24),
      );
    } else {
      // Locked level - grey lock
      icon = Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Color(0xFFD1D1D6),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: const Icon(Icons.lock, color: Colors.white, size: 24),
      );
    }

    return GestureDetector(
      onTap: isUnlocked ? onTap : null,
      child: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            icon,
            const SizedBox(height: 4),
            Text(
              '$levelNumber',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BenefitItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const BenefitItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: Color(0xFF007AFF),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6D6D80),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
