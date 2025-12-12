class GameQuestion {
  final String equation;
  final String correctAnswer;
  final List<String> options;

  const GameQuestion({
    required this.equation,
    required this.correctAnswer,
    required this.options,
  });
}

class GameLevel {
  final int level;
  final List<GameQuestion> questions; 
  final List<GameQuestion> questionPool; 
  final int timeLimit; 
  final int pointsPerCorrect;

  const GameLevel({
    required this.level,
    required this.questions,
    required this.questionPool,
    this.timeLimit = 60,
    this.pointsPerCorrect = 10,
  });
}

class GameData {
  static const int roundsPerLevel = 7;

  static const List<GameLevel> levels = [
    // Level 1 - Basic Addition
    GameLevel(
  level: 1,
  questions: [
    GameQuestion(equation: "Happy", correctAnswer: "Joyful", options: ["Sad", "Joyful", "Angry", "Weak"]),
    GameQuestion(equation: "Big", correctAnswer: "Large", options: ["Large", "Small", "Thin", "Tiny"]),
    GameQuestion(equation: "Fast", correctAnswer: "Quick", options: ["Slow", "Late", "Quick", "Calm"]),
    GameQuestion(equation: "End", correctAnswer: "Finish", options: ["Start", "Finish", "Lose", "Change"]),
    GameQuestion(equation: "Smart", correctAnswer: "Clever", options: ["Dumb", "Lazy", "Cold", "Clever"]),
    GameQuestion(equation: "Start", correctAnswer: "Begin", options: ["Begin", "Stop", "Close", "Delay"]),
    GameQuestion(equation: "Cold", correctAnswer: "Chilly", options: ["Warm", "Hot", "Chilly", "Dry"]),
  ],
  questionPool: [
    GameQuestion(equation: "Small", correctAnswer: "Tiny", options: ["Huge", "Tiny", "Wide", "Long"]),
    GameQuestion(equation: "Angry", correctAnswer: "Mad", options: ["Happy", "Mad", "Cool", "Calm"]),
    GameQuestion(equation: "Quiet", correctAnswer: "Silent", options: ["Noisy", "Loud", "Silent", "Wild"]),
    GameQuestion(equation: "Wrong", correctAnswer: "Incorrect", options: ["Right", "Incorrect", "Clear", "Open"]),
    GameQuestion(equation: "Hard", correctAnswer: "Difficult", options: ["Soft", "Light", "Difficult", "Easy"]),
  ],
),


    GameLevel(
  level: 2,
  questions: [
    GameQuestion(equation: "Help", correctAnswer: "Assist", options: ["Hurt", "Assist", "Ignore", "Delay"]),
    GameQuestion(equation: "Wait", correctAnswer: "Pause", options: ["Pause", "Run", "Jump", "Move"]),
    GameQuestion(equation: "Lucky", correctAnswer: "Fortunate", options: ["Unlucky", "Sad", "Fortunate", "Late"]),
    GameQuestion(equation: "Clean", correctAnswer: "Neat", options: ["Dirty", "Old", "Weak", "Neat"]),
    GameQuestion(equation: "Brave", correctAnswer: "Fearless", options: ["Coward", "Quiet", "Fearless", "Lazy"]),
    GameQuestion(equation: "Calm", correctAnswer: "Peaceful", options: ["Angry", "Peaceful", "Fast", "Sharp"]),
    GameQuestion(equation: "Safe", correctAnswer: "Secure", options: [ "Secure", "Risky", "Open", "Weak"]),
  ],
  questionPool: [
    GameQuestion(equation: "Funny", correctAnswer: "Amusing", options: ["Boring", "Amusing", "Sad", "Weak"]),
    GameQuestion(equation: "Fresh", correctAnswer: "New", options: ["Old", "New", "Used", "Dry"]),
    GameQuestion(equation: "Bright", correctAnswer: "Shiny", options: ["Dark", "Low", "Shiny", "Weak"]),
    GameQuestion(equation: "True", correctAnswer: "Correct", options: ["False", "Correct", "Fake", "Wrong"]),
    GameQuestion(equation: "Honest", correctAnswer: "Truthful", options: ["Lying", "Rude", "Truthful", "Shy"]),
  ],
),

   GameLevel(
  level: 3,
  questions: [
    GameQuestion(equation: "Choose", correctAnswer: "Select", options: ["Avoid", "Select", "Drop", "Lose"]),
    GameQuestion(equation: "Fix", correctAnswer: "Repair", options: ["Break", "Repair", "Hide", "Throw"]),
    GameQuestion(equation: "Protect", correctAnswer: "Guard", options: ["Attack", "Ignore", "Guard", "Harm"]),
    GameQuestion(equation: "Rich", correctAnswer: "Wealthy", options: ["Poor", "Wealthy", "Weak", "Low"]),
    GameQuestion(equation: "Strong", correctAnswer: "Powerful", options: ["Soft", "Slow", "Powerful", "Lazy"]),
    GameQuestion(equation: "Tired", correctAnswer: "Exhausted", options: ["Fresh", "Exhausted", "Fast", "Sharp"]),
    GameQuestion(equation: "Build", correctAnswer: "Construct", options: ["Destroy", "Hide", "Construct", "Break"]),
  ],
  questionPool: [
    GameQuestion(equation: "Help", correctAnswer: "Aid", options: ["Block", "Aid", "Push", "Delay"]),
    GameQuestion(equation: "Wide", correctAnswer: "Broad", options: ["Narrow", "Broad", "Thin", "Deep"]),
    GameQuestion(equation: "Scared", correctAnswer: "Frightened", options: ["Brave", "Calm", "Frightened", "Warm"]),
    GameQuestion(equation: "Wrong", correctAnswer: "Mistaken", options: ["Correct", "Mistaken", "Perfect", "Neat"]),
    GameQuestion(equation: "End", correctAnswer: "Conclude", options: ["Begin", "Start", "Conclude", "Open"]),
  ],
),


    // Level 4 - Synonyms
    GameLevel(
      level: 4,
      questions: [
        GameQuestion(equation: "Calm", correctAnswer: "Quiet", options: ["Loud", "Quiet", "Angry", "Fast"]),
        GameQuestion(equation: "Brief", correctAnswer: "Short", options: ["Long", "Short", "Wide", "Tall"]),
        GameQuestion(equation: "Frighten", correctAnswer: "Scare", options: ["Calm", "Help", "Scare", "Clean"]),
        GameQuestion(equation: "Huge", correctAnswer: "Enormous", options: ["Tiny", "Enormous", "Thin", "Weak"]),
        GameQuestion(equation: "Polite", correctAnswer: "Courteous", options: ["Rude", "Lazy", "Courteous", "Angry"]),
        GameQuestion(equation: "Harm", correctAnswer: "Damage", options: ["Help", "Damage", "Fix", "Build"]),
        GameQuestion(equation: "Lucky", correctAnswer: "Fortunate", options: ["Unlucky", "Sad", "Fortunate", "Poor"]),
      ],
      questionPool: [
        GameQuestion(equation: "Begin", correctAnswer: "Start", options: ["End", "Start", "Stop", "Close"]),
        GameQuestion(equation: "Tiny", correctAnswer: "Small", options: ["Large", "Small", "Wide", "Tall"]),
        GameQuestion(equation: "Check", correctAnswer: "Inspect", options: ["Ignore", "Break", "Inspect", "Hide"]),
      ],
    ),

    // Level 5 - Synonyms
    GameLevel(
      level: 5,
      questions: [
        GameQuestion(equation: "Aid", correctAnswer: "Help", options: ["Harm", "Help", "Block", "Ignore"]),
        GameQuestion(equation: "Aware", correctAnswer: "Conscious", options: ["Asleep", "Conscious", "Unaware", "Blind"]),
        GameQuestion(equation: "Purchase", correctAnswer: "Buy", options: ["Sell", "Return", "Buy", "Trade"]),
        GameQuestion(equation: "Reply", correctAnswer: "Answer", options: ["Ask", "Answer", "Question", "Ignore"]),
        GameQuestion(equation: "Famous", correctAnswer: "Renowned", options: ["Unknown", "Hidden", "Renowned", "Poor"]),
        GameQuestion(equation: "Compete", correctAnswer: "Contest", options: ["Surrender", "Contest", "Quit", "Watch"]),
        GameQuestion(equation: "Fix", correctAnswer: "Repair", options: ["Break", "Destroy", "Repair", "Damage"]),
      ],
      questionPool: [
        GameQuestion(equation: "Move", correctAnswer: "Shift", options: ["Stay", "Shift", "Stop", "Rest"]),
        GameQuestion(equation: "Stop", correctAnswer: "Halt", options: ["Go", "Halt", "Start", "Run"]),
        GameQuestion(equation: "Empty", correctAnswer: "Vacant", options: ["Full", "Packed", "Vacant", "Busy"]),
      ],
    ),

    // Level 6 - Synonyms
    GameLevel(
      level: 6,
      questions: [
        GameQuestion(equation: "Expand", correctAnswer: "Enlarge", options: ["Shrink", "Enlarge", "Reduce", "Contract"]),
        GameQuestion(equation: "Confuse", correctAnswer: "Puzzle", options: ["Clarify", "Puzzle", "Explain", "Solve"]),
        GameQuestion(equation: "Trust", correctAnswer: "Believe", options: ["Doubt", "Suspect", "Believe", "Deny"]),
        GameQuestion(equation: "Protect", correctAnswer: "Guard", options: ["Attack", "Guard", "Expose", "Harm"]),
        GameQuestion(equation: "Silent", correctAnswer: "Quiet", options: ["Loud", "Noisy", "Quiet", "Vocal"]),
        GameQuestion(equation: "Obtain", correctAnswer: "Acquire", options: ["Lose", "Acquire", "Give", "Discard"]),
        GameQuestion(equation: "Demand", correctAnswer: "Require", options: ["Offer", "Give", "Require", "Donate"]),
      ],
      questionPool: [
        GameQuestion(equation: "Eager", correctAnswer: "Excited", options: ["Bored", "Excited", "Tired", "Lazy"]),
        GameQuestion(equation: "Select", correctAnswer: "Choose", options: ["Reject", "Choose", "Refuse", "Avoid"]),
        GameQuestion(equation: "Brave", correctAnswer: "Courageous", options: ["Cowardly", "Fearful", "Courageous", "Timid"]),
        
      ],
    ),

    // Level 7 - Synonyms
    GameLevel(
      level: 7,
      questions: [
        GameQuestion(equation: "Accurate", correctAnswer: "Precise", options: ["Wrong", "Precise", "Vague", "Loose"]),
        GameQuestion(equation: "Assume", correctAnswer: "Suppose", options: ["Know", "Suppose", "Prove", "Confirm"]),
        GameQuestion(equation: "Declare", correctAnswer: "Announce", options: ["Hide", "Conceal", "Announce", "Whisper"]),
        GameQuestion(equation: "Harsh", correctAnswer: "Severe", options: ["Gentle", "Severe", "Mild", "Soft"]),
        GameQuestion(equation: "Rare", correctAnswer: "Uncommon", options: ["Common", "Frequent", "Uncommon", "Regular"]),
        GameQuestion(equation: "Rapid", correctAnswer: "Quick", options: ["Slow", "Quick", "Delayed", "Late"]),
        GameQuestion(equation: "Complex", correctAnswer: "Complicated", options: ["Simple", "Easy", "Complicated", "Basic"]),
      ],
      questionPool: [
        GameQuestion(equation: "Reject", correctAnswer: "Refuse", options: ["Accept", "Refuse", "Allow", "Permit"]),
        GameQuestion(equation: "Predict", correctAnswer: "Foresee", options: ["Recall", "Foresee", "Remember", "Forget"]),
        GameQuestion(equation: "Wealthy", correctAnswer: "Rich", options: ["Poor", "Broke", "Rich", "Needy"]),
      ],
    ),

    // Level 8 - Synonyms
    GameLevel(
      level: 8,
      questions: [
        GameQuestion(equation: "Emerge", correctAnswer: "Appear", options: ["Vanish", "Appear", "Hide", "Disappear"]),
        GameQuestion(equation: "Illustrate", correctAnswer: "Explain", options: ["Confuse", "Explain", "Hide", "Obscure"]),
        GameQuestion(equation: "Scarce", correctAnswer: "Limited", options: ["Abundant", "Plentiful", "Limited", "Many"]),
        GameQuestion(equation: "Maintain", correctAnswer: "Preserve", options: ["Destroy", "Preserve", "Ruin", "Damage"]),
        GameQuestion(equation: "Emphasize", correctAnswer: "Highlight", options: ["Downplay", "Minimize", "Highlight", "Ignore"]),
        GameQuestion(equation: "Reluctant", correctAnswer: "Unwilling", options: ["Eager", "Unwilling", "Ready", "Willing"]),
        GameQuestion(equation: "Generate", correctAnswer: "Produce", options: ["Consume", "Destroy", "Produce", "Waste"]),
      ],
      questionPool: [
        GameQuestion(equation: "Numerous", correctAnswer: "Many", options: ["Few", "Many", "Rare", "Scarce"]),
        GameQuestion(equation: "Gradual", correctAnswer: "Slow", options: ["Fast", "Slow", "Rapid", "Quick"]),
        GameQuestion(equation: "Suitable", correctAnswer: "Appropriate", options: ["Wrong", "Improper", "Appropriate", "Unfit"]),
      ],
    ),

    // Level 9 - Synonyms
    GameLevel(
      level: 9,
      questions: [
        GameQuestion(equation: "Conceal", correctAnswer: "Hide", options: ["Reveal", "Hide", "Show", "Display"]),
        GameQuestion(equation: "Immense", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Little"]),
        GameQuestion(equation: "Neglect", correctAnswer: "Ignore", options: ["Care", "Attend", "Ignore", "Notice"]),
        GameQuestion(equation: "Interpret", correctAnswer: "Explain", options: ["Confuse", "Explain", "Hide", "Obscure"]),
        GameQuestion(equation: "Delicate", correctAnswer: "Fragile", options: ["Strong", "Tough", "Fragile", "Sturdy"]),
        GameQuestion(equation: "Sufficient", correctAnswer: "Enough", options: ["Lacking", "Enough", "Short", "Insufficient"]),
        GameQuestion(equation: "Conclude", correctAnswer: "Finish", options: ["Start", "Begin", "Finish", "Open"]),
      ],
      questionPool: [
        GameQuestion(equation: "Dominate", correctAnswer: "Control", options: ["Surrender", "Control", "Submit", "Yield"]),
        GameQuestion(equation: "Tolerate", correctAnswer: "Endure", options: ["Reject", "Endure", "Refuse", "Quit"]),
        GameQuestion(equation: "Oppose", correctAnswer: "Resist", options: ["Support", "Accept", "Resist", "Allow"]),
      ],
    ),

    // Level 10 - Synonyms (Challenge Level)
    GameLevel(
      level: 10,
      questions: [
        GameQuestion(equation: "Compassion", correctAnswer: "Kindness", options: ["Cruelty", "Kindness", "Hatred", "Meanness"]),
        GameQuestion(equation: "Deteriorate", correctAnswer: "Decline", options: ["Improve", "Decline", "Enhance", "Strengthen"]),
        GameQuestion(equation: "Eloquent", correctAnswer: "Fluent", options: ["Stuttering", "Awkward", "Fluent", "Clumsy"]),
        GameQuestion(equation: "Imitate", correctAnswer: "Copy", options: ["Create", "Copy", "Invent", "Originate"]),
        GameQuestion(equation: "Ponder", correctAnswer: "Reflect", options: ["Ignore", "Dismiss", "Reflect", "Forget"]),
        GameQuestion(equation: "Restrict", correctAnswer: "Limit", options: ["Free", "Limit", "Release", "Expand"]),
        GameQuestion(equation: "Summon", correctAnswer: "Call", options: ["Dismiss", "Call", "Send", "Release"]),
      ],
      questionPool: [
        GameQuestion(equation: "Tranquil", correctAnswer: "Peaceful", options: ["Chaotic", "Peaceful", "Noisy", "Turbulent"]),
        GameQuestion(equation: "Vivid", correctAnswer: "Clear", options: ["Dull", "Vague", "Clear", "Blurry"]),
        GameQuestion(equation: "Transparent", correctAnswer: "See-through", options: ["Opaque", "See-through", "Solid", "Dark"]),
      ],
    ),

    // Level 11 - Synonyms
    GameLevel(
      level: 11,
      questions: [
        GameQuestion(equation: "Amateur", correctAnswer: "Novice", options: ["Expert", "Novice", "Master", "Professional"]),
        GameQuestion(equation: "Cautious", correctAnswer: "Careful", options: ["Careful", "Reckless", "Careless", "Bold"]),
        GameQuestion(equation: "Commence", correctAnswer: "Begin", options: ["End", "Stop", "Begin", "Finish"]),
        GameQuestion(equation: "Deny", correctAnswer: "Refuse", options: ["Accept", "Refuse", "Admit", "Agree"]),
        GameQuestion(equation: "Hasten", correctAnswer: "Hurry", options: ["Delay", "Wait", "Hurry", "Slow"]),
        GameQuestion(equation: "Justify", correctAnswer: "Prove", options: ["Disprove", "Prove", "Question", "Doubt"]),
        GameQuestion(equation: "Obvious", correctAnswer: "Clear", options: ["Hidden", "Clear", "Vague", "Unclear"]),
      ],
      questionPool: [
        GameQuestion(equation: "Permit", correctAnswer: "Allow", options: ["Allow", "Forbid", "Deny", "Block"]),
        GameQuestion(equation: "Reduce", correctAnswer: "Decrease", options: ["Increase", "Expand", "Decrease", "Grow"]),
        GameQuestion(equation: "Unique", correctAnswer: "One-of-a-kind", options: ["Common", "Ordinary", "One-of-a-kind", "Typical"]),
      ],
    ),

    // Level 12 - Synonyms
    GameLevel(
      level: 12,
      questions: [
        GameQuestion(equation: "Adapt", correctAnswer: "Adjust", options: ["Adjust", "Resist", "Refuse", "Reject"]),
        GameQuestion(equation: "Cease", correctAnswer: "Stop", options: ["Continue", "Stop", "Start", "Begin"]),
        GameQuestion(equation: "Decade", correctAnswer: "Ten years", options: ["Ten years", "Year", "Century", "Month"]),
        GameQuestion(equation: "Devote", correctAnswer: "Dedicate", options: ["Neglect", "Ignore", "Dedicate", "Abandon"]),
        GameQuestion(equation: "Eternal", correctAnswer: "Everlasting", options: ["Temporary", "Brief", "Everlasting", "Short"]),
        GameQuestion(equation: "Fragile", correctAnswer: "Breakable", options: ["Breakable", "Strong", "Sturdy", "Tough"]),
        GameQuestion(equation: "Hostile", correctAnswer: "Unfriendly", options: ["Friendly", "Kind", "Unfriendly", "Welcoming"]),
      ],
      questionPool: [
        GameQuestion(equation: "Infer", correctAnswer: "Conclude", options: ["Guess", "Conclude", "Wonder", "Question"]),
        GameQuestion(equation: "Mourn", correctAnswer: "Grieve", options: ["Celebrate", "Grieve", "Rejoice", "Enjoy"]),
        GameQuestion(equation: "Vast", correctAnswer: "Huge", options: ["Tiny", "Small", "Huge", "Little"]),
      ],
    ),

    // Level 13 - Synonyms
    GameLevel(
      level: 13,
      questions: [
        GameQuestion(equation: "Abandon", correctAnswer: "Leave", options: ["Stay", "Leave", "Remain", "Keep"]),
        GameQuestion(equation: "Accumulate", correctAnswer: "Collect", options: ["Scatter", "Collect", "Disperse", "Lose"]),
        GameQuestion(equation: "Clever", correctAnswer: "Smart", options: ["Smart", "Dumb", "Foolish", "Stupid"]),
        GameQuestion(equation: "Detect", correctAnswer: "Discover", options: ["Hide", "Conceal", "Discover", "Miss"]),
        GameQuestion(equation: "Feeble", correctAnswer: "Weak", options: ["Strong", "Weak", "Powerful", "Mighty"]),
        GameQuestion(equation: "Genuine", correctAnswer: "Real", options: ["Fake", "False", "Real", "Counterfeit"]),
        GameQuestion(equation: "Humble", correctAnswer: "Modest", options: ["Modest", "Arrogant", "Proud", "Boastful"]),
      ],
      questionPool: [
        GameQuestion(equation: "Impose", correctAnswer: "Enforce", options: ["Remove", "Enforce", "Cancel", "Withdraw"]),
        GameQuestion(equation: "Massive", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Little"]),
        GameQuestion(equation: "Triumph", correctAnswer: "Victory", options: ["Victory", "Defeat", "Loss", "Failure"]),
      ],
    ),

    // Level 14 - Synonyms
    GameLevel(
      level: 14,
      questions: [
        GameQuestion(equation: "Absurd", correctAnswer: "Ridiculous", options: ["Logical", "Ridiculous", "Sensible", "Reasonable"]),
        GameQuestion(equation: "Alert", correctAnswer: "Watchful", options: ["Watchful", "Sleepy", "Careless", "Unaware"]),
        GameQuestion(equation: "Alter", correctAnswer: "Change", options: ["Keep", "Change", "Maintain", "Preserve"]),
        GameQuestion(equation: "Barrier", correctAnswer: "Obstacle", options: ["Opening", "Path", "Obstacle", "Gateway"]),
        GameQuestion(equation: "Blunder", correctAnswer: "Mistake", options: ["Success", "Mistake", "Achievement", "Victory"]),
        GameQuestion(equation: "Cease", correctAnswer: "Stop", options: ["Continue", "Stop", "Start", "Proceed"]),
        GameQuestion(equation: "Dispute", correctAnswer: "Argument", options: ["Argument", "Agreement", "Harmony", "Peace"]),
      ],
      questionPool: [
        GameQuestion(equation: "Grasp", correctAnswer: "Understand", options: ["Confuse", "Understand", "Misunderstand", "Puzzle"]),
        GameQuestion(equation: "Mischievous", correctAnswer: "Naughty", options: ["Good", "Naughty", "Obedient", "Well-behaved"]),
        GameQuestion(equation: "Prosper", correctAnswer: "Succeed", options: ["Fail", "Succeed", "Struggle", "Lose"]),
      ],
    ),

    // Level 15 - Synonyms
    GameLevel(
      level: 15,
      questions: [
        GameQuestion(equation: "Abstract", correctAnswer: "Conceptual", options: ["Concrete", "Conceptual", "Physical", "Tangible"]),
        GameQuestion(equation: "Assist", correctAnswer: "Help", options: ["Help", "Hinder", "Block", "Obstruct"]),
        GameQuestion(equation: "Cautious", correctAnswer: "Careful", options: ["Reckless", "Careful", "Careless", "Hasty"]),
        GameQuestion(equation: "Contradict", correctAnswer: "Oppose", options: ["Support", "Oppose", "Agree", "Confirm"]),
        GameQuestion(equation: "Criticize", correctAnswer: "Judge", options: ["Praise", "Judge", "Compliment", "Admire"]),
        GameQuestion(equation: "Dwell", correctAnswer: "Live", options: ["Leave", "Live", "Depart", "Exit"]),
        GameQuestion(equation: "Eternal", correctAnswer: "Endless", options: ["Endless", "Finite", "Limited", "Brief"]),
      ],
      questionPool: [
        GameQuestion(equation: "Furious", correctAnswer: "Angry", options: ["Calm", "Peaceful", "Angry", "Happy"]),
        GameQuestion(equation: "Immense", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Minute"]),
        GameQuestion(equation: "Reliable", correctAnswer: "Trustworthy", options: ["Unreliable", "Trustworthy", "Doubtful", "Questionable"]),
      ],
    ),

    // Level 16 - Synonyms
    GameLevel(
      level: 16,
      questions: [
        GameQuestion(equation: "Abolish", correctAnswer: "Eliminate", options: ["Establish", "Eliminate", "Create", "Build"]),
        GameQuestion(equation: "Exotic", correctAnswer: "Foreign", options: ["Local", "Foreign", "Native", "Domestic"]),
        GameQuestion(equation: "Illuminate", correctAnswer: "Light up", options: ["Darken", "Light up", "Dim", "Shadow"]),
        GameQuestion(equation: "Indicate", correctAnswer: "Show", options: ["Show", "Hide", "Conceal", "Cover"]),
        GameQuestion(equation: "Inevitable", correctAnswer: "Unavoidable", options: ["Avoidable", "Optional", "Unavoidable", "Preventable"]),
        GameQuestion(equation: "Liberty", correctAnswer: "Freedom", options: ["Slavery", "Freedom", "Captivity", "Prison"]),
        GameQuestion(equation: "Mimic", correctAnswer: "Copy", options: ["Original", "Copy", "Create", "Invent"]),
      ],
      questionPool: [
        GameQuestion(equation: "Optimal", correctAnswer: "Best", options: ["Worst", "Best", "Poor", "Bad"]),
        GameQuestion(equation: "Prevail", correctAnswer: "Win", options: ["Lose", "Fail", "Win", "Surrender"]),
        GameQuestion(equation: "Thrive", correctAnswer: "Grow", options: ["Shrink", "Grow", "Decline", "Wither"]),
      ],
    ),

    // Level 17 - Synonyms
    GameLevel(
      level: 17,
      questions: [
        GameQuestion(equation: "Adequate", correctAnswer: "Sufficient", options: ["Sufficient", "Insufficient", "Lacking", "Poor"]),
        GameQuestion(equation: "Brisk", correctAnswer: "Quick", options: ["Slow", "Quick", "Sluggish", "Lazy"]),
        GameQuestion(equation: "Curb", correctAnswer: "Control", options: ["Release", "Control", "Free", "Liberate"]),
        GameQuestion(equation: "Deviate", correctAnswer: "Stray", options: ["Follow", "Stray", "Adhere", "Stick"]),
        GameQuestion(equation: "Diligent", correctAnswer: "Hardworking", options: ["Lazy", "Hardworking", "Idle", "Careless"]),
        GameQuestion(equation: "Hinder", correctAnswer: "Obstruct", options: ["Help", "Obstruct", "Assist", "Aid"]),
        GameQuestion(equation: "Impulsive", correctAnswer: "Spontaneous", options: ["Planned", "Spontaneous", "Calculated", "Deliberate"]),
      ],
      questionPool: [
        GameQuestion(equation: "Mutual", correctAnswer: "Shared", options: ["Individual", "Shared", "Separate", "Personal"]),
        GameQuestion(equation: "Robust", correctAnswer: "Strong", options: ["Weak", "Strong", "Fragile", "Feeble"]),
        GameQuestion(equation: "Tarnish", correctAnswer: "Damage", options: ["Polish", "Damage", "Clean", "Shine"]),
      ],
    ),

    // Level 18 - Synonyms
    GameLevel(
      level: 18,
      questions: [
        GameQuestion(equation: "Affection", correctAnswer: "Love", options: ["Love", "Hatred", "Dislike", "Contempt"]),
        GameQuestion(equation: "Ambiguous", correctAnswer: "Unclear", options: ["Clear", "Unclear", "Obvious", "Plain"]),
        GameQuestion(equation: "Compel", correctAnswer: "Force", options: ["Suggest", "Force", "Request", "Ask"]),
        GameQuestion(equation: "Deliberate", correctAnswer: "Intentional", options: ["Accidental", "Intentional", "Unplanned", "Random"]),
        GameQuestion(equation: "Endeavor", correctAnswer: "Try", options: ["Quit", "Try", "Abandon", "Surrender"]),
        GameQuestion(equation: "Futile", correctAnswer: "Useless", options: ["Useful", "Useless", "Helpful", "Effective"]),
        GameQuestion(equation: "Harmony", correctAnswer: "Peace", options: ["Conflict", "Peace", "Chaos", "Discord"]),
      ],
      questionPool: [
        GameQuestion(equation: "Obsolete", correctAnswer: "Outdated", options: ["Modern", "Outdated", "Current", "New"]),
        GameQuestion(equation: "Prolong", correctAnswer: "Extend", options: ["Shorten", "Extend", "Cut", "Reduce"]),
        GameQuestion(equation: "Tangible", correctAnswer: "Real", options: ["Imaginary", "Real", "Abstract", "Fictional"]),
      ],
    ),

    // Level 19 - Synonyms
    GameLevel(
      level: 19,
      questions: [
        GameQuestion(equation: "Adhere", correctAnswer: "Stick", options: ["Detach", "Stick", "Separate", "Release"]),
        GameQuestion(equation: "Amend", correctAnswer: "Improve", options: ["Improve", "Worsen", "Damage", "Harm"]),
        GameQuestion(equation: "Commotion", correctAnswer: "Chaos", options: ["Peace", "Chaos", "Calm", "Order"]),
        GameQuestion(equation: "Distort", correctAnswer: "Twist", options: ["Straighten", "Twist", "Correct", "Fix"]),
        GameQuestion(equation: "Elusive", correctAnswer: "Hard to find", options: ["Obvious", "Hard to find", "Clear", "Easy"]),
        GameQuestion(equation: "Grateful", correctAnswer: "Thankful", options: ["Ungrateful", "Thankful", "Resentful", "Bitter"]),
        GameQuestion(equation: "Immerse", correctAnswer: "Submerge", options: ["Surface", "Submerge", "Emerge", "Rise"]),
      ],
      questionPool: [
        GameQuestion(equation: "Reluctant", correctAnswer: "Unwilling", options: ["Eager", "Unwilling", "Willing", "Ready"]),
        GameQuestion(equation: "Retain", correctAnswer: "Keep", options: ["Discard", "Keep", "Throw", "Release"]),
        GameQuestion(equation: "Superior", correctAnswer: "Better", options: ["Worse", "Better", "Inferior", "Lower"]),
      ],
    ),

    // Level 20 - Synonyms
    GameLevel(
      level: 20,
      questions: [
        GameQuestion(equation: "Advocate", correctAnswer: "Supporter", options: ["Opponent", "Supporter", "Enemy", "Critic"]),
        GameQuestion(equation: "Concur", correctAnswer: "Agree", options: ["Disagree", "Agree", "Oppose", "Deny"]),
        GameQuestion(equation: "Defy", correctAnswer: "Resist", options: ["Obey", "Resist", "Submit", "Follow"]),
        GameQuestion(equation: "Elaborate", correctAnswer: "Detailed", options: ["Simple", "Detailed", "Brief", "Short"]),
        GameQuestion(equation: "Fatal", correctAnswer: "Deadly", options: ["Harmless", "Deadly", "Safe", "Gentle"]),
        GameQuestion(equation: "Impede", correctAnswer: "Block", options: ["Help", "Block", "Assist", "Enable"]),
        GameQuestion(equation: "Notion", correctAnswer: "Idea", options: ["Idea", "Fact", "Reality", "Truth"]),
      ],
      questionPool: [
        GameQuestion(equation: "Paramount", correctAnswer: "Most important", options: ["Trivial", "Most important", "Minor", "Unimportant"]),
        GameQuestion(equation: "Refrain", correctAnswer: "Avoid", options: ["Indulge", "Avoid", "Engage", "Participate"]),
        GameQuestion(equation: "Substantial", correctAnswer: "Significant", options: ["Insignificant", "Significant", "Minor", "Trivial"]),
      ],
    ),

    // Level 21 - Synonyms
    GameLevel(
      level: 21,
      questions: [
        GameQuestion(equation: "Abduct", correctAnswer: "Kidnap", options: ["Release", "Kidnap", "Free", "Save"]),
        GameQuestion(equation: "Baffle", correctAnswer: "Confuse", options: ["Clarify", "Confuse", "Explain", "Solve"]),
        GameQuestion(equation: "Candid", correctAnswer: "Honest", options: ["Honest", "Deceitful", "Lying", "False"]),
        GameQuestion(equation: "Conserve", correctAnswer: "Save", options: ["Waste", "Save", "Destroy", "Use"]),
        GameQuestion(equation: "Diminish", correctAnswer: "Reduce", options: ["Increase", "Reduce", "Grow", "Expand"]),
        GameQuestion(equation: "Ecstatic", correctAnswer: "Very happy", options: ["Sad", "Very happy", "Angry", "Upset"]),
        GameQuestion(equation: "Fusion", correctAnswer: "Blend", options: ["Separation", "Blend", "Division", "Split"]),
      ],
      questionPool: [
        GameQuestion(equation: "Imitate", correctAnswer: "Copy", options: ["Create", "Copy", "Invent", "Original"]),
        GameQuestion(equation: "Radiant", correctAnswer: "Glowing", options: ["Dull", "Glowing", "Dark", "Dim"]),
        GameQuestion(equation: "Vacant", correctAnswer: "Empty", options: ["Full", "Empty", "Occupied", "Crowded"]),
      ],
    ),

    // Level 22 - Synonyms
    GameLevel(
      level: 22,
      questions: [
        GameQuestion(equation: "Adorn", correctAnswer: "Decorate", options: ["Strip", "Decorate", "Remove", "Plain"]),
        GameQuestion(equation: "Bewilder", correctAnswer: "Puzzle", options: ["Clarify", "Puzzle", "Explain", "Simplify"]),
        GameQuestion(equation: "Cluster", correctAnswer: "Group", options: ["Scatter", "Group", "Disperse", "Separate"]),
        GameQuestion(equation: "Convey", correctAnswer: "Communicate", options: ["Hide", "Communicate", "Conceal", "Withhold"]),
        GameQuestion(equation: "Defect", correctAnswer: "Flaw", options: ["Perfection", "Flaw", "Strength", "Asset"]),
        GameQuestion(equation: "Expand", correctAnswer: "Enlarge", options: ["Shrink", "Enlarge", "Reduce", "Contract"]),
        GameQuestion(equation: "Frigid", correctAnswer: "Cold", options: ["Hot", "Cold", "Warm", "Mild"]),
      ],
      questionPool: [
        GameQuestion(equation: "Moral", correctAnswer: "Ethical", options: ["Immoral", "Ethical", "Wrong", "Bad"]),
        GameQuestion(equation: "Prompt", correctAnswer: "Quick", options: ["Slow", "Quick", "Late", "Delayed"]),
        GameQuestion(equation: "Verge", correctAnswer: "Edge", options: ["Center", "Edge", "Middle", "Core"]),
      ],
    ),

    // Level 23 - Synonyms
    GameLevel(
      level: 23,
      questions: [
        GameQuestion(equation: "Agile", correctAnswer: "Nimble", options: ["Clumsy", "Nimble", "Slow", "Stiff"]),
        GameQuestion(equation: "Chronicle", correctAnswer: "Record", options: ["Forget", "Record", "Erase", "Ignore"]),
        GameQuestion(equation: "Drought", correctAnswer: "Dryness", options: ["Flood", "Dryness", "Rain", "Moisture"]),
        GameQuestion(equation: "Eternal", correctAnswer: "Endless", options: ["Brief", "Endless", "Temporary", "Short"]),
        GameQuestion(equation: "Glimpse", correctAnswer: "Peek", options: ["Stare", "Peek", "Gaze", "Study"]),
        GameQuestion(equation: "Hinder", correctAnswer: "Block", options: ["Help", "Block", "Aid", "Assist"]),
        GameQuestion(equation: "Impair", correctAnswer: "Damage", options: ["Fix", "Damage", "Repair", "Heal"]),
      ],
      questionPool: [
        GameQuestion(equation: "Merge", correctAnswer: "Combine", options: ["Separate", "Combine", "Divide", "Split"]),
        GameQuestion(equation: "Prohibit", correctAnswer: "Forbid", options: ["Allow", "Forbid", "Permit", "Enable"]),
        GameQuestion(equation: "Vanish", correctAnswer: "Disappear", options: ["Appear", "Disappear", "Show", "Emerge"]),
      ],
    ),

    // Level 24 - Synonyms
    GameLevel(
      level: 24,
      questions: [
        GameQuestion(equation: "Acute", correctAnswer: "Sharp", options: ["Dull", "Sharp", "Blunt", "Mild"]),
        GameQuestion(equation: "Barricade", correctAnswer: "Block", options: ["Open", "Block", "Clear", "Allow"]),
        GameQuestion(equation: "Cease", correctAnswer: "End", options: ["Start", "End", "Begin", "Continue"]),
        GameQuestion(equation: "Conclude", correctAnswer: "Finish", options: ["Begin", "Finish", "Start", "Open"]),
        GameQuestion(equation: "Devour", correctAnswer: "Eat quickly", options: ["Nibble", "Eat quickly", "Taste", "Sip"]),
        GameQuestion(equation: "Emerge", correctAnswer: "Appear", options: ["Hide", "Appear", "Vanish", "Disappear"]),
        GameQuestion(equation: "Haste", correctAnswer: "Hurry", options: ["Delay", "Hurry", "Slowness", "Wait"]),
      ],
      questionPool: [
        GameQuestion(equation: "Orbit", correctAnswer: "Circle", options: ["Square", "Circle", "Line", "Triangle"]),
        GameQuestion(equation: "Prosperous", correctAnswer: "Wealthy", options: ["Poor", "Wealthy", "Broke", "Needy"]),
        GameQuestion(equation: "Vivid", correctAnswer: "Clear", options: ["Vague", "Clear", "Dull", "Faint"]),
      ],
    ),

    // Level 25 - Synonyms
    GameLevel(
      level: 25,
      questions: [
        GameQuestion(equation: "Affluent", correctAnswer: "Wealthy", options: ["Poor", "Wealthy", "Broke", "Needy"]),
        GameQuestion(equation: "Appoint", correctAnswer: "Assign", options: ["Remove", "Assign", "Dismiss", "Fire"]),
        GameQuestion(equation: "Capitulate", correctAnswer: "Surrender", options: ["Fight", "Surrender", "Resist", "Oppose"]),
        GameQuestion(equation: "Credible", correctAnswer: "Believable", options: ["Doubtful", "Believable", "False", "Fake"]),
        GameQuestion(equation: "Defiant", correctAnswer: "Disobedient", options: ["Obedient", "Disobedient", "Compliant", "Submissive"]),
        GameQuestion(equation: "Elevate", correctAnswer: "Raise", options: ["Lower", "Raise", "Drop", "Descend"]),
        GameQuestion(equation: "Fragment", correctAnswer: "Piece", options: ["Whole", "Piece", "Complete", "Total"]),
      ],
      questionPool: [
        GameQuestion(equation: "Impartial", correctAnswer: "Fair", options: ["Biased", "Fair", "Unfair", "Partial"]),
        GameQuestion(equation: "Morbid", correctAnswer: "Gloomy", options: ["Cheerful", "Gloomy", "Happy", "Bright"]),
        GameQuestion(equation: "Sever", correctAnswer: "Cut", options: ["Join", "Cut", "Connect", "Attach"]),
      ],
    ),

    // Level 26 - Synonyms
    GameLevel(
      level: 26,
      questions: [
        GameQuestion(equation: "Abate", correctAnswer: "Decrease", options: ["Increase", "Decrease", "Grow", "Rise"]),
        GameQuestion(equation: "Collide", correctAnswer: "Crash", options: ["Avoid", "Crash", "Miss", "Dodge"]),
        GameQuestion(equation: "Deter", correctAnswer: "Discourage", options: ["Encourage", "Discourage", "Motivate", "Inspire"]),
        GameQuestion(equation: "Elaborate", correctAnswer: "Detailed", options: ["Simple", "Detailed", "Brief", "Basic"]),
        GameQuestion(equation: "Fictitious", correctAnswer: "Fake", options: ["Real", "Fake", "True", "Genuine"]),
        GameQuestion(equation: "Hostile", correctAnswer: "Aggressive", options: ["Friendly", "Aggressive", "Kind", "Gentle"]),
        GameQuestion(equation: "Mutual", correctAnswer: "Shared", options: ["Individual", "Shared", "Personal", "Separate"]),
      ],
      questionPool: [
        GameQuestion(equation: "Obscure", correctAnswer: "Unclear", options: ["Clear", "Unclear", "Obvious", "Plain"]),
        GameQuestion(equation: "Propel", correctAnswer: "Push", options: ["Pull", "Push", "Stop", "Halt"]),
        GameQuestion(equation: "Relish", correctAnswer: "Enjoy", options: ["Dislike", "Enjoy", "Hate", "Despise"]),
      ],
    ),

    // Level 27 - Synonyms
    GameLevel(
      level: 27,
      questions: [
        GameQuestion(equation: "Abrupt", correctAnswer: "Sudden", options: ["Gradual", "Sudden", "Slow", "Smooth"]),
        GameQuestion(equation: "Berate", correctAnswer: "Scold", options: ["Praise", "Scold", "Compliment", "Reward"]),
        GameQuestion(equation: "Coax", correctAnswer: "Persuade", options: ["Force", "Persuade", "Compel", "Demand"]),
        GameQuestion(equation: "Dread", correctAnswer: "Fear", options: ["Love", "Fear", "Desire", "Hope"]),
        GameQuestion(equation: "Exceed", correctAnswer: "Surpass", options: ["Fail", "Surpass", "Fall", "Lack"]),
        GameQuestion(equation: "Hoist", correctAnswer: "Lift", options: ["Lower", "Lift", "Drop", "Fall"]),
        GameQuestion(equation: "Intact", correctAnswer: "Unbroken", options: ["Broken", "Unbroken", "Damaged", "Shattered"]),
      ],
      questionPool: [
        GameQuestion(equation: "Keen", correctAnswer: "Sharp", options: ["Dull", "Sharp", "Blunt", "Weak"]),
        GameQuestion(equation: "Radiate", correctAnswer: "Emit", options: ["Absorb", "Emit", "Take", "Receive"]),
        GameQuestion(equation: "Wary", correctAnswer: "Cautious", options: ["Careless", "Cautious", "Reckless", "Bold"]),
      ],
    ),

    // Level 28 - Synonyms
    GameLevel(
      level: 28,
      questions: [
        GameQuestion(equation: "Acknowledge", correctAnswer: "Admit", options: ["Deny", "Admit", "Refuse", "Reject"]),
        GameQuestion(equation: "Compel", correctAnswer: "Force", options: ["Allow", "Force", "Permit", "Enable"]),
        GameQuestion(equation: "Diligent", correctAnswer: "Hardworking", options: ["Lazy", "Hardworking", "Idle", "Careless"]),
        GameQuestion(equation: "Erode", correctAnswer: "Wear away", options: ["Build", "Wear away", "Strengthen", "Construct"]),
        GameQuestion(equation: "Feeble", correctAnswer: "Weak", options: ["Strong", "Weak", "Powerful", "Mighty"]),
        GameQuestion(equation: "Hospitable", correctAnswer: "Welcoming", options: ["Hostile", "Welcoming", "Unfriendly", "Cold"]),
        GameQuestion(equation: "Legitimate", correctAnswer: "Legal", options: ["Illegal", "Legal", "Wrong", "False"]),
      ],
      questionPool: [
        GameQuestion(equation: "Ponder", correctAnswer: "Think deeply", options: ["Ignore", "Think deeply", "Dismiss", "Forget"]),
        GameQuestion(equation: "Retrieve", correctAnswer: "Recover", options: ["Lose", "Recover", "Drop", "Abandon"]),
        GameQuestion(equation: "Vigorous", correctAnswer: "Energetic", options: ["Weak", "Energetic", "Tired", "Lazy"]),
      ],
    ),

    // Level 29 - Synonyms
    GameLevel(
      level: 29,
      questions: [
        GameQuestion(equation: "Absorb", correctAnswer: "Soak", options: ["Repel", "Soak", "Reject", "Resist"]),
        GameQuestion(equation: "Benevolent", correctAnswer: "Kind", options: ["Cruel", "Kind", "Mean", "Harsh"]),
        GameQuestion(equation: "Commence", correctAnswer: "Begin", options: ["End", "Begin", "Stop", "Finish"]),
        GameQuestion(equation: "Derive", correctAnswer: "Obtain", options: ["Lose", "Obtain", "Give", "Surrender"]),
        GameQuestion(equation: "Entice", correctAnswer: "Attract", options: ["Repel", "Attract", "Deter", "Discourage"]),
        GameQuestion(equation: "Flourish", correctAnswer: "Grow", options: ["Wither", "Grow", "Decay", "Die"]),
        GameQuestion(equation: "Gruesome", correctAnswer: "Horrible", options: ["Pleasant", "Horrible", "Beautiful", "Nice"]),
      ],
      questionPool: [
        GameQuestion(equation: "Hurl", correctAnswer: "Throw", options: ["Catch", "Throw", "Hold", "Keep"]),
        GameQuestion(equation: "Persist", correctAnswer: "Continue", options: ["Stop", "Continue", "Quit", "End"]),
        GameQuestion(equation: "Resume", correctAnswer: "Restart", options: ["Stop", "Restart", "Pause", "End"]),
      ],
    ),

    // Level 30 - Synonyms
    GameLevel(
      level: 30,
      questions: [
        GameQuestion(equation: "Accelerate", correctAnswer: "Speed up", options: ["Slow down", "Speed up", "Stop", "Brake"]),
        GameQuestion(equation: "Confine", correctAnswer: "Restrict", options: ["Free", "Restrict", "Release", "Liberate"]),
        GameQuestion(equation: "Dwell", correctAnswer: "Reside", options: ["Leave", "Reside", "Depart", "Move"]),
        GameQuestion(equation: "Exclaim", correctAnswer: "Shout", options: ["Whisper", "Shout", "Murmur", "Mumble"]),
        GameQuestion(equation: "Illuminate", correctAnswer: "Light up", options: ["Darken", "Light up", "Dim", "Shadow"]),
        GameQuestion(equation: "Meagre", correctAnswer: "Insufficient", options: ["Abundant", "Insufficient", "Plenty", "Enough"]),
        GameQuestion(equation: "Neglect", correctAnswer: "Ignore", options: ["Care", "Ignore", "Attend", "Notice"]),
      ],
      questionPool: [
        GameQuestion(equation: "Plausible", correctAnswer: "Believable", options: ["Unbelievable", "Believable", "Doubtful", "False"]),
        GameQuestion(equation: "Reproach", correctAnswer: "Blame", options: ["Praise", "Blame", "Compliment", "Reward"]),
        GameQuestion(equation: "Thrive", correctAnswer: "Develop", options: ["Decline", "Develop", "Fail", "Worsen"]),
      ],
    ),

    // Level 31 - Synonyms
    GameLevel(
      level: 31,
      questions: [
        GameQuestion(equation: "Abundant", correctAnswer: "Plenty", options: ["Scarce", "Plenty", "Limited", "Few"]),
        GameQuestion(equation: "Curb", correctAnswer: "Control", options: ["Release", "Control", "Free", "Allow"]),
        GameQuestion(equation: "Detest", correctAnswer: "Hate", options: ["Love", "Hate", "Adore", "Like"]),
        GameQuestion(equation: "Emit", correctAnswer: "Release", options: ["Absorb", "Release", "Contain", "Hold"]),
        GameQuestion(equation: "Frenzy", correctAnswer: "Madness", options: ["Calm", "Madness", "Peace", "Serenity"]),
        GameQuestion(equation: "Jeopardy", correctAnswer: "Danger", options: ["Safety", "Danger", "Security", "Protection"]),
        GameQuestion(equation: "Lofty", correctAnswer: "High", options: ["Low", "High", "Short", "Below"]),
      ],
      questionPool: [
        GameQuestion(equation: "Pledge", correctAnswer: "Promise", options: ["Break", "Promise", "Betray", "Abandon"]),
        GameQuestion(equation: "Robust", correctAnswer: "Strong", options: ["Weak", "Strong", "Fragile", "Feeble"]),
        GameQuestion(equation: "Withstand", correctAnswer: "Resist", options: ["Surrender", "Resist", "Yield", "Give"]),
      ],
    ),

    // Level 32 - Synonyms
    GameLevel(
      level: 32,
      questions: [
        GameQuestion(equation: "Acquire", correctAnswer: "Obtain", options: ["Lose", "Obtain", "Give", "Surrender"]),
        GameQuestion(equation: "Beckon", correctAnswer: "Call", options: ["Dismiss", "Call", "Ignore", "Reject"]),
        GameQuestion(equation: "Commotion", correctAnswer: "Turmoil", options: ["Peace", "Turmoil", "Calm", "Quiet"]),
        GameQuestion(equation: "Discard", correctAnswer: "Throw away", options: ["Keep", "Throw away", "Save", "Preserve"]),
        GameQuestion(equation: "Exquisite", correctAnswer: "Beautiful", options: ["Ugly", "Beautiful", "Plain", "Dull"]),
        GameQuestion(equation: "Impulsive", correctAnswer: "Sudden", options: ["Planned", "Sudden", "Careful", "Deliberate"]),
        GameQuestion(equation: "Notorious", correctAnswer: "Famous (bad way)", options: ["Unknown", "Famous (bad way)", "Respected", "Honorable"]),
      ],
      questionPool: [
        GameQuestion(equation: "Rejoice", correctAnswer: "Celebrate", options: ["Mourn", "Celebrate", "Grieve", "Lament"]),
        GameQuestion(equation: "Subside", correctAnswer: "Decrease", options: ["Increase", "Decrease", "Rise", "Grow"]),
        GameQuestion(equation: "Trivial", correctAnswer: "Unimportant", options: ["Important", "Unimportant", "Significant", "Major"]),
      ],
    ),

    // Level 33 - Synonyms
    GameLevel(
      level: 33,
      questions: [
        GameQuestion(equation: "Adept", correctAnswer: "Skilled", options: ["Clumsy", "Skilled", "Inexperienced", "Amateur"]),
        GameQuestion(equation: "Cajole", correctAnswer: "Persuade", options: ["Force", "Persuade", "Threaten", "Intimidate"]),
        GameQuestion(equation: "Concur", correctAnswer: "Agree", options: ["Disagree", "Agree", "Oppose", "Argue"]),
        GameQuestion(equation: "Diminish", correctAnswer: "Lessen", options: ["Increase", "Lessen", "Grow", "Expand"]),
        GameQuestion(equation: "Esteem", correctAnswer: "Respect", options: ["Disrespect", "Respect", "Despise", "Scorn"]),
        GameQuestion(equation: "Haphazard", correctAnswer: "Random", options: ["Organized", "Random", "Planned", "Systematic"]),
        GameQuestion(equation: "Intense", correctAnswer: "Strong", options: ["Weak", "Strong", "Mild", "Gentle"]),
      ],
      questionPool: [
        GameQuestion(equation: "Linger", correctAnswer: "Stay", options: ["Leave", "Stay", "Depart", "Go"]),
        GameQuestion(equation: "Paramount", correctAnswer: "Supreme", options: ["Minor", "Supreme", "Trivial", "Insignificant"]),
        GameQuestion(equation: "Tyrant", correctAnswer: "Dictator", options: ["Democrat", "Dictator", "Leader", "Representative"]),
      ],
    ),

    // Level 34 - Synonyms
    GameLevel(
      level: 34,
      questions: [
        GameQuestion(equation: "Advocate", correctAnswer: "Support", options: ["Oppose", "Support", "Against", "Resist"]),
        GameQuestion(equation: "Candid", correctAnswer: "Honest", options: ["Dishonest", "Honest", "Deceitful", "False"]),
        GameQuestion(equation: "Fatigue", correctAnswer: "Tiredness", options: ["Energy", "Tiredness", "Vigor", "Strength"]),
        GameQuestion(equation: "Grumble", correctAnswer: "Complain", options: ["Praise", "Complain", "Thank", "Appreciate"]),
        GameQuestion(equation: "Inevitable", correctAnswer: "Unavoidable", options: ["Avoidable", "Unavoidable", "Optional", "Preventable"]),
        GameQuestion(equation: "Menace", correctAnswer: "Threat", options: ["Safety", "Threat", "Protection", "Help"]),
        GameQuestion(equation: "Nostalgia", correctAnswer: "Longing", options: ["Indifference", "Longing", "Disinterest", "Apathy"]),
      ],
      questionPool: [
        GameQuestion(equation: "Overt", correctAnswer: "Obvious", options: ["Hidden", "Obvious", "Secret", "Concealed"]),
        GameQuestion(equation: "Revere", correctAnswer: "Respect", options: ["Disrespect", "Respect", "Mock", "Ridicule"]),
        GameQuestion(equation: "Solitary", correctAnswer: "Alone", options: ["Together", "Alone", "Crowded", "Social"]),
      ],
    ),

    // Level 35 - Synonyms
    GameLevel(
      level: 35,
      questions: [
        GameQuestion(equation: "Alleviate", correctAnswer: "Reduce", options: ["Worsen", "Reduce", "Increase", "Aggravate"]),
        GameQuestion(equation: "Brisk", correctAnswer: "Energetic", options: ["Slow", "Energetic", "Sluggish", "Lazy"]),
        GameQuestion(equation: "Coarse", correctAnswer: "Rough", options: ["Smooth", "Rough", "Soft", "Fine"]),
        GameQuestion(equation: "Dwell", correctAnswer: "Live", options: ["Leave", "Live", "Depart", "Move"]),
        GameQuestion(equation: "Exaggerate", correctAnswer: "Overstate", options: ["Understate", "Overstate", "Minimize", "Downplay"]),
        GameQuestion(equation: "Imitate", correctAnswer: "Copy", options: ["Create", "Copy", "Invent", "Original"]),
        GameQuestion(equation: "Marvel", correctAnswer: "Wonder", options: ["Bore", "Wonder", "Disinterest", "Ignore"]),
      ],
      questionPool: [
        GameQuestion(equation: "Obsolete", correctAnswer: "Outdated", options: ["Modern", "Outdated", "Current", "New"]),
        GameQuestion(equation: "Prosper", correctAnswer: "Succeed", options: ["Fail", "Succeed", "Struggle", "Decline"]),
        GameQuestion(equation: "Vigor", correctAnswer: "Strength", options: ["Weakness", "Strength", "Fatigue", "Tiredness"]),
      ],
    ),

    // Level 36 - Synonyms
    GameLevel(
      level: 36,
      questions: [
        GameQuestion(equation: "Assert", correctAnswer: "Declare", options: ["Deny", "Declare", "Refute", "Withdraw"]),
        GameQuestion(equation: "Bask", correctAnswer: "Enjoy warmth", options: ["Freeze", "Enjoy warmth", "Shiver", "Cold"]),
        GameQuestion(equation: "Clarity", correctAnswer: "Clearness", options: ["Confusion", "Clearness", "Obscurity", "Vagueness"]),
        GameQuestion(equation: "Deteriorate", correctAnswer: "Worsen", options: ["Improve", "Worsen", "Better", "Enhance"]),
        GameQuestion(equation: "Exempt", correctAnswer: "Free (from duty)", options: ["Required", "Free (from duty)", "Obligated", "Bound"]),
        GameQuestion(equation: "Gratify", correctAnswer: "Satisfy", options: ["Disappoint", "Satisfy", "Frustrate", "Displease"]),
        GameQuestion(equation: "Hardy", correctAnswer: "Strong", options: ["Weak", "Strong", "Fragile", "Delicate"]),
      ],
      questionPool: [
        GameQuestion(equation: "Lavish", correctAnswer: "Rich / Luxurious", options: ["Plain", "Rich / Luxurious", "Simple", "Modest"]),
        GameQuestion(equation: "Rigid", correctAnswer: "Stiff", options: ["Flexible", "Stiff", "Soft", "Bendable"]),
        GameQuestion(equation: "Substantial", correctAnswer: "Large", options: ["Small", "Large", "Tiny", "Minimal"]),
      ],
    ),

    // Level 37 - Synonyms
    GameLevel(
      level: 37,
      questions: [
        GameQuestion(equation: "Aspire", correctAnswer: "Aim", options: ["Quit", "Aim", "Abandon", "Surrender"]),
        GameQuestion(equation: "Chaotic", correctAnswer: "Disordered", options: ["Organized", "Disordered", "Neat", "Orderly"]),
        GameQuestion(equation: "Docile", correctAnswer: "Obedient", options: ["Rebellious", "Obedient", "Defiant", "Stubborn"]),
        GameQuestion(equation: "Entail", correctAnswer: "Include", options: ["Exclude", "Include", "Omit", "Remove"]),
        GameQuestion(equation: "Fumble", correctAnswer: "Mishandle", options: ["Master", "Mishandle", "Control", "Manage"]),
        GameQuestion(equation: "Gracious", correctAnswer: "Polite", options: ["Rude", "Polite", "Harsh", "Mean"]),
        GameQuestion(equation: "Luminous", correctAnswer: "Bright", options: ["Dark", "Bright", "Dim", "Dull"]),
      ],
      questionPool: [
        GameQuestion(equation: "Ordeal", correctAnswer: "Hard test", options: ["Easy task", "Hard test", "Simple work", "Pleasure"]),
        GameQuestion(equation: "Relent", correctAnswer: "Soften", options: ["Harden", "Soften", "Strengthen", "Stiffen"]),
        GameQuestion(equation: "Surge", correctAnswer: "Rise", options: ["Fall", "Rise", "Drop", "Decline"]),
      ],
    ),

    // Level 38 - Synonyms
    GameLevel(
      level: 38,
      questions: [
        GameQuestion(equation: "Attribute", correctAnswer: "Assign", options: ["Remove", "Assign", "Take", "Deny"]),
        GameQuestion(equation: "Censor", correctAnswer: "Suppress", options: ["Allow", "Suppress", "Permit", "Free"]),
        GameQuestion(equation: "Devise", correctAnswer: "Plan", options: ["Destroy", "Plan", "Ruin", "Abandon"]),
        GameQuestion(equation: "Endeavor", correctAnswer: "Try", options: ["Quit", "Try", "Give up", "Surrender"]),
        GameQuestion(equation: "Frigid", correctAnswer: "Extremely cold", options: ["Hot", "Extremely cold", "Warm", "Mild"]),
        GameQuestion(equation: "Impose", correctAnswer: "Enforce", options: ["Remove", "Enforce", "Lift", "Cancel"]),
        GameQuestion(equation: "Lure", correctAnswer: "Attract", options: ["Repel", "Attract", "Deter", "Discourage"]),
      ],
      questionPool: [
        GameQuestion(equation: "Persist", correctAnswer: "Continue", options: ["Stop", "Continue", "Quit", "End"]),
        GameQuestion(equation: "Reluctant", correctAnswer: "Unwilling", options: ["Eager", "Unwilling", "Willing", "Ready"]),
        GameQuestion(equation: "Supersede", correctAnswer: "Replace", options: ["Keep", "Replace", "Maintain", "Preserve"]),
      ],
    ),

    // Level 39 - Synonyms
    GameLevel(
      level: 39,
      questions: [
        GameQuestion(equation: "Apprehend", correctAnswer: "Arrest", options: ["Release", "Arrest", "Free", "Let go"]),
        GameQuestion(equation: "Conquest", correctAnswer: "Victory", options: ["Defeat", "Victory", "Loss", "Failure"]),
        GameQuestion(equation: "Disperse", correctAnswer: "Scatter", options: ["Gather", "Scatter", "Collect", "Assemble"]),
        GameQuestion(equation: "Entice", correctAnswer: "Tempt", options: ["Deter", "Tempt", "Discourage", "Repel"]),
        GameQuestion(equation: "Formulate", correctAnswer: "Create", options: ["Destroy", "Create", "Ruin", "Break"]),
        GameQuestion(equation: "Hinder", correctAnswer: "Obstruct", options: ["Help", "Obstruct", "Aid", "Assist"]),
        GameQuestion(equation: "Manipulate", correctAnswer: "Control", options: ["Free", "Control", "Release", "Liberate"]),
      ],
      questionPool: [
        GameQuestion(equation: "Mourning", correctAnswer: "Grief", options: ["Joy", "Grief", "Happiness", "Celebration"]),
        GameQuestion(equation: "Reclaim", correctAnswer: "Recover", options: ["Lose", "Recover", "Abandon", "Surrender"]),
        GameQuestion(equation: "Wretched", correctAnswer: "Miserable", options: ["Happy", "Miserable", "Joyful", "Content"]),
      ],
    ),

    // Level 40 - Synonyms
    GameLevel(
      level: 40,
      questions: [
        GameQuestion(equation: "Abrade", correctAnswer: "Scrape", options: ["Polish", "Scrape", "Smooth", "Buff"]),
        GameQuestion(equation: "Compile", correctAnswer: "Collect", options: ["Scatter", "Collect", "Disperse", "Separate"]),
        GameQuestion(equation: "Deflect", correctAnswer: "Turn aside", options: ["Direct", "Turn aside", "Aim", "Target"]),
        GameQuestion(equation: "Elevate", correctAnswer: "Lift", options: ["Lower", "Lift", "Drop", "Fall"]),
        GameQuestion(equation: "Gloomy", correctAnswer: "Sad", options: ["Happy", "Sad", "Cheerful", "Joyful"]),
        GameQuestion(equation: "Immaculate", correctAnswer: "Perfect", options: ["Dirty", "Perfect", "Flawed", "Impure"]),
        GameQuestion(equation: "Mutiny", correctAnswer: "Rebellion", options: ["Obedience", "Rebellion", "Loyalty", "Compliance"]),
      ],
      questionPool: [
        GameQuestion(equation: "Quench", correctAnswer: "Satisfy", options: ["Increase", "Satisfy", "Worsen", "Intensify"]),
        GameQuestion(equation: "Resolve", correctAnswer: "Decide", options: ["Hesitate", "Decide", "Doubt", "Waver"]),
        GameQuestion(equation: "Tedious", correctAnswer: "Boring", options: ["Exciting", "Boring", "Interesting", "Thrilling"]),
      ],
    ),

    // Level 41 - Synonyms
    GameLevel(
      level: 41,
      questions: [
        GameQuestion(equation: "Abdicate", correctAnswer: "Give up", options: ["Keep", "Give up", "Maintain", "Hold"]),
        GameQuestion(equation: "Brim", correctAnswer: "Full", options: ["Empty", "Full", "Vacant", "Hollow"]),
        GameQuestion(equation: "Contemplate", correctAnswer: "Think", options: ["Ignore", "Think", "Forget", "Dismiss"]),
        GameQuestion(equation: "Eject", correctAnswer: "Throw out", options: ["Keep", "Throw out", "Insert", "Include"]),
        GameQuestion(equation: "Fragile", correctAnswer: "Delicate", options: ["Strong", "Delicate", "Tough", "Sturdy"]),
        GameQuestion(equation: "Ignite", correctAnswer: "Burn", options: ["Extinguish", "Burn", "Quench", "Douse"]),
        GameQuestion(equation: "Linger", correctAnswer: "Stay", options: ["Leave", "Stay", "Depart", "Go"]),
      ],
      questionPool: [
        GameQuestion(equation: "Nimble", correctAnswer: "Quick", options: ["Slow", "Quick", "Clumsy", "Heavy"]),
        GameQuestion(equation: "Reckless", correctAnswer: "Careless", options: ["Careful", "Careless", "Cautious", "Safe"]),
        GameQuestion(equation: "Unique", correctAnswer: "Special", options: ["Common", "Special", "Ordinary", "Regular"]),
      ],
    ),

    // Level 42 - Synonyms
    GameLevel(
      level: 42,
      questions: [
        GameQuestion(equation: "Abrupt", correctAnswer: "Sudden", options: ["Gradual", "Sudden", "Slow", "Smooth"]),
        GameQuestion(equation: "Boundless", correctAnswer: "Unlimited", options: ["Limited", "Unlimited", "Restricted", "Confined"]),
        GameQuestion(equation: "Confront", correctAnswer: "Face", options: ["Avoid", "Face", "Evade", "Escape"]),
        GameQuestion(equation: "Distinguish", correctAnswer: "Identify", options: ["Confuse", "Identify", "Mix", "Blur"]),
        GameQuestion(equation: "Futile", correctAnswer: "Useless", options: ["Useful", "Useless", "Helpful", "Effective"]),
        GameQuestion(equation: "Gaudy", correctAnswer: "Showy", options: ["Plain", "Showy", "Simple", "Modest"]),
        GameQuestion(equation: "Impede", correctAnswer: "Block", options: ["Help", "Block", "Aid", "Assist"]),
      ],
      questionPool: [
        GameQuestion(equation: "Notion", correctAnswer: "Idea", options: ["Fact", "Idea", "Reality", "Truth"]),
        GameQuestion(equation: "Plunge", correctAnswer: "Drop", options: ["Rise", "Drop", "Ascend", "Climb"]),
        GameQuestion(equation: "Witty", correctAnswer: "Clever", options: ["Dull", "Clever", "Boring", "Stupid"]),
      ],
    ),

    // Level 43 - Synonyms
    GameLevel(
      level: 43,
      questions: [
        GameQuestion(equation: "Ailment", correctAnswer: "Illness", options: ["Health", "Illness", "Wellness", "Fitness"]),
        GameQuestion(equation: "Cease", correctAnswer: "Stop", options: ["Continue", "Stop", "Start", "Begin"]),
        GameQuestion(equation: "Contrive", correctAnswer: "Create", options: ["Destroy", "Create", "Ruin", "Break"]),
        GameQuestion(equation: "Diligent", correctAnswer: "Hardworking", options: ["Lazy", "Hardworking", "Idle", "Careless"]),
        GameQuestion(equation: "Endeavor", correctAnswer: "Attempt", options: ["Quit", "Attempt", "Surrender", "Abandon"]),
        GameQuestion(equation: "Ferocious", correctAnswer: "Fierce", options: ["Gentle", "Fierce", "Mild", "Calm"]),
        GameQuestion(equation: "Hover", correctAnswer: "Stay above", options: ["Fall", "Stay above", "Drop", "Sink"]),
      ],
      questionPool: [
        GameQuestion(equation: "Impair", correctAnswer: "Damage", options: ["Fix", "Damage", "Repair", "Heal"]),
        GameQuestion(equation: "Pivotal", correctAnswer: "Important", options: ["Trivial", "Important", "Minor", "Insignificant"]),
        GameQuestion(equation: "Reclaim", correctAnswer: "Recover", options: ["Lose", "Recover", "Surrender", "Abandon"]),
      ],
    ),

    // Level 44 - Synonyms
    GameLevel(
      level: 44,
      questions: [
        GameQuestion(equation: "Afflict", correctAnswer: "Trouble", options: ["Help", "Trouble", "Comfort", "Aid"]),
        GameQuestion(equation: "Bewilder", correctAnswer: "Confuse", options: ["Clarify", "Confuse", "Explain", "Simplify"]),
        GameQuestion(equation: "Concur", correctAnswer: "Agree", options: ["Disagree", "Agree", "Oppose", "Deny"]),
        GameQuestion(equation: "Defer", correctAnswer: "Postpone", options: ["Advance", "Postpone", "Hurry", "Rush"]),
        GameQuestion(equation: "Excerpt", correctAnswer: "Extract", options: ["Whole", "Extract", "Complete", "Full"]),
        GameQuestion(equation: "Grief", correctAnswer: "Sorrow", options: ["Joy", "Sorrow", "Happiness", "Delight"]),
        GameQuestion(equation: "Lofty", correctAnswer: "High", options: ["Low", "High", "Short", "Small"]),
      ],
      questionPool: [
        GameQuestion(equation: "Meager", correctAnswer: "Small", options: ["Large", "Small", "Big", "Huge"]),
        GameQuestion(equation: "Serene", correctAnswer: "Peaceful", options: ["Chaotic", "Peaceful", "Noisy", "Turbulent"]),
        GameQuestion(equation: "Thrive", correctAnswer: "Grow", options: ["Decline", "Grow", "Wither", "Fail"]),
      ],
    ),

    // Level 45 - Synonyms
    GameLevel(
      level: 45,
      questions: [
        GameQuestion(equation: "Align", correctAnswer: "Arrange", options: ["Scatter", "Arrange", "Disorder", "Mess"]),
        GameQuestion(equation: "Banish", correctAnswer: "Expel", options: ["Welcome", "Expel", "Invite", "Accept"]),
        GameQuestion(equation: "Commence", correctAnswer: "Begin", options: ["End", "Begin", "Stop", "Finish"]),
        GameQuestion(equation: "Descend", correctAnswer: "Go down", options: ["Rise", "Go down", "Ascend", "Climb"]),
        GameQuestion(equation: "Erupt", correctAnswer: "Explode", options: ["Calm", "Explode", "Settle", "Subside"]),
        GameQuestion(equation: "Forfeit", correctAnswer: "Lose", options: ["Win", "Lose", "Gain", "Keep"]),
        GameQuestion(equation: "Legitimate", correctAnswer: "Lawful", options: ["Illegal", "Lawful", "Wrong", "False"]),
      ],
      questionPool: [
        GameQuestion(equation: "Mimic", correctAnswer: "Copy", options: ["Create", "Copy", "Invent", "Original"]),
        GameQuestion(equation: "Radiant", correctAnswer: "Bright", options: ["Dull", "Bright", "Dark", "Dim"]),
        GameQuestion(equation: "Tedious", correctAnswer: "Boring", options: ["Exciting", "Boring", "Fun", "Interesting"]),
      ],
    ),

    // Level 46 - Synonyms
    GameLevel(
      level: 46,
      questions: [
        GameQuestion(equation: "Ample", correctAnswer: "Plenty", options: ["Scarce", "Plenty", "Limited", "Few"]),
        GameQuestion(equation: "Blunt", correctAnswer: "Dull", options: ["Sharp", "Dull", "Pointed", "Keen"]),
        GameQuestion(equation: "Constrict", correctAnswer: "Tighten", options: ["Loosen", "Tighten", "Relax", "Free"]),
        GameQuestion(equation: "Detain", correctAnswer: "Hold", options: ["Release", "Hold", "Free", "Let go"]),
        GameQuestion(equation: "Elaborate", correctAnswer: "Detailed", options: ["Simple", "Detailed", "Basic", "Brief"]),
        GameQuestion(equation: "Hostile", correctAnswer: "Unfriendly", options: ["Friendly", "Unfriendly", "Kind", "Warm"]),
        GameQuestion(equation: "Monumental", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Little"]),
      ],
      questionPool: [
        GameQuestion(equation: "Omit", correctAnswer: "Leave out", options: ["Include", "Leave out", "Add", "Insert"]),
        GameQuestion(equation: "Refrain", correctAnswer: "Avoid", options: ["Indulge", "Avoid", "Engage", "Participate"]),
        GameQuestion(equation: "Vigorous", correctAnswer: "Energetic", options: ["Weak", "Energetic", "Tired", "Lazy"]),
      ],
    ),

    // Level 47 - Synonyms
    GameLevel(
      level: 47,
      questions: [
        GameQuestion(equation: "Ascend", correctAnswer: "Rise", options: ["Fall", "Rise", "Drop", "Descend"]),
        GameQuestion(equation: "Chronic", correctAnswer: "Long-lasting", options: ["Brief", "Long-lasting", "Temporary", "Short"]),
        GameQuestion(equation: "Devote", correctAnswer: "Dedicate", options: ["Neglect", "Dedicate", "Ignore", "Abandon"]),
        GameQuestion(equation: "Enrage", correctAnswer: "Anger", options: ["Calm", "Anger", "Soothe", "Please"]),
        GameQuestion(equation: "Feasible", correctAnswer: "Possible", options: ["Impossible", "Possible", "Unlikely", "Unfeasible"]),
        GameQuestion(equation: "Grimy", correctAnswer: "Dirty", options: ["Clean", "Dirty", "Spotless", "Pure"]),
        GameQuestion(equation: "Indulge", correctAnswer: "Enjoy", options: ["Deny", "Enjoy", "Refuse", "Abstain"]),
      ],
      questionPool: [
        GameQuestion(equation: "Precede", correctAnswer: "Come before", options: ["Follow", "Come before", "Succeed", "Trail"]),
        GameQuestion(equation: "Relish", correctAnswer: "Enjoy", options: ["Dislike", "Enjoy", "Hate", "Despise"]),
        GameQuestion(equation: "Wan", correctAnswer: "Pale", options: ["Bright", "Pale", "Colorful", "Vivid"]),
      ],
    ),

    // Level 48 - Synonyms
    GameLevel(
      level: 48,
      questions: [
        GameQuestion(equation: "Amend", correctAnswer: "Improve", options: ["Worsen", "Improve", "Damage", "Harm"]),
        GameQuestion(equation: "Commotion", correctAnswer: "Chaos", options: ["Peace", "Chaos", "Calm", "Order"]),
        GameQuestion(equation: "Delicate", correctAnswer: "Fragile", options: ["Strong", "Fragile", "Tough", "Sturdy"]),
        GameQuestion(equation: "Embark", correctAnswer: "Start", options: ["End", "Start", "Finish", "Stop"]),
        GameQuestion(equation: "Flourish", correctAnswer: "Prosper", options: ["Decline", "Prosper", "Fail", "Wither"]),
        GameQuestion(equation: "Gallant", correctAnswer: "Brave", options: ["Cowardly", "Brave", "Fearful", "Timid"]),
        GameQuestion(equation: "Inhibit", correctAnswer: "Prevent", options: ["Allow", "Prevent", "Enable", "Permit"]),
      ],
      questionPool: [
        GameQuestion(equation: "Obscure", correctAnswer: "Hidden", options: ["Clear", "Hidden", "Obvious", "Visible"]),
        GameQuestion(equation: "Ponder", correctAnswer: "Reflect", options: ["Ignore", "Reflect", "Forget", "Dismiss"]),
        GameQuestion(equation: "Zeal", correctAnswer: "Passion", options: ["Apathy", "Passion", "Indifference", "Boredom"]),
      ],
    ),

    // Level 49 - Synonyms
    GameLevel(
      level: 49,
      questions: [
        GameQuestion(equation: "Avert", correctAnswer: "Avoid", options: ["Face", "Avoid", "Confront", "Meet"]),
        GameQuestion(equation: "Conclude", correctAnswer: "Finish", options: ["Start", "Finish", "Begin", "Open"]),
        GameQuestion(equation: "Derive", correctAnswer: "Obtain", options: ["Lose", "Obtain", "Give", "Surrender"]),
        GameQuestion(equation: "Elevate", correctAnswer: "Raise", options: ["Lower", "Raise", "Drop", "Descend"]),
        GameQuestion(equation: "Fluctuate", correctAnswer: "Vary", options: ["Stable", "Vary", "Fixed", "Constant"]),
        GameQuestion(equation: "Gracious", correctAnswer: "Kind", options: ["Rude", "Kind", "Harsh", "Mean"]),
        GameQuestion(equation: "Lavish", correctAnswer: "Luxurious", options: ["Plain", "Luxurious", "Simple", "Modest"]),
      ],
      questionPool: [
        GameQuestion(equation: "Nomadic", correctAnswer: "Wandering", options: ["Settled", "Wandering", "Fixed", "Stationary"]),
        GameQuestion(equation: "Resilient", correctAnswer: "Strong", options: ["Weak", "Strong", "Fragile", "Delicate"]),
        GameQuestion(equation: "Wary", correctAnswer: "Careful", options: ["Careless", "Careful", "Reckless", "Hasty"]),
      ],
    ),

    // Level 50 - Synonyms
    GameLevel(
      level: 50,
      questions: [
        GameQuestion(equation: "Amend", correctAnswer: "Correct", options: ["Worsen", "Correct", "Damage", "Break"]),
        GameQuestion(equation: "Censor", correctAnswer: "Remove", options: ["Allow", "Remove", "Permit", "Include"]),
        GameQuestion(equation: "Detest", correctAnswer: "Hate", options: ["Love", "Hate", "Adore", "Like"]),
        GameQuestion(equation: "Essence", correctAnswer: "Core", options: ["Surface", "Core", "Edge", "Outside"]),
        GameQuestion(equation: "Futile", correctAnswer: "Ineffective", options: ["Effective", "Ineffective", "Successful", "Useful"]),
        GameQuestion(equation: "Insight", correctAnswer: "Understanding", options: ["Ignorance", "Understanding", "Confusion", "Misunderstanding"]),
        GameQuestion(equation: "Jubilant", correctAnswer: "Joyful", options: ["Sad", "Joyful", "Miserable", "Gloomy"]),
      ],
      questionPool: [
        GameQuestion(equation: "Portable", correctAnswer: "Movable", options: ["Fixed", "Movable", "Stationary", "Permanent"]),
        GameQuestion(equation: "Refined", correctAnswer: "Polished", options: ["Rough", "Polished", "Crude", "Coarse"]),
        GameQuestion(equation: "Tactful", correctAnswer: "Polite", options: ["Rude", "Polite", "Harsh", "Blunt"]),
      ],
    ),

    // Level 51 - Synonyms
    GameLevel(
      level: 51,
      questions: [
        GameQuestion(equation: "Allege", correctAnswer: "Claim", options: ["Deny", "Claim", "Refute", "Reject"]),
        GameQuestion(equation: "Bleak", correctAnswer: "Hopeless", options: ["Hopeful", "Hopeless", "Bright", "Promising"]),
        GameQuestion(equation: "Conserve", correctAnswer: "Save", options: ["Waste", "Save", "Destroy", "Use"]),
        GameQuestion(equation: "Dismal", correctAnswer: "Sad", options: ["Happy", "Sad", "Cheerful", "Joyful"]),
        GameQuestion(equation: "Exile", correctAnswer: "Banish", options: ["Welcome", "Banish", "Accept", "Invite"]),
        GameQuestion(equation: "Hinder", correctAnswer: "Block", options: ["Help", "Block", "Aid", "Assist"]),
        GameQuestion(equation: "Inevitable", correctAnswer: "Unavoidable", options: ["Avoidable", "Unavoidable", "Optional", "Preventable"]),
      ],
      questionPool: [
        GameQuestion(equation: "Lofty", correctAnswer: "Tall", options: ["Short", "Tall", "Low", "Small"]),
        GameQuestion(equation: "Plausible", correctAnswer: "Believable", options: ["Unbelievable", "Believable", "Doubtful", "Impossible"]),
        GameQuestion(equation: "Vigilant", correctAnswer: "Watchful", options: ["Careless", "Watchful", "Negligent", "Unaware"]),
      ],
    ),

    // Level 52 - Synonyms
    GameLevel(
      level: 52,
      questions: [
        GameQuestion(equation: "Acquire", correctAnswer: "Get", options: ["Lose", "Get", "Give", "Surrender"]),
        GameQuestion(equation: "Brisk", correctAnswer: "Quick", options: ["Slow", "Quick", "Sluggish", "Lazy"]),
        GameQuestion(equation: "Convince", correctAnswer: "Persuade", options: ["Deter", "Persuade", "Discourage", "Dissuade"]),
        GameQuestion(equation: "Drastic", correctAnswer: "Extreme", options: ["Mild", "Extreme", "Moderate", "Gentle"]),
        GameQuestion(equation: "Exempt", correctAnswer: "Free", options: ["Obligated", "Free", "Required", "Bound"]),
        GameQuestion(equation: "Hasty", correctAnswer: "Quick", options: ["Slow", "Quick", "Careful", "Deliberate"]),
        GameQuestion(equation: "Ingenious", correctAnswer: "Clever", options: ["Stupid", "Clever", "Dull", "Foolish"]),
      ],
      questionPool: [
        GameQuestion(equation: "Moderate", correctAnswer: "Average", options: ["Extreme", "Average", "Excessive", "Intense"]),
        GameQuestion(equation: "Retort", correctAnswer: "Reply", options: ["Question", "Reply", "Ask", "Inquire"]),
        GameQuestion(equation: "Zealous", correctAnswer: "Enthusiastic", options: ["Apathetic", "Enthusiastic", "Indifferent", "Bored"]),
      ],
    ),

    // Level 53 - Synonyms
    GameLevel(
      level: 53,
      questions: [
        GameQuestion(equation: "Abdomen", correctAnswer: "Stomach", options: ["Head", "Stomach", "Chest", "Leg"]),
        GameQuestion(equation: "Brim", correctAnswer: "Edge", options: ["Center", "Edge", "Middle", "Core"]),
        GameQuestion(equation: "Concur", correctAnswer: "Agree", options: ["Disagree", "Agree", "Oppose", "Deny"]),
        GameQuestion(equation: "Disperse", correctAnswer: "Scatter", options: ["Gather", "Scatter", "Collect", "Assemble"]),
        GameQuestion(equation: "Endure", correctAnswer: "Tolerate", options: ["Quit", "Tolerate", "Surrender", "Give up"]),
        GameQuestion(equation: "Greedy", correctAnswer: "Avaricious", options: ["Generous", "Avaricious", "Giving", "Charitable"]),
        GameQuestion(equation: "Impulsive", correctAnswer: "Sudden", options: ["Planned", "Sudden", "Deliberate", "Careful"]),
      ],
      questionPool: [
        GameQuestion(equation: "Mimic", correctAnswer: "Copy", options: ["Create", "Copy", "Invent", "Original"]),
        GameQuestion(equation: "Robust", correctAnswer: "Strong", options: ["Weak", "Strong", "Fragile", "Feeble"]),
        GameQuestion(equation: "Verbal", correctAnswer: "Spoken", options: ["Written", "Spoken", "Silent", "Mute"]),
      ],
    ),

    // Level 54 - Synonyms
    GameLevel(
      level: 54,
      questions: [
        GameQuestion(equation: "Adhere", correctAnswer: "Stick", options: ["Detach", "Stick", "Separate", "Release"]),
        GameQuestion(equation: "Bulky", correctAnswer: "Large", options: ["Small", "Large", "Tiny", "Compact"]),
        GameQuestion(equation: "Commend", correctAnswer: "Praise", options: ["Criticize", "Praise", "Blame", "Condemn"]),
        GameQuestion(equation: "Depict", correctAnswer: "Describe", options: ["Hide", "Describe", "Conceal", "Obscure"]),
        GameQuestion(equation: "Exaggerate", correctAnswer: "Overstate", options: ["Understate", "Overstate", "Minimize", "Downplay"]),
        GameQuestion(equation: "Hinder", correctAnswer: "Obstruct", options: ["Help", "Obstruct", "Aid", "Assist"]),
        GameQuestion(equation: "Intricate", correctAnswer: "Complex", options: ["Simple", "Complex", "Easy", "Basic"]),
      ],
      questionPool: [
        GameQuestion(equation: "Jubilant", correctAnswer: "Joyful", options: ["Sad", "Joyful", "Miserable", "Depressed"]),
        GameQuestion(equation: "Reckon", correctAnswer: "Calculate", options: ["Guess", "Calculate", "Estimate", "Approximate"]),
        GameQuestion(equation: "Wane", correctAnswer: "Decrease", options: ["Increase", "Decrease", "Grow", "Rise"]),
      ],
    ),

    // Level 55 - Synonyms
    GameLevel(
      level: 55,
      questions: [
        GameQuestion(equation: "Agile", correctAnswer: "Quick", options: ["Slow", "Quick", "Clumsy", "Heavy"]),
        GameQuestion(equation: "Bizarre", correctAnswer: "Strange", options: ["Normal", "Strange", "Ordinary", "Common"]),
        GameQuestion(equation: "Confide", correctAnswer: "Trust", options: ["Distrust", "Trust", "Doubt", "Suspect"]),
        GameQuestion(equation: "Devour", correctAnswer: "Eat fast", options: ["Nibble", "Eat fast", "Sip", "Taste"]),
        GameQuestion(equation: "Exert", correctAnswer: "Apply", options: ["Relax", "Apply", "Rest", "Withdraw"]),
        GameQuestion(equation: "Gratify", correctAnswer: "Satisfy", options: ["Disappoint", "Satisfy", "Frustrate", "Displease"]),
        GameQuestion(equation: "Intimidate", correctAnswer: "Scare", options: ["Comfort", "Scare", "Reassure", "Encourage"]),
      ],
      questionPool: [
        GameQuestion(equation: "Lurk", correctAnswer: "Hide", options: ["Reveal", "Hide", "Show", "Display"]),
        GameQuestion(equation: "Proclaim", correctAnswer: "Announce", options: ["Conceal", "Announce", "Hide", "Suppress"]),
        GameQuestion(equation: "Surpass", correctAnswer: "Exceed", options: ["Fall short", "Exceed", "Fail", "Lack"]),
      ],
    ),

    // Level 56 - Synonyms
    GameLevel(
      level: 56,
      questions: [
        GameQuestion(equation: "Adorn", correctAnswer: "Decorate", options: ["Strip", "Decorate", "Remove", "Plain"]),
        GameQuestion(equation: "Bloom", correctAnswer: "Flourish", options: ["Wither", "Flourish", "Decay", "Die"]),
        GameQuestion(equation: "Compensate", correctAnswer: "Pay", options: ["Withhold", "Pay", "Take", "Deny"]),
        GameQuestion(equation: "Dense", correctAnswer: "Thick", options: ["Thin", "Thick", "Light", "Sparse"]),
        GameQuestion(equation: "Errand", correctAnswer: "Task", options: ["Leisure", "Task", "Rest", "Play"]),
        GameQuestion(equation: "Foresee", correctAnswer: "Predict", options: ["Recall", "Predict", "Remember", "Forget"]),
        GameQuestion(equation: "Immerse", correctAnswer: "Dip", options: ["Surface", "Dip", "Emerge", "Rise"]),
      ],
      questionPool: [
        GameQuestion(equation: "Ominous", correctAnswer: "Threatening", options: ["Promising", "Threatening", "Hopeful", "Positive"]),
        GameQuestion(equation: "Plunder", correctAnswer: "Steal", options: ["Give", "Steal", "Return", "Donate"]),
        GameQuestion(equation: "Tepid", correctAnswer: "Lukewarm", options: ["Hot", "Lukewarm", "Cold", "Freezing"]),
      ],
    ),

    // Level 57 - Synonyms
    GameLevel(
      level: 57,
      questions: [
        GameQuestion(equation: "Apt", correctAnswer: "Suitable", options: ["Unsuitable", "Suitable", "Wrong", "Improper"]),
        GameQuestion(equation: "Brazen", correctAnswer: "Bold", options: ["Shy", "Bold", "Timid", "Modest"]),
        GameQuestion(equation: "Concede", correctAnswer: "Admit", options: ["Deny", "Admit", "Refuse", "Reject"]),
        GameQuestion(equation: "Dispatch", correctAnswer: "Send", options: ["Receive", "Send", "Keep", "Hold"]),
        GameQuestion(equation: "Explicit", correctAnswer: "Clear", options: ["Vague", "Clear", "Unclear", "Ambiguous"]),
        GameQuestion(equation: "Gaunt", correctAnswer: "Thin", options: ["Fat", "Thin", "Plump", "Chubby"]),
        GameQuestion(equation: "Lethal", correctAnswer: "Deadly", options: ["Harmless", "Deadly", "Safe", "Gentle"]),
      ],
      questionPool: [
        GameQuestion(equation: "Pledge", correctAnswer: "Promise", options: ["Break", "Promise", "Betray", "Abandon"]),
        GameQuestion(equation: "Rigid", correctAnswer: "Stiff", options: ["Flexible", "Stiff", "Soft", "Bendable"]),
        GameQuestion(equation: "Tranquil", correctAnswer: "Calm", options: ["Chaotic", "Calm", "Turbulent", "Noisy"]),
      ],
    ),

    // Level 58 - Synonyms
    GameLevel(
      level: 58,
      questions: [
        GameQuestion(equation: "Aspire", correctAnswer: "Aim", options: ["Quit", "Aim", "Abandon", "Surrender"]),
        GameQuestion(equation: "Baffle", correctAnswer: "Confuse", options: ["Clarify", "Confuse", "Explain", "Simplify"]),
        GameQuestion(equation: "Crave", correctAnswer: "Desire", options: ["Reject", "Desire", "Refuse", "Dislike"]),
        GameQuestion(equation: "Detach", correctAnswer: "Separate", options: ["Attach", "Separate", "Connect", "Join"]),
        GameQuestion(equation: "Elude", correctAnswer: "Escape", options: ["Catch", "Escape", "Capture", "Trap"]),
        GameQuestion(equation: "Grueling", correctAnswer: "Exhausting", options: ["Easy", "Exhausting", "Simple", "Relaxing"]),
        GameQuestion(equation: "Humiliate", correctAnswer: "Embarrass", options: ["Praise", "Embarrass", "Honor", "Respect"]),
      ],
      questionPool: [
        GameQuestion(equation: "Impart", correctAnswer: "Give", options: ["Take", "Give", "Withhold", "Keep"]),
        GameQuestion(equation: "Prosperous", correctAnswer: "Wealthy", options: ["Poor", "Wealthy", "Broke", "Needy"]),
        GameQuestion(equation: "Weary", correctAnswer: "Tired", options: ["Energetic", "Tired", "Fresh", "Lively"]),
      ],
    ),

    // Level 59 - Synonyms
    GameLevel(
      level: 59,
      questions: [
        GameQuestion(equation: "Abduct", correctAnswer: "Kidnap", options: ["Release", "Kidnap", "Free", "Liberate"]),
        GameQuestion(equation: "Counsel", correctAnswer: "Advise", options: ["Mislead", "Advise", "Confuse", "Deceive"]),
        GameQuestion(equation: "Defy", correctAnswer: "Resist", options: ["Obey", "Resist", "Submit", "Comply"]),
        GameQuestion(equation: "Erect", correctAnswer: "Build", options: ["Destroy", "Build", "Demolish", "Ruin"]),
        GameQuestion(equation: "Forsake", correctAnswer: "Abandon", options: ["Keep", "Abandon", "Maintain", "Support"]),
        GameQuestion(equation: "Hail", correctAnswer: "Greet", options: ["Ignore", "Greet", "Avoid", "Shun"]),
        GameQuestion(equation: "Lenient", correctAnswer: "Soft", options: ["Harsh", "Soft", "Strict", "Severe"]),
      ],
      questionPool: [
        GameQuestion(equation: "Perish", correctAnswer: "Die", options: ["Live", "Die", "Survive", "Thrive"]),
        GameQuestion(equation: "Restrain", correctAnswer: "Hold back", options: ["Release", "Hold back", "Free", "Liberate"]),
        GameQuestion(equation: "Verdict", correctAnswer: "Decision", options: ["Question", "Decision", "Doubt", "Inquiry"]),
      ],
    ),

    // Level 60 - Synonyms
    GameLevel(
      level: 60,
      questions: [
        GameQuestion(equation: "Accumulate", correctAnswer: "Gather", options: ["Scatter", "Gather", "Disperse", "Spread"]),
        GameQuestion(equation: "Bashful", correctAnswer: "Shy", options: ["Bold", "Shy", "Confident", "Outgoing"]),
        GameQuestion(equation: "Conquer", correctAnswer: "Win", options: ["Lose", "Win", "Fail", "Surrender"]),
        GameQuestion(equation: "Discard", correctAnswer: "Throw away", options: ["Keep", "Throw away", "Save", "Preserve"]),
        GameQuestion(equation: "Embrace", correctAnswer: "Hug", options: ["Reject", "Hug", "Push", "Avoid"]),
        GameQuestion(equation: "Glare", correctAnswer: "Stare", options: ["Ignore", "Stare", "Look away", "Avoid"]),
        GameQuestion(equation: "Meager", correctAnswer: "Small", options: ["Large", "Small", "Abundant", "Plenty"]),
      ],
      questionPool: [
        GameQuestion(equation: "Plaque", correctAnswer: "Stain", options: ["Clean", "Stain", "Polish", "Shine"]),
        GameQuestion(equation: "Redeem", correctAnswer: "Recover", options: ["Lose", "Recover", "Forfeit", "Surrender"]),
        GameQuestion(equation: "Thrive", correctAnswer: "Succeed", options: ["Fail", "Succeed", "Struggle", "Decline"]),
      ],
    ),

    // Level 61 - Synonyms
    GameLevel(
      level: 61,
      questions: [
        GameQuestion(equation: "Ancient", correctAnswer: "Old", options: ["New", "Old", "Modern", "Recent"]),
        GameQuestion(equation: "Assist", correctAnswer: "Help", options: ["Hinder", "Help", "Block", "Prevent"]),
        GameQuestion(equation: "Brief", correctAnswer: "Short", options: ["Long", "Short", "Extended", "Lengthy"]),
        GameQuestion(equation: "Capture", correctAnswer: "Seize", options: ["Release", "Seize", "Free", "Liberate"]),
        GameQuestion(equation: "Cautious", correctAnswer: "Careful", options: ["Reckless", "Careful", "Careless", "Hasty"]),
        GameQuestion(equation: "Declare", correctAnswer: "Announce", options: ["Hide", "Announce", "Conceal", "Suppress"]),
        GameQuestion(equation: "Entire", correctAnswer: "Whole", options: ["Partial", "Whole", "Incomplete", "Fragment"]),
      ],
      questionPool: [
        GameQuestion(equation: "Grasp", correctAnswer: "Understand", options: ["Confuse", "Understand", "Misunderstand", "Puzzle"]),
        GameQuestion(equation: "Idle", correctAnswer: "Inactive", options: ["Active", "Inactive", "Busy", "Working"]),
        GameQuestion(equation: "Predict", correctAnswer: "Forecast", options: ["Recall", "Forecast", "Remember", "Forget"]),
      ],
    ),

    // Level 62 - Synonyms
    GameLevel(
      level: 62,
      questions: [
        GameQuestion(equation: "Scarce", correctAnswer: "Rare", options: ["Common", "Rare", "Abundant", "Plentiful"]),
        GameQuestion(equation: "Reply", correctAnswer: "Answer", options: ["Question", "Answer", "Ask", "Inquire"]),
        GameQuestion(equation: "Secret", correctAnswer: "Hidden", options: ["Obvious", "Hidden", "Visible", "Clear"]),
        GameQuestion(equation: "Swift", correctAnswer: "Quick", options: ["Slow", "Quick", "Sluggish", "Lazy"]),
        GameQuestion(equation: "Trust", correctAnswer: "Believe", options: ["Doubt", "Believe", "Distrust", "Question"]),
        GameQuestion(equation: "Vacant", correctAnswer: "Empty", options: ["Full", "Empty", "Occupied", "Filled"]),
        GameQuestion(equation: "Wander", correctAnswer: "Roam", options: ["Stay", "Roam", "Settle", "Remain"]),
      ],
      questionPool: [
        GameQuestion(equation: "Worthy", correctAnswer: "Deserving", options: ["Unworthy", "Deserving", "Undeserving", "Worthless"]),
        GameQuestion(equation: "Yield", correctAnswer: "Produce", options: ["Consume", "Produce", "Use", "Take"]),
        GameQuestion(equation: "Zone", correctAnswer: "Area", options: ["Point", "Area", "Spot", "Place"]),
      ],
    ),

    // Level 63 - Synonyms
    GameLevel(
      level: 63,
      questions: [
        GameQuestion(equation: "Confess", correctAnswer: "Admit", options: ["Deny", "Admit", "Hide", "Conceal"]),
        GameQuestion(equation: "Defend", correctAnswer: "Protect", options: ["Attack", "Protect", "Harm", "Threaten"]),
        GameQuestion(equation: "Enormous", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Little"]),
        GameQuestion(equation: "Faith", correctAnswer: "Trust", options: ["Doubt", "Trust", "Disbelief", "Skepticism"]),
        GameQuestion(equation: "Grief", correctAnswer: "Sorrow", options: ["Joy", "Sorrow", "Happiness", "Delight"]),
        GameQuestion(equation: "Loyal", correctAnswer: "Faithful", options: ["Disloyal", "Faithful", "Traitorous", "Unfaithful"]),
        GameQuestion(equation: "Noble", correctAnswer: "Honorable", options: ["Shameful", "Honorable", "Disgraceful", "Dishonest"]),
      ],
      questionPool: [
        GameQuestion(equation: "Obtain", correctAnswer: "Get", options: ["Lose", "Get", "Give", "Surrender"]),
        GameQuestion(equation: "Reject", correctAnswer: "Refuse", options: ["Accept", "Refuse", "Approve", "Welcome"]),
        GameQuestion(equation: "Visible", correctAnswer: "Seen", options: ["Hidden", "Seen", "Invisible", "Concealed"]),
      ],
    ),

    // Level 64 - Synonyms
    GameLevel(
      level: 64,
      questions: [
        GameQuestion(equation: "Alert", correctAnswer: "Watchful", options: ["Careless", "Watchful", "Negligent", "Unaware"]),
        GameQuestion(equation: "Bold", correctAnswer: "Brave", options: ["Timid", "Brave", "Fearful", "Cowardly"]),
        GameQuestion(equation: "Clarity", correctAnswer: "Clearness", options: ["Confusion", "Clearness", "Ambiguity", "Obscurity"]),
        GameQuestion(equation: "Collapse", correctAnswer: "Fall", options: ["Rise", "Fall", "Stand", "Build"]),
        GameQuestion(equation: "Desire", correctAnswer: "Want", options: ["Reject", "Want", "Refuse", "Dislike"]),
        GameQuestion(equation: "Evaluate", correctAnswer: "Assess", options: ["Ignore", "Assess", "Overlook", "Neglect"]),
        GameQuestion(equation: "Harmony", correctAnswer: "Peace", options: ["Discord", "Peace", "Conflict", "Chaos"]),
      ],
      questionPool: [
        GameQuestion(equation: "Persuade", correctAnswer: "Convince", options: ["Discourage", "Convince", "Deter", "Dissuade"]),
        GameQuestion(equation: "Reveal", correctAnswer: "Show", options: ["Hide", "Show", "Conceal", "Cover"]),
        GameQuestion(equation: "Silent", correctAnswer: "Quiet", options: ["Loud", "Quiet", "Noisy", "Boisterous"]),
      ],
    ),

    // Level 65 - Synonyms
    GameLevel(
      level: 65,
      questions: [
        GameQuestion(equation: "Assist", correctAnswer: "Aid", options: ["Hinder", "Aid", "Block", "Obstruct"]),
        GameQuestion(equation: "Brave", correctAnswer: "Courageous", options: ["Cowardly", "Courageous", "Fearful", "Timid"]),
        GameQuestion(equation: "Brief", correctAnswer: "Short", options: ["Long", "Short", "Extended", "Lengthy"]),
        GameQuestion(equation: "Distant", correctAnswer: "Far", options: ["Near", "Far", "Close", "Nearby"]),
        GameQuestion(equation: "Error", correctAnswer: "Mistake", options: ["Correct", "Mistake", "Right", "Accurate"]),
        GameQuestion(equation: "Harsh", correctAnswer: "Rough", options: ["Gentle", "Rough", "Soft", "Smooth"]),
        GameQuestion(equation: "Keen", correctAnswer: "Sharp", options: ["Dull", "Sharp", "Blunt", "Blurred"]),
      ],
      questionPool: [
        GameQuestion(equation: "Prosper", correctAnswer: "Succeed", options: ["Fail", "Succeed", "Struggle", "Decline"]),
        GameQuestion(equation: "Renew", correctAnswer: "Restore", options: ["Destroy", "Restore", "Ruin", "Damage"]),
        GameQuestion(equation: "Vacant", correctAnswer: "Empty", options: ["Full", "Empty", "Occupied", "Filled"]),
      ],
    ),

    // Level 66 - Synonyms
    GameLevel(
      level: 66,
      questions: [
        GameQuestion(equation: "Alert", correctAnswer: "Attentive", options: ["Distracted", "Attentive", "Careless", "Negligent"]),
        GameQuestion(equation: "Astonish", correctAnswer: "Surprise", options: ["Bore", "Surprise", "Expect", "Anticipate"]),
        GameQuestion(equation: "Commute", correctAnswer: "Travel", options: ["Stay", "Travel", "Remain", "Settle"]),
        GameQuestion(equation: "Dusk", correctAnswer: "Evening", options: ["Morning", "Evening", "Dawn", "Noon"]),
        GameQuestion(equation: "Eternal", correctAnswer: "Forever", options: ["Temporary", "Forever", "Brief", "Short"]),
        GameQuestion(equation: "Faint", correctAnswer: "Weak", options: ["Strong", "Weak", "Powerful", "Intense"]),
        GameQuestion(equation: "Grant", correctAnswer: "Allow", options: ["Deny", "Allow", "Refuse", "Prohibit"]),
      ],
      questionPool: [
        GameQuestion(equation: "Keen", correctAnswer: "Eager", options: ["Reluctant", "Eager", "Unwilling", "Hesitant"]),
        GameQuestion(equation: "Realm", correctAnswer: "Kingdom", options: ["Village", "Kingdom", "Town", "City"]),
        GameQuestion(equation: "Sincere", correctAnswer: "Honest", options: ["Dishonest", "Honest", "Fake", "False"]),
      ],
    ),

    // Level 67 - Synonyms
    GameLevel(
      level: 67,
      questions: [
        GameQuestion(equation: "Acquire", correctAnswer: "Gain", options: ["Lose", "Gain", "Give", "Surrender"]),
        GameQuestion(equation: "Bliss", correctAnswer: "Joy", options: ["Sorrow", "Joy", "Sadness", "Grief"]),
        GameQuestion(equation: "Cease", correctAnswer: "Stop", options: ["Continue", "Stop", "Start", "Begin"]),
        GameQuestion(equation: "Devour", correctAnswer: "Eat", options: ["Starve", "Eat", "Fast", "Abstain"]),
        GameQuestion(equation: "Illuminate", correctAnswer: "Light", options: ["Darken", "Light", "Dim", "Shadow"]),
        GameQuestion(equation: "Maintain", correctAnswer: "Keep", options: ["Abandon", "Keep", "Discard", "Lose"]),
        GameQuestion(equation: "Motion", correctAnswer: "Movement", options: ["Stillness", "Movement", "Rest", "Stop"]),
      ],
      questionPool: [
        GameQuestion(equation: "Permit", correctAnswer: "Allow", options: ["Forbid", "Allow", "Ban", "Prohibit"]),
        GameQuestion(equation: "Reside", correctAnswer: "Live", options: ["Leave", "Live", "Depart", "Go"]),
        GameQuestion(equation: "Thrive", correctAnswer: "Grow", options: ["Decline", "Grow", "Wither", "Shrink"]),
      ],
    ),

    // Level 68 - Synonyms
    GameLevel(
      level: 68,
      questions: [
        GameQuestion(equation: "Anguish", correctAnswer: "Pain", options: ["Pleasure", "Pain", "Joy", "Comfort"]),
        GameQuestion(equation: "Cease", correctAnswer: "End", options: ["Start", "End", "Begin", "Continue"]),
        GameQuestion(equation: "Diligent", correctAnswer: "Hardworking", options: ["Lazy", "Hardworking", "Idle", "Careless"]),
        GameQuestion(equation: "Grumble", correctAnswer: "Complain", options: ["Praise", "Complain", "Appreciate", "Thank"]),
        GameQuestion(equation: "Impose", correctAnswer: "Force", options: ["Request", "Force", "Ask", "Suggest"]),
        GameQuestion(equation: "Massive", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Little"]),
        GameQuestion(equation: "Peril", correctAnswer: "Danger", options: ["Safety", "Danger", "Security", "Protection"]),
      ],
      questionPool: [
        GameQuestion(equation: "Radiant", correctAnswer: "Bright", options: ["Dull", "Bright", "Dark", "Dim"]),
        GameQuestion(equation: "Soothe", correctAnswer: "Calm", options: ["Agitate", "Calm", "Disturb", "Upset"]),
        GameQuestion(equation: "Triumph", correctAnswer: "Victory", options: ["Defeat", "Victory", "Loss", "Failure"]),
      ],
    ),

    // Level 69 - Synonyms
    GameLevel(
      level: 69,
      questions: [
        GameQuestion(equation: "Abundant", correctAnswer: "Plentiful", options: ["Scarce", "Plentiful", "Rare", "Limited"]),
        GameQuestion(equation: "Boost", correctAnswer: "Increase", options: ["Decrease", "Increase", "Reduce", "Lower"]),
        GameQuestion(equation: "Defeat", correctAnswer: "Beat", options: ["Win", "Beat", "Victory", "Triumph"]),
        GameQuestion(equation: "Essence", correctAnswer: "Core", options: ["Surface", "Core", "Edge", "Outside"]),
        GameQuestion(equation: "Flee", correctAnswer: "Escape", options: ["Stay", "Escape", "Remain", "Confront"]),
        GameQuestion(equation: "Hesitate", correctAnswer: "Pause", options: ["Continue", "Pause", "Proceed", "Advance"]),
        GameQuestion(equation: "Imitate", correctAnswer: "Copy", options: ["Create", "Copy", "Invent", "Originate"]),
      ],
      questionPool: [
        GameQuestion(equation: "Merge", correctAnswer: "Combine", options: ["Separate", "Combine", "Divide", "Split"]),
        GameQuestion(equation: "Scatter", correctAnswer: "Spread", options: ["Gather", "Spread", "Collect", "Assemble"]),
        GameQuestion(equation: "Vague", correctAnswer: "Unclear", options: ["Clear", "Unclear", "Obvious", "Precise"]),
      ],
    ),

    // Level 70 - Synonyms
    GameLevel(
      level: 70,
      questions: [
        GameQuestion(equation: "Absorb", correctAnswer: "Soak", options: ["Repel", "Soak", "Reject", "Expel"]),
        GameQuestion(equation: "Agile", correctAnswer: "Quick", options: ["Slow", "Quick", "Clumsy", "Heavy"]),
        GameQuestion(equation: "Barrier", correctAnswer: "Obstacle", options: ["Opening", "Obstacle", "Path", "Way"]),
        GameQuestion(equation: "Cherish", correctAnswer: "Treasure", options: ["Discard", "Treasure", "Abandon", "Neglect"]),
        GameQuestion(equation: "Delicate", correctAnswer: "Fragile", options: ["Strong", "Fragile", "Tough", "Sturdy"]),
        GameQuestion(equation: "Expand", correctAnswer: "Enlarge", options: ["Shrink", "Enlarge", "Reduce", "Contract"]),
        GameQuestion(equation: "Furious", correctAnswer: "Angry", options: ["Calm", "Angry", "Peaceful", "Happy"]),
      ],
      questionPool: [
        GameQuestion(equation: "Humiliate", correctAnswer: "Shame", options: ["Honor", "Shame", "Praise", "Respect"]),
        GameQuestion(equation: "Meager", correctAnswer: "Small", options: ["Large", "Small", "Big", "Huge"]),
        GameQuestion(equation: "Reluctant", correctAnswer: "Unwilling", options: ["Eager", "Unwilling", "Willing", "Ready"]),
      ],
    ),

    // Level 71 - Synonyms
    GameLevel(
      level: 71,
      questions: [
        GameQuestion(equation: "Adapt", correctAnswer: "Adjust", options: ["Resist", "Adjust", "Refuse", "Oppose"]),
        GameQuestion(equation: "Cunning", correctAnswer: "Clever", options: ["Foolish", "Clever", "Stupid", "Dumb"]),
        GameQuestion(equation: "Endless", correctAnswer: "Infinite", options: ["Limited", "Infinite", "Finite", "Short"]),
        GameQuestion(equation: "Furious", correctAnswer: "Enraged", options: ["Calm", "Enraged", "Peaceful", "Serene"]),
        GameQuestion(equation: "Idle", correctAnswer: "Lazy", options: ["Active", "Lazy", "Busy", "Working"]),
        GameQuestion(equation: "Modify", correctAnswer: "Change", options: ["Keep", "Change", "Maintain", "Preserve"]),
        GameQuestion(equation: "Predict", correctAnswer: "Foresee", options: ["Recall", "Foresee", "Remember", "Forget"]),
      ],
      questionPool: [
        GameQuestion(equation: "Reliable", correctAnswer: "Trustworthy", options: ["Unreliable", "Trustworthy", "Doubtful", "Questionable"]),
        GameQuestion(equation: "Scatter", correctAnswer: "Disperse", options: ["Gather", "Disperse", "Collect", "Assemble"]),
        GameQuestion(equation: "Vast", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Little"]),
      ],
    ),

    // Level 72 - Synonyms
    GameLevel(
      level: 72,
      questions: [
        GameQuestion(equation: "Alert", correctAnswer: "Aware", options: ["Unaware", "Aware", "Oblivious", "Ignorant"]),
        GameQuestion(equation: "Conquer", correctAnswer: "Defeat", options: ["Lose", "Defeat", "Surrender", "Fail"]),
        GameQuestion(equation: "Deliberate", correctAnswer: "Intentional", options: ["Accidental", "Intentional", "Unintentional", "Random"]),
        GameQuestion(equation: "Ease", correctAnswer: "Comfort", options: ["Difficulty", "Comfort", "Hardship", "Struggle"]),
        GameQuestion(equation: "Fierce", correctAnswer: "Violent", options: ["Gentle", "Violent", "Mild", "Calm"]),
        GameQuestion(equation: "Genuine", correctAnswer: "Real", options: ["Fake", "Real", "False", "Artificial"]),
        GameQuestion(equation: "Hostile", correctAnswer: "Unfriendly", options: ["Friendly", "Unfriendly", "Kind", "Welcoming"]),
      ],
      questionPool: [
        GameQuestion(equation: "Mourn", correctAnswer: "Grieve", options: ["Celebrate", "Grieve", "Rejoice", "Cheer"]),
        GameQuestion(equation: "Ponder", correctAnswer: "Think", options: ["Ignore", "Think", "Dismiss", "Forget"]),
        GameQuestion(equation: "Vacant", correctAnswer: "Empty", options: ["Full", "Empty", "Occupied", "Filled"]),
      ],
    ),

    // Level 73 - Synonyms
    GameLevel(
      level: 73,
      questions: [
        GameQuestion(equation: "Assist", correctAnswer: "Help", options: ["Hinder", "Help", "Block", "Prevent"]),
        GameQuestion(equation: "Consider", correctAnswer: "Think", options: ["Ignore", "Think", "Dismiss", "Overlook"]),
        GameQuestion(equation: "Defy", correctAnswer: "Resist", options: ["Obey", "Resist", "Submit", "Comply"]),
        GameQuestion(equation: "Envy", correctAnswer: "Jealousy", options: ["Contentment", "Jealousy", "Satisfaction", "Happiness"]),
        GameQuestion(equation: "Flexible", correctAnswer: "Bendable", options: ["Rigid", "Bendable", "Stiff", "Inflexible"]),
        GameQuestion(equation: "Icy", correctAnswer: "Cold", options: ["Hot", "Cold", "Warm", "Heated"]),
        GameQuestion(equation: "Observe", correctAnswer: "Watch", options: ["Ignore", "Watch", "Overlook", "Miss"]),
      ],
      questionPool: [
        GameQuestion(equation: "Rage", correctAnswer: "Anger", options: ["Calm", "Anger", "Peace", "Serenity"]),
        GameQuestion(equation: "Unite", correctAnswer: "Join", options: ["Separate", "Join", "Divide", "Split"]),
        GameQuestion(equation: "Warn", correctAnswer: "Alert", options: ["Ignore", "Alert", "Neglect", "Overlook"]),
      ],
    ),

    // Level 74 - Synonyms
    GameLevel(
      level: 74,
      questions: [
        GameQuestion(equation: "Ancient", correctAnswer: "Old", options: ["Modern", "Old", "New", "Recent"]),
        GameQuestion(equation: "Bloom", correctAnswer: "Blossom", options: ["Wither", "Blossom", "Decay", "Die"]),
        GameQuestion(equation: "Contrast", correctAnswer: "Difference", options: ["Similarity", "Difference", "Likeness", "Match"]),
        GameQuestion(equation: "Dusk", correctAnswer: "Sunset", options: ["Dawn", "Sunset", "Sunrise", "Morning"]),
        GameQuestion(equation: "Expand", correctAnswer: "Grow", options: ["Shrink", "Grow", "Contract", "Reduce"]),
        GameQuestion(equation: "Fierce", correctAnswer: "Strong", options: ["Weak", "Strong", "Gentle", "Mild"]),
        GameQuestion(equation: "Grace", correctAnswer: "Elegance", options: ["Clumsiness", "Elegance", "Awkwardness", "Inelegance"]),
      ],
      questionPool: [
        GameQuestion(equation: "Noble", correctAnswer: "Royal", options: ["Common", "Royal", "Ordinary", "Lowly"]),
        GameQuestion(equation: "Perish", correctAnswer: "Die", options: ["Live", "Die", "Survive", "Thrive"]),
        GameQuestion(equation: "Remote", correctAnswer: "Far", options: ["Near", "Far", "Close", "Nearby"]),
      ],
    ),

    // Level 75 - Synonyms
    GameLevel(
      level: 75,
      questions: [
        GameQuestion(equation: "Bitter", correctAnswer: "Harsh", options: ["Sweet", "Harsh", "Pleasant", "Mild"]),
        GameQuestion(equation: "Compassion", correctAnswer: "Kindness", options: ["Cruelty", "Kindness", "Meanness", "Harshness"]),
        GameQuestion(equation: "Delighted", correctAnswer: "Happy", options: ["Sad", "Happy", "Miserable", "Depressed"]),
        GameQuestion(equation: "Eternal", correctAnswer: "Endless", options: ["Temporary", "Endless", "Brief", "Short"]),
        GameQuestion(equation: "Frigid", correctAnswer: "Freezing", options: ["Hot", "Freezing", "Warm", "Boiling"]),
        GameQuestion(equation: "Hazard", correctAnswer: "Danger", options: ["Safety", "Danger", "Security", "Protection"]),
        GameQuestion(equation: "Marvel", correctAnswer: "Wonder", options: ["Bore", "Wonder", "Dullness", "Monotony"]),
      ],
      questionPool: [
        GameQuestion(equation: "Perplexed", correctAnswer: "Confused", options: ["Clear", "Confused", "Understanding", "Certain"]),
        GameQuestion(equation: "Severe", correctAnswer: "Harsh", options: ["Gentle", "Harsh", "Mild", "Soft"]),
        GameQuestion(equation: "Triumph", correctAnswer: "Win", options: ["Lose", "Win", "Fail", "Defeat"]),
      ],
    ),

    // Level 76 - Synonyms
    GameLevel(
      level: 76,
      questions: [
        GameQuestion(equation: "Abandon", correctAnswer: "Leave", options: ["Stay", "Leave", "Remain", "Keep"]),
        GameQuestion(equation: "Brisk", correctAnswer: "Quick", options: ["Slow", "Quick", "Sluggish", "Lazy"]),
        GameQuestion(equation: "Declare", correctAnswer: "Announce", options: ["Hide", "Announce", "Conceal", "Suppress"]),
        GameQuestion(equation: "Endeavor", correctAnswer: "Try", options: ["Quit", "Try", "Surrender", "Abandon"]),
        GameQuestion(equation: "Gloom", correctAnswer: "Darkness", options: ["Light", "Darkness", "Brightness", "Radiance"]),
        GameQuestion(equation: "Kindle", correctAnswer: "Ignite", options: ["Extinguish", "Ignite", "Quench", "Douse"]),
        GameQuestion(equation: "Mimic", correctAnswer: "Copy", options: ["Create", "Copy", "Invent", "Originate"]),
      ],
      questionPool: [
        GameQuestion(equation: "Prosper", correctAnswer: "Flourish", options: ["Decline", "Flourish", "Fail", "Wither"]),
        GameQuestion(equation: "Robust", correctAnswer: "Strong", options: ["Weak", "Strong", "Fragile", "Feeble"]),
        GameQuestion(equation: "Weary", correctAnswer: "Tired", options: ["Energetic", "Tired", "Fresh", "Lively"]),
      ],
    ),

    // Level 77 - Synonyms
    GameLevel(
      level: 77,
      questions: [
        GameQuestion(equation: "Awkward", correctAnswer: "Clumsy", options: ["Graceful", "Clumsy", "Elegant", "Coordinated"]),
        GameQuestion(equation: "Blunt", correctAnswer: "Dull", options: ["Sharp", "Dull", "Pointed", "Keen"]),
        GameQuestion(equation: "Dread", correctAnswer: "Fear", options: ["Courage", "Fear", "Bravery", "Confidence"]),
        GameQuestion(equation: "Emerge", correctAnswer: "Appear", options: ["Disappear", "Appear", "Vanish", "Hide"]),
        GameQuestion(equation: "Feeble", correctAnswer: "Weak", options: ["Strong", "Weak", "Powerful", "Robust"]),
        GameQuestion(equation: "Greedy", correctAnswer: "Selfish", options: ["Generous", "Selfish", "Giving", "Charitable"]),
        GameQuestion(equation: "Mentor", correctAnswer: "Guide", options: ["Student", "Guide", "Learner", "Follower"]),
      ],
      questionPool: [
        GameQuestion(equation: "Plunge", correctAnswer: "Drop", options: ["Rise", "Drop", "Ascend", "Climb"]),
        GameQuestion(equation: "Rival", correctAnswer: "Competitor", options: ["Ally", "Competitor", "Partner", "Friend"]),
        GameQuestion(equation: "Swift", correctAnswer: "Fast", options: ["Slow", "Fast", "Sluggish", "Leisurely"]),
      ],
    ),

    // Level 78 - Synonyms
    GameLevel(
      level: 78,
      questions: [
        GameQuestion(equation: "Adore", correctAnswer: "Love", options: ["Hate", "Love", "Despise", "Detest"]),
        GameQuestion(equation: "Breakthrough", correctAnswer: "Discovery", options: ["Failure", "Discovery", "Setback", "Loss"]),
        GameQuestion(equation: "Cease", correctAnswer: "Stop", options: ["Continue", "Stop", "Start", "Begin"]),
        GameQuestion(equation: "Dilemma", correctAnswer: "Problem", options: ["Solution", "Problem", "Answer", "Resolution"]),
        GameQuestion(equation: "Flourish", correctAnswer: "Grow", options: ["Decline", "Grow", "Wither", "Shrink"]),
        GameQuestion(equation: "Guardian", correctAnswer: "Protector", options: ["Threat", "Protector", "Enemy", "Attacker"]),
        GameQuestion(equation: "Leisure", correctAnswer: "Free time", options: ["Work", "Free time", "Labor", "Duty"]),
      ],
      questionPool: [
        GameQuestion(equation: "Mysterious", correctAnswer: "Unknown", options: ["Known", "Unknown", "Clear", "Obvious"]),
        GameQuestion(equation: "Radiant", correctAnswer: "Glowing", options: ["Dull", "Glowing", "Dark", "Dim"]),
        GameQuestion(equation: "Summon", correctAnswer: "Call", options: ["Dismiss", "Call", "Send away", "Reject"]),
      ],
    ),

    // Level 79 - Synonyms
    GameLevel(
      level: 79,
      questions: [
        GameQuestion(equation: "Boundary", correctAnswer: "Limit", options: ["Freedom", "Limit", "Opening", "Expanse"]),
        GameQuestion(equation: "Custom", correctAnswer: "Tradition", options: ["Innovation", "Tradition", "Change", "Novelty"]),
        GameQuestion(equation: "Devote", correctAnswer: "Dedicate", options: ["Neglect", "Dedicate", "Ignore", "Abandon"]),
        GameQuestion(equation: "Enforce", correctAnswer: "Apply", options: ["Ignore", "Apply", "Disregard", "Overlook"]),
        GameQuestion(equation: "Fragile", correctAnswer: "Delicate", options: ["Strong", "Delicate", "Tough", "Sturdy"]),
        GameQuestion(equation: "Hostile", correctAnswer: "Aggressive", options: ["Friendly", "Aggressive", "Peaceful", "Kind"]),
        GameQuestion(equation: "Legend", correctAnswer: "Myth", options: ["Fact", "Myth", "Truth", "Reality"]),
      ],
      questionPool: [
        GameQuestion(equation: "Persist", correctAnswer: "Continue", options: ["Quit", "Continue", "Stop", "Surrender"]),
        GameQuestion(equation: "Scar", correctAnswer: "Mark", options: ["Heal", "Mark", "Cure", "Restore"]),
        GameQuestion(equation: "Unity", correctAnswer: "Togetherness", options: ["Division", "Togetherness", "Separation", "Discord"]),
      ],
    ),

    // Level 80 - Synonyms
    GameLevel(
      level: 80,
      questions: [
        GameQuestion(equation: "Ambition", correctAnswer: "Goal", options: ["Apathy", "Goal", "Indifference", "Laziness"]),
        GameQuestion(equation: "Blaze", correctAnswer: "Fire", options: ["Water", "Fire", "Ice", "Cold"]),
        GameQuestion(equation: "Caution", correctAnswer: "Care", options: ["Recklessness", "Care", "Carelessness", "Negligence"]),
        GameQuestion(equation: "Decline", correctAnswer: "Decrease", options: ["Increase", "Decrease", "Rise", "Grow"]),
        GameQuestion(equation: "Endure", correctAnswer: "Survive", options: ["Quit", "Survive", "Surrender", "Perish"]),
        GameQuestion(equation: "Frontier", correctAnswer: "Border", options: ["Center", "Border", "Core", "Middle"]),
        GameQuestion(equation: "Glimpse", correctAnswer: "Peek", options: ["Stare", "Peek", "Gaze", "Glare"]),
      ],
      questionPool: [
        GameQuestion(equation: "Optimistic", correctAnswer: "Hopeful", options: ["Pessimistic", "Hopeful", "Negative", "Gloomy"]),
        GameQuestion(equation: "Perceive", correctAnswer: "Notice", options: ["Ignore", "Notice", "Miss", "Overlook"]),
        GameQuestion(equation: "Thrive", correctAnswer: "Grow", options: ["Decline", "Grow", "Wither", "Fail"]),
      ],
    ),

    // Level 81 - Synonyms
    GameLevel(
      level: 81,
      questions: [
        GameQuestion(equation: "Adapt", correctAnswer: "Adjust", options: ["Resist", "Adjust", "Refuse", "Oppose"]),
        GameQuestion(equation: "Banish", correctAnswer: "Expel", options: ["Welcome", "Expel", "Invite", "Accept"]),
        GameQuestion(equation: "Clever", correctAnswer: "Smart", options: ["Stupid", "Smart", "Dumb", "Foolish"]),
        GameQuestion(equation: "Distant", correctAnswer: "Far", options: ["Near", "Far", "Close", "Nearby"]),
        GameQuestion(equation: "Eternal", correctAnswer: "Forever", options: ["Temporary", "Forever", "Brief", "Short"]),
        GameQuestion(equation: "Harsh", correctAnswer: "Rough", options: ["Gentle", "Rough", "Soft", "Smooth"]),
        GameQuestion(equation: "Isolate", correctAnswer: "Separate", options: ["Unite", "Separate", "Connect", "Join"]),
      ],
      questionPool: [
        GameQuestion(equation: "Modest", correctAnswer: "Humble", options: ["Arrogant", "Humble", "Proud", "Boastful"]),
        GameQuestion(equation: "Sacred", correctAnswer: "Holy", options: ["Profane", "Holy", "Unholy", "Secular"]),
        GameQuestion(equation: "Vast", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Little"]),
      ],
    ),

    // Level 82 - Synonyms
    GameLevel(
      level: 82,
      questions: [
        GameQuestion(equation: "Alert", correctAnswer: "Watchful", options: ["Careless", "Watchful", "Negligent", "Unaware"]),
        GameQuestion(equation: "Bravery", correctAnswer: "Courage", options: ["Cowardice", "Courage", "Fear", "Timidity"]),
        GameQuestion(equation: "Confess", correctAnswer: "Admit", options: ["Deny", "Admit", "Hide", "Conceal"]),
        GameQuestion(equation: "Discover", correctAnswer: "Find", options: ["Lose", "Find", "Hide", "Conceal"]),
        GameQuestion(equation: "Era", correctAnswer: "Age", options: ["Moment", "Age", "Second", "Instant"]),
        GameQuestion(equation: "Fierce", correctAnswer: "Violent", options: ["Gentle", "Violent", "Mild", "Calm"]),
        GameQuestion(equation: "Grasp", correctAnswer: "Understand", options: ["Confuse", "Understand", "Misunderstand", "Puzzle"]),
      ],
      questionPool: [
        GameQuestion(equation: "Humble", correctAnswer: "Modest", options: ["Proud", "Modest", "Arrogant", "Boastful"]),
        GameQuestion(equation: "Peril", correctAnswer: "Danger", options: ["Safety", "Danger", "Security", "Protection"]),
        GameQuestion(equation: "Vanish", correctAnswer: "Disappear", options: ["Appear", "Disappear", "Emerge", "Show"]),
      ],
    ),

    // Level 83 - Synonyms
    GameLevel(
      level: 83,
      questions: [
        GameQuestion(equation: "Appeal", correctAnswer: "Request", options: ["Demand", "Request", "Order", "Command"]),
        GameQuestion(equation: "Bold", correctAnswer: "Fearless", options: ["Timid", "Fearless", "Afraid", "Cowardly"]),
        GameQuestion(equation: "Craft", correctAnswer: "Skill", options: ["Clumsiness", "Skill", "Inability", "Incompetence"]),
        GameQuestion(equation: "Dense", correctAnswer: "Thick", options: ["Thin", "Thick", "Sparse", "Light"]),
        GameQuestion(equation: "Eager", correctAnswer: "Excited", options: ["Bored", "Excited", "Indifferent", "Apathetic"]),
        GameQuestion(equation: "Gentle", correctAnswer: "Soft", options: ["Harsh", "Soft", "Rough", "Hard"]),
        GameQuestion(equation: "Hinder", correctAnswer: "Obstruct", options: ["Help", "Obstruct", "Aid", "Assist"]),
      ],
      questionPool: [
        GameQuestion(equation: "Marvel", correctAnswer: "Wonder", options: ["Bore", "Wonder", "Dullness", "Monotony"]),
        GameQuestion(equation: "Recall", correctAnswer: "Remember", options: ["Forget", "Remember", "Ignore", "Overlook"]),
        GameQuestion(equation: "Sincere", correctAnswer: "Honest", options: ["Dishonest", "Honest", "Fake", "False"]),
      ],
    ),

    // Level 84 - Synonyms
    GameLevel(
      level: 84,
      questions: [
        GameQuestion(equation: "Accuse", correctAnswer: "Blame", options: ["Praise", "Blame", "Commend", "Compliment"]),
        GameQuestion(equation: "Barrier", correctAnswer: "Obstacle", options: ["Opening", "Obstacle", "Path", "Way"]),
        GameQuestion(equation: "Chaos", correctAnswer: "Disorder", options: ["Order", "Disorder", "Peace", "Harmony"]),
        GameQuestion(equation: "Dwell", correctAnswer: "Live", options: ["Leave", "Live", "Depart", "Go"]),
        GameQuestion(equation: "Expand", correctAnswer: "Increase", options: ["Decrease", "Increase", "Reduce", "Shrink"]),
        GameQuestion(equation: "Frail", correctAnswer: "Weak", options: ["Strong", "Weak", "Powerful", "Robust"]),
        GameQuestion(equation: "Hasty", correctAnswer: "Quick", options: ["Slow", "Quick", "Careful", "Deliberate"]),
      ],
      questionPool: [
        GameQuestion(equation: "Linger", correctAnswer: "Stay", options: ["Leave", "Stay", "Depart", "Go"]),
        GameQuestion(equation: "Mute", correctAnswer: "Silent", options: ["Loud", "Silent", "Noisy", "Vocal"]),
        GameQuestion(equation: "Reckless", correctAnswer: "Careless", options: ["Careful", "Careless", "Cautious", "Prudent"]),
      ],
    ),

    // Level 85 - Synonyms
    GameLevel(
      level: 85,
      questions: [
        GameQuestion(equation: "Acquire", correctAnswer: "Obtain", options: ["Lose", "Obtain", "Give", "Surrender"]),
        GameQuestion(equation: "Blend", correctAnswer: "Mix", options: ["Separate", "Mix", "Divide", "Split"]),
        GameQuestion(equation: "Cunning", correctAnswer: "Clever", options: ["Foolish", "Clever", "Stupid", "Dumb"]),
        GameQuestion(equation: "Devour", correctAnswer: "Eat", options: ["Starve", "Eat", "Fast", "Abstain"]),
        GameQuestion(equation: "Erupt", correctAnswer: "Burst", options: ["Calm", "Burst", "Settle", "Subside"]),
        GameQuestion(equation: "Grieve", correctAnswer: "Mourn", options: ["Celebrate", "Mourn", "Rejoice", "Cheer"]),
        GameQuestion(equation: "Host", correctAnswer: "Entertainer", options: ["Guest", "Entertainer", "Visitor", "Attendee"]),
      ],
      questionPool: [
        GameQuestion(equation: "Imitate", correctAnswer: "Copy", options: ["Create", "Copy", "Invent", "Originate"]),
        GameQuestion(equation: "Pierce", correctAnswer: "Penetrate", options: ["Block", "Penetrate", "Seal", "Close"]),
        GameQuestion(equation: "Tense", correctAnswer: "Tight", options: ["Relaxed", "Tight", "Loose", "Slack"]),
      ],
    ),

    // Level 86 - Synonyms
    GameLevel(
      level: 86,
      questions: [
        GameQuestion(equation: "Amend", correctAnswer: "Improve", options: ["Worsen", "Improve", "Damage", "Harm"]),
        GameQuestion(equation: "Baffle", correctAnswer: "Confuse", options: ["Clarify", "Confuse", "Explain", "Simplify"]),
        GameQuestion(equation: "Courage", correctAnswer: "Bravery", options: ["Cowardice", "Bravery", "Fear", "Timidity"]),
        GameQuestion(equation: "Diminish", correctAnswer: "Reduce", options: ["Increase", "Reduce", "Grow", "Expand"]),
        GameQuestion(equation: "Eager", correctAnswer: "Keen", options: ["Reluctant", "Keen", "Unwilling", "Hesitant"]),
        GameQuestion(equation: "Idle", correctAnswer: "Inactive", options: ["Active", "Inactive", "Busy", "Working"]),
        GameQuestion(equation: "Legacy", correctAnswer: "Heritage", options: ["Future", "Heritage", "Tomorrow", "Present"]),
      ],
      questionPool: [
        GameQuestion(equation: "Motive", correctAnswer: "Reason", options: ["Effect", "Reason", "Result", "Consequence"]),
        GameQuestion(equation: "Ponder", correctAnswer: "Think", options: ["Ignore", "Think", "Dismiss", "Forget"]),
        GameQuestion(equation: "Trace", correctAnswer: "Follow", options: ["Lead", "Follow", "Abandon", "Ignore"]),
      ],
    ),

    // Level 87 - Synonyms
    GameLevel(
      level: 87,
      questions: [
        GameQuestion(equation: "Agile", correctAnswer: "Nimble", options: ["Clumsy", "Nimble", "Awkward", "Heavy"]),
        GameQuestion(equation: "Brilliant", correctAnswer: "Bright", options: ["Dull", "Bright", "Dim", "Dark"]),
        GameQuestion(equation: "Compel", correctAnswer: "Force", options: ["Persuade", "Force", "Request", "Ask"]),
        GameQuestion(equation: "Detach", correctAnswer: "Separate", options: ["Attach", "Separate", "Connect", "Join"]),
        GameQuestion(equation: "Excel", correctAnswer: "Outperform", options: ["Fail", "Outperform", "Struggle", "Underperform"]),
        GameQuestion(equation: "Fierce", correctAnswer: "Strong", options: ["Weak", "Strong", "Gentle", "Mild"]),
        GameQuestion(equation: "Humble", correctAnswer: "Respectful", options: ["Arrogant", "Respectful", "Rude", "Proud"]),
      ],
      questionPool: [
        GameQuestion(equation: "Luminous", correctAnswer: "Shining", options: ["Dark", "Shining", "Dull", "Dim"]),
        GameQuestion(equation: "Prevail", correctAnswer: "Win", options: ["Lose", "Win", "Fail", "Surrender"]),
        GameQuestion(equation: "Rigid", correctAnswer: "Stiff", options: ["Flexible", "Stiff", "Soft", "Bendable"]),
      ],
    ),

    // Level 88 - Synonyms
    GameLevel(
      level: 88,
      questions: [
        GameQuestion(equation: "Assure", correctAnswer: "Guarantee", options: ["Doubt", "Guarantee", "Question", "Deny"]),
        GameQuestion(equation: "Bliss", correctAnswer: "Happiness", options: ["Misery", "Happiness", "Sadness", "Sorrow"]),
        GameQuestion(equation: "Conquer", correctAnswer: "Defeat", options: ["Lose", "Defeat", "Surrender", "Fail"]),
        GameQuestion(equation: "Dense", correctAnswer: "Thick", options: ["Thin", "Thick", "Sparse", "Light"]),
        GameQuestion(equation: "Embrace", correctAnswer: "Hug", options: ["Reject", "Hug", "Push", "Avoid"]),
        GameQuestion(equation: "Foster", correctAnswer: "Encourage", options: ["Discourage", "Encourage", "Hinder", "Prevent"]),
        GameQuestion(equation: "Manual", correctAnswer: "Hand-made", options: ["Automatic", "Hand-made", "Machine-made", "Factory"]),
      ],
      questionPool: [
        GameQuestion(equation: "Neglect", correctAnswer: "Ignore", options: ["Care", "Ignore", "Attend", "Notice"]),
        GameQuestion(equation: "Scarce", correctAnswer: "Rare", options: ["Common", "Rare", "Abundant", "Plentiful"]),
        GameQuestion(equation: "Vivid", correctAnswer: "Clear", options: ["Vague", "Clear", "Unclear", "Blurry"]),
      ],
    ),

    // Level 89 - Synonyms
    GameLevel(
      level: 89,
      questions: [
        GameQuestion(equation: "Astonish", correctAnswer: "Surprise", options: ["Bore", "Surprise", "Expect", "Anticipate"]),
        GameQuestion(equation: "Brutal", correctAnswer: "Cruel", options: ["Kind", "Cruel", "Gentle", "Compassionate"]),
        GameQuestion(equation: "Conclude", correctAnswer: "Finish", options: ["Start", "Finish", "Begin", "Open"]),
        GameQuestion(equation: "Dreadful", correctAnswer: "Terrible", options: ["Wonderful", "Terrible", "Great", "Excellent"]),
        GameQuestion(equation: "Expand", correctAnswer: "Grow", options: ["Shrink", "Grow", "Contract", "Reduce"]),
        GameQuestion(equation: "Grateful", correctAnswer: "Thankful", options: ["Ungrateful", "Thankful", "Unappreciative", "Resentful"]),
        GameQuestion(equation: "Initial", correctAnswer: "First", options: ["Last", "First", "Final", "Ending"]),
      ],
      questionPool: [
        GameQuestion(equation: "Precise", correctAnswer: "Exact", options: ["Approximate", "Exact", "Vague", "Unclear"]),
        GameQuestion(equation: "Scheme", correctAnswer: "Plan", options: ["Chaos", "Plan", "Disorder", "Confusion"]),
        GameQuestion(equation: "Witty", correctAnswer: "Clever", options: ["Dull", "Clever", "Boring", "Stupid"]),
      ],
    ),

    // Level 90 - Synonyms
    GameLevel(
      level: 90,
      questions: [
        GameQuestion(equation: "Appease", correctAnswer: "Calm", options: ["Agitate", "Calm", "Anger", "Provoke"]),
        GameQuestion(equation: "Boldness", correctAnswer: "Courage", options: ["Cowardice", "Courage", "Fear", "Timidity"]),
        GameQuestion(equation: "Collide", correctAnswer: "Crash", options: ["Miss", "Crash", "Avoid", "Dodge"]),
        GameQuestion(equation: "Diligent", correctAnswer: "Hardworking", options: ["Lazy", "Hardworking", "Idle", "Careless"]),
        GameQuestion(equation: "Enrich", correctAnswer: "Improve", options: ["Worsen", "Improve", "Damage", "Harm"]),
        GameQuestion(equation: "Flaw", correctAnswer: "Defect", options: ["Perfection", "Defect", "Excellence", "Virtue"]),
        GameQuestion(equation: "Hollow", correctAnswer: "Empty", options: ["Full", "Empty", "Solid", "Filled"]),
      ],
      questionPool: [
        GameQuestion(equation: "Noble", correctAnswer: "Honorable", options: ["Shameful", "Honorable", "Disgraceful", "Dishonest"]),
        GameQuestion(equation: "Remedy", correctAnswer: "Cure", options: ["Disease", "Cure", "Illness", "Sickness"]),
        GameQuestion(equation: "Timid", correctAnswer: "Shy", options: ["Bold", "Shy", "Confident", "Outgoing"]),
      ],
    ),

    // Level 91 - Synonyms
    GameLevel(
      level: 91,
      questions: [
        GameQuestion(equation: "Adaptable", correctAnswer: "Flexible", options: ["Rigid", "Flexible", "Stiff", "Inflexible"]),
        GameQuestion(equation: "Burst", correctAnswer: "Explode", options: ["Contain", "Explode", "Hold", "Keep"]),
        GameQuestion(equation: "Cautious", correctAnswer: "Careful", options: ["Reckless", "Careful", "Careless", "Hasty"]),
        GameQuestion(equation: "Defy", correctAnswer: "Resist", options: ["Obey", "Resist", "Submit", "Comply"]),
        GameQuestion(equation: "Emerge", correctAnswer: "Appear", options: ["Disappear", "Appear", "Vanish", "Hide"]),
        GameQuestion(equation: "Flee", correctAnswer: "Escape", options: ["Stay", "Escape", "Remain", "Confront"]),
        GameQuestion(equation: "Harbor", correctAnswer: "Shelter", options: ["Expose", "Shelter", "Reveal", "Uncover"]),
      ],
      questionPool: [
        GameQuestion(equation: "Intrude", correctAnswer: "Interfere", options: ["Respect", "Interfere", "Allow", "Permit"]),
        GameQuestion(equation: "Rigid", correctAnswer: "Firm", options: ["Flexible", "Firm", "Soft", "Bendable"]),
        GameQuestion(equation: "Wander", correctAnswer: "Roam", options: ["Stay", "Roam", "Settle", "Remain"]),
      ],
    ),

    // Level 92 - Synonyms
    GameLevel(
      level: 92,
      questions: [
        GameQuestion(equation: "Accurate", correctAnswer: "Correct", options: ["Wrong", "Correct", "False", "Incorrect"]),
        GameQuestion(equation: "Bribe", correctAnswer: "Offer", options: ["Refuse", "Offer", "Decline", "Reject"]),
        GameQuestion(equation: "Conserve", correctAnswer: "Protect", options: ["Waste", "Protect", "Destroy", "Harm"]),
        GameQuestion(equation: "Distort", correctAnswer: "Twist", options: ["Straighten", "Twist", "Correct", "Fix"]),
        GameQuestion(equation: "Eternal", correctAnswer: "Endless", options: ["Temporary", "Endless", "Brief", "Short"]),
        GameQuestion(equation: "Grasp", correctAnswer: "Grip", options: ["Release", "Grip", "Let go", "Drop"]),
        GameQuestion(equation: "Immense", correctAnswer: "Huge", options: ["Tiny", "Huge", "Small", "Little"]),
      ],
      questionPool: [
        GameQuestion(equation: "Nurture", correctAnswer: "Care", options: ["Neglect", "Care", "Ignore", "Abandon"]),
        GameQuestion(equation: "Resolve", correctAnswer: "Settle", options: ["Complicate", "Settle", "Confuse", "Worsen"]),
        GameQuestion(equation: "Venerate", correctAnswer: "Respect", options: ["Disrespect", "Respect", "Insult", "Mock"]),
      ],
    ),

    // Level 93 - Synonyms
    GameLevel(
      level: 93,
      questions: [
        GameQuestion(equation: "Affection", correctAnswer: "Love", options: ["Hatred", "Love", "Dislike", "Animosity"]),
        GameQuestion(equation: "Beneath", correctAnswer: "Under", options: ["Above", "Under", "Over", "Top"]),
        GameQuestion(equation: "Conscious", correctAnswer: "Aware", options: ["Unaware", "Aware", "Oblivious", "Ignorant"]),
        GameQuestion(equation: "Disrupt", correctAnswer: "Disturb", options: ["Order", "Disturb", "Organize", "Arrange"]),
        GameQuestion(equation: "Elevate", correctAnswer: "Lift", options: ["Lower", "Lift", "Drop", "Descend"]),
        GameQuestion(equation: "Forbid", correctAnswer: "Prohibit", options: ["Allow", "Prohibit", "Permit", "Enable"]),
        GameQuestion(equation: "Haste", correctAnswer: "Speed", options: ["Slowness", "Speed", "Delay", "Hesitation"]),
      ],
      questionPool: [
        GameQuestion(equation: "Majestic", correctAnswer: "Grand", options: ["Humble", "Grand", "Plain", "Simple"]),
        GameQuestion(equation: "Plunge", correctAnswer: "Drop", options: ["Rise", "Drop", "Ascend", "Climb"]),
        GameQuestion(equation: "Tolerate", correctAnswer: "Accept", options: ["Reject", "Accept", "Refuse", "Deny"]),
      ],
    ),

    // Level 94 - Synonyms
    GameLevel(
      level: 94,
      questions: [
        GameQuestion(equation: "Ally", correctAnswer: "Partner", options: ["Enemy", "Partner", "Foe", "Opponent"]),
        GameQuestion(equation: "Boost", correctAnswer: "Increase", options: ["Decrease", "Increase", "Reduce", "Lower"]),
        GameQuestion(equation: "Convince", correctAnswer: "Persuade", options: ["Discourage", "Persuade", "Deter", "Dissuade"]),
        GameQuestion(equation: "Erode", correctAnswer: "Wear away", options: ["Build", "Wear away", "Construct", "Create"]),
        GameQuestion(equation: "Faint", correctAnswer: "Weak", options: ["Strong", "Weak", "Powerful", "Intense"]),
        GameQuestion(equation: "Hasty", correctAnswer: "Quick", options: ["Slow", "Quick", "Careful", "Deliberate"]),
        GameQuestion(equation: "Justify", correctAnswer: "Explain", options: ["Confuse", "Explain", "Obscure", "Hide"]),
      ],
      questionPool: [
        GameQuestion(equation: "Pledge", correctAnswer: "Promise", options: ["Break", "Promise", "Betray", "Abandon"]),
        GameQuestion(equation: "Soothe", correctAnswer: "Comfort", options: ["Agitate", "Comfort", "Disturb", "Upset"]),
        GameQuestion(equation: "Wicked", correctAnswer: "Evil", options: ["Good", "Evil", "Virtuous", "Kind"]),
      ],
    ),

    // Level 95 - Synonyms
    GameLevel(
      level: 95,
      questions: [
        GameQuestion(equation: "Ascend", correctAnswer: "Rise", options: ["Fall", "Rise", "Drop", "Descend"]),
        GameQuestion(equation: "Barrier", correctAnswer: "Block", options: ["Opening", "Block", "Path", "Way"]),
        GameQuestion(equation: "Compassion", correctAnswer: "Kindness", options: ["Cruelty", "Kindness", "Meanness", "Harshness"]),
        GameQuestion(equation: "Dominate", correctAnswer: "Control", options: ["Submit", "Control", "Surrender", "Yield"]),
        GameQuestion(equation: "Evident", correctAnswer: "Clear", options: ["Unclear", "Clear", "Vague", "Obscure"]),
        GameQuestion(equation: "Fumble", correctAnswer: "Mishandle", options: ["Master", "Mishandle", "Control", "Manage"]),
        GameQuestion(equation: "Harsh", correctAnswer: "Severe", options: ["Gentle", "Severe", "Mild", "Soft"]),
      ],
      questionPool: [
        GameQuestion(equation: "Linger", correctAnswer: "Stay", options: ["Leave", "Stay", "Depart", "Go"]),
        GameQuestion(equation: "Persevere", correctAnswer: "Continue", options: ["Quit", "Continue", "Stop", "Surrender"]),
        GameQuestion(equation: "Worthy", correctAnswer: "Deserving", options: ["Unworthy", "Deserving", "Undeserving", "Worthless"]),
      ],
    ),

    // Level 96 - Synonyms
    GameLevel(
      level: 96,
      questions: [
        GameQuestion(equation: "Abundant", correctAnswer: "Plentiful", options: ["Scarce", "Plentiful", "Rare", "Limited"]),
        GameQuestion(equation: "Bewilder", correctAnswer: "Confuse", options: ["Clarify", "Confuse", "Explain", "Simplify"]),
        GameQuestion(equation: "Criticize", correctAnswer: "Blame", options: ["Praise", "Blame", "Commend", "Compliment"]),
        GameQuestion(equation: "Defeat", correctAnswer: "Beat", options: ["Win", "Beat", "Victory", "Triumph"]),
        GameQuestion(equation: "Elope", correctAnswer: "Run away", options: ["Stay", "Run away", "Remain", "Settle"]),
        GameQuestion(equation: "Fragile", correctAnswer: "Breakable", options: ["Strong", "Breakable", "Tough", "Durable"]),
        GameQuestion(equation: "Immerse", correctAnswer: "Submerge", options: ["Surface", "Submerge", "Emerge", "Rise"]),
      ],
      questionPool: [
        GameQuestion(equation: "Perilous", correctAnswer: "Dangerous", options: ["Safe", "Dangerous", "Secure", "Protected"]),
        GameQuestion(equation: "Sincere", correctAnswer: "Genuine", options: ["Fake", "Genuine", "False", "Dishonest"]),
        GameQuestion(equation: "Triumph", correctAnswer: "Victory", options: ["Defeat", "Victory", "Loss", "Failure"]),
      ],
    ),

    // Level 97 - Synonyms
    GameLevel(
      level: 97,
      questions: [
        GameQuestion(equation: "Acknowledge", correctAnswer: "Accept", options: ["Deny", "Accept", "Reject", "Refuse"]),
        GameQuestion(equation: "Brisk", correctAnswer: "Quick", options: ["Slow", "Quick", "Sluggish", "Lazy"]),
        GameQuestion(equation: "Convey", correctAnswer: "Communicate", options: ["Conceal", "Communicate", "Hide", "Suppress"]),
        GameQuestion(equation: "Disguise", correctAnswer: "Hide", options: ["Reveal", "Hide", "Show", "Expose"]),
        GameQuestion(equation: "Endorse", correctAnswer: "Support", options: ["Oppose", "Support", "Reject", "Deny"]),
        GameQuestion(equation: "Furious", correctAnswer: "Angry", options: ["Calm", "Angry", "Peaceful", "Happy"]),
        GameQuestion(equation: "Impartial", correctAnswer: "Fair", options: ["Biased", "Fair", "Prejudiced", "Unfair"]),
      ],
      questionPool: [
        GameQuestion(equation: "Mend", correctAnswer: "Fix", options: ["Break", "Fix", "Damage", "Destroy"]),
        GameQuestion(equation: "Probe", correctAnswer: "Investigate", options: ["Ignore", "Investigate", "Overlook", "Neglect"]),
        GameQuestion(equation: "Tender", correctAnswer: "Soft", options: ["Rough", "Soft", "Hard", "Harsh"]),
      ],
    ),

    // Level 98 - Synonyms
    GameLevel(
      level: 98,
      questions: [
        GameQuestion(equation: "Arrogant", correctAnswer: "Proud", options: ["Humble", "Proud", "Modest", "Meek"]),
        GameQuestion(equation: "Burden", correctAnswer: "Load", options: ["Relief", "Load", "Help", "Ease"]),
        GameQuestion(equation: "Commence", correctAnswer: "Start", options: ["End", "Start", "Finish", "Stop"]),
        GameQuestion(equation: "Dwell", correctAnswer: "Live", options: ["Leave", "Live", "Depart", "Go"]),
        GameQuestion(equation: "Evoke", correctAnswer: "Recall", options: ["Forget", "Recall", "Ignore", "Dismiss"]),
        GameQuestion(equation: "Frigid", correctAnswer: "Cold", options: ["Hot", "Cold", "Warm", "Boiling"]),
        GameQuestion(equation: "Hinder", correctAnswer: "Block", options: ["Help", "Block", "Aid", "Assist"]),
      ],
      questionPool: [
        GameQuestion(equation: "Obsolete", correctAnswer: "Outdated", options: ["Modern", "Outdated", "Current", "New"]),
        GameQuestion(equation: "Plead", correctAnswer: "Beg", options: ["Demand", "Beg", "Order", "Command"]),
        GameQuestion(equation: "Vague", correctAnswer: "Unclear", options: ["Clear", "Unclear", "Obvious", "Precise"]),
      ],
    ),

    // Level 99 - Synonyms
    GameLevel(
      level: 99,
      questions: [
        GameQuestion(equation: "Attain", correctAnswer: "Achieve", options: ["Fail", "Achieve", "Lose", "Miss"]),
        GameQuestion(equation: "Brittle", correctAnswer: "Fragile", options: ["Strong", "Fragile", "Tough", "Durable"]),
        GameQuestion(equation: "Complicate", correctAnswer: "Confuse", options: ["Simplify", "Confuse", "Clarify", "Explain"]),
        GameQuestion(equation: "Domesticate", correctAnswer: "Tame", options: ["Wild", "Tame", "Savage", "Feral"]),
        GameQuestion(equation: "Entice", correctAnswer: "Attract", options: ["Repel", "Attract", "Disgust", "Deter"]),
        GameQuestion(equation: "Grim", correctAnswer: "Gloomy", options: ["Cheerful", "Gloomy", "Happy", "Bright"]),
        GameQuestion(equation: "Major", correctAnswer: "Important", options: ["Minor", "Important", "Trivial", "Insignificant"]),
      ],
      questionPool: [
        GameQuestion(equation: "Prevail", correctAnswer: "Succeed", options: ["Fail", "Succeed", "Lose", "Surrender"]),
        GameQuestion(equation: "Scrutinize", correctAnswer: "Examine", options: ["Ignore", "Examine", "Overlook", "Neglect"]),
        GameQuestion(equation: "Thrifty", correctAnswer: "Economical", options: ["Wasteful", "Economical", "Extravagant", "Lavish"]),
      ],
    ),

    // Level 100 - Synonyms
    GameLevel(
      level: 100,
      questions: [
        GameQuestion(equation: "Amuse", correctAnswer: "Entertain", options: ["Bore", "Entertain", "Tire", "Dull"]),
        GameQuestion(equation: "Blend", correctAnswer: "Combine", options: ["Separate", "Combine", "Divide", "Split"]),
        GameQuestion(equation: "Confiscate", correctAnswer: "Seize", options: ["Return", "Seize", "Give", "Restore"]),
        GameQuestion(equation: "Detest", correctAnswer: "Hate", options: ["Love", "Hate", "Adore", "Like"]),
        GameQuestion(equation: "Endow", correctAnswer: "Provide", options: ["Withhold", "Provide", "Deny", "Refuse"]),
        GameQuestion(equation: "Fury", correctAnswer: "Rage", options: ["Calm", "Rage", "Peace", "Serenity"]),
        GameQuestion(equation: "Honest", correctAnswer: "Truthful", options: ["Dishonest", "Truthful", "Lying", "Deceptive"]),
      ],
      questionPool: [
        GameQuestion(equation: "Nomadic", correctAnswer: "Wandering", options: ["Settled", "Wandering", "Fixed", "Stationary"]),
        GameQuestion(equation: "Reckon", correctAnswer: "Think", options: ["Ignore", "Think", "Dismiss", "Overlook"]),
        GameQuestion(equation: "Turbulent", correctAnswer: "Unstable", options: ["Stable", "Unstable", "Calm", "Peaceful"]),
      ],
    ),
  ];

  static GameLevel? getLevelData(int level) {
    if (level > 0 && level <= levels.length) {
      return levels[level - 1];
    }
    return null;
  }

  static int getTotalLevels() {
    return levels.length;
  }
}
