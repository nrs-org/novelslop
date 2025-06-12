#import "../../lib.typ": chapter

#chapter(13, "Computers are interesting... right?")[
  Mona's dad owned a computer, which Mona had barely touched.

  She was told stories about how they were crowned the greatest inventions of
  the 90s, and how it revolutionized how the world functioned as a whole, but
  she had only used it for her school assignments.

  It was natural for a girl who was born in the age of smartphones, which
  had quickly taken over the computing world from the hands of computers.
  Despite its limitations in functionality compared to a fully-featured
  computer, mobile phones offered a greater entertainment experience, which
  allowed it to take over all aspects of daily life.

  And now, Mona and her friends felt like their life would be nowhere-complete
  without their smartphones, while not knowing how exactly useful a computer
  could be.

  Hence, Mona walked in the IT clubroom, expecting to see a digital vintage
  world of some old technology.

  What she saw definitely surprised her.

  _"Wires, wires everywhere!"_

  To accomodate the club's immense demand of electricity, power outlets and
  wires were placed everywhere throughout the clubroom. All the complex wiring
  were to power the computers, which there were one or two dozens. Some members
  were sitting at a computer, typing something to the machine with lightning
  speed.

  The male student standing in front of Mona introduced himself with an
  increasingly quieter tone. He was the club president, since he was in charge
  of maintenance for the club's infrastructure.

  Once the initial greeting was done, he invited the girls to get in to take a
  closer look. Following his swift navigation through the wiring like a true
  ninja, the three girls finally got an idea of how the IT club was supposed to
  be.

  Mona tried to recall some of her knowledge from IT classes. Most of it was
  abstract jargon about information, data, and knowledge. Then there were some
  assignments with some weird-looking computer programs.

  At first, she used some educational program to get used to controlling the
  machine, via special devices known as the "mouse" and a "keyboard". The
  mouse was used to move a virtual pointer on the computer screen, and when the
  button on it was clicked, it acted somewhat like Mona tapped on a touchscreen
  device like her phone, with the only difference being the position of action
  was where the cursor pointed at. The keyboard was like the smartphone
  keyboard, but with more weirdly-named keys like _F6_ and _Pause_ other than
  the regular alphanumeric keys.

  "Well... I guess... I will give a quick rundown of the club..."

  "Senpai, you got it!" Uta encouraged him in a half-joking tone.

  "Uhm... thanks." He continued, "Well, the club..., as you can see, was mainly
  about computers. Even though computers were just a small topic of the IT
  subject you learn at school, it is our main topic here."

  _"Right, since serious work can't be done with mobile phones, right?"_

  Computers were sophisticated devices which had more functionalities than
  smartphones, but it was exclusively used for work. If one wanted to browse
  social media, for example, you would have to download a smartphone emulator
  to run the social media app, which was about five to ten times slower than
  just running that app on a phone. And even though the social media company
  could just make a program that worked on desktop to browse that specific
  social media site, it was too much of a cost for a tiny user base.

  Recently, Mona also heard some short videos talking about the cost reason was
  just an excuse, and the real reason was to trap the app's user base in the
  walled garden ecosystem of mobile phones, which seemed to be a quite
  interesting thing to pull off. Though, it was probably just a silly conspiracy
  theory, anyway.

  Returning to the matter at hand, it seemed that Mona had dozed off from the
  conversation. Thanksfully, she could catch up by utilizing her extensive
  knowledge from 30-second fact videos to fill in the gaps.

  "So, there is this thing called competitive programming. You formed teams, and
  then try to solve a set of problems like any normal math or science test." The
  senpai talked in an intriguing tone, "But the answer is actually a program, so
  you gotta write code."

  "Programs? You mean the coding assignments in second-year middle school? You
  can compete in writing that?" Mikoto replied with enthuasm.

  "Right! And if you are good at this and got some awards, some university would
  take you in instantly."

  "Really? Maybe I should take a try."

  Mona noticed that the president suddenly became able to converse much more
  freely than before. Maybe it was due to the fact it was his topic?

  Illusioned with the idea of a free admission to college, Mikoto sat down at a
  computer, experiencing first-hand the IT club experience. Meanwhile, Uta and
  Mona were both watching closely.

  The president pointed to a blue-ish icon on the top left, to which Mikoto
  moved her mouse cursor to before double-clicking on it. Then, a blue interface
  popped up with all sort of weird symbols. The president pressed some key
  combination to get rid of everything on the interface, leaving just a couple
  of monospace text lines.

  "Wait, this isn't Kantan? What programming language is this?"

  "Kantan was mostly an educational language, so it's quite useless on tasks
  that are not drawing turtle graphics and writing to files. We are doing
  assembly programming, the REAL programming language by REAL programmers."

  "Assembly? It's the first time I heard of that. Uta, do you know it?"

  "Hmm-, I remembered that name from some video I saw online. They said it's
  extremely difficult to program in, though."

  "Don't worry, it'll become much easier if you got the hang of it. See, this
  simple program only move 0 to the register `er1`, before returning control to
  the operating system."

  "Register? I don't think I'm following..."

  "Oh, right, they did not introduce that in standard IT textbooks. Just think
  of it as a place data is placed, for now."

  "Uhm, I guess so..."

  "Let's see a more complex example!" The president, who was standing next to
  the desk put his hand on the keyboard and typed some more code. He would then
  hit `F6` button, which spawned a new console on the screen.

  "Tada, here is a program that prints 'Hello, World!'."

  However, the code of the program was now much more complicated.

  "You see, to print 'Hello, World!', you need to tell the operating system to
  do so, and that's via a _system call_ (syscall). On this specific machine, a
  syscall can be executed via setting `er1` to the syscall number, while other
  parameters are passed in `er2` to `er5`." The president continued, "Here, the
  syscall for printing is `0x621`, ah right, that's in hexadecimal, but that's
  unimportant, and it expects two parameters: the number of bytes printed and
  the pointer to the printed data, which I passed via `er2` and `er3`. Finally,
  to do the syscall, we use the `0x14` interrupt."

  _"System call? Hexadecimal? Pointers? What on earth is he talking about?"_

  The president became a talking textbook. And not an ordinary textbook, it was
  an advanced one for college graduate students or something. The three girls
  could only digest about one tenth of what he said.

  "I'm sorry, but I could only understand like a bit of that."

  "Oh, sorry! So here, you see, a system call is a message from your program to
  the operating system" He drawed a diagram on the board, "The operating system
  is the interface between your userspace program and the underlying hardware,
  like the screen for example."

  He ended up introducing even more technical terms than before. To be honest,
  you need to know a lot of Computer Science theory to be able to write an
  Assembly program, and that was why a more simpler language like Kantan is
  taught in compulsory education. However, the explicit control of Assembly made
  it run much faster, which was crucial for contests.

  After a while of explaining, finally the three girls could get the gist of
  things.

  "So, if we change the data of the `.text` block and pass the new length in
  `er2`, it should print what we want to?"

  "You're right!"

  Mikoto made the modification, changing the generic 'Hello, World' to her
  name, before hitting the run button.

  And the output was a English text: 'Program Termination'.

  "Heh? What did I do wrong?"

  "Oh, the console can't handle Japanese words, I forgot to mention that it is
  English-only."

  "So... Is there a way to fix this?"

  "You can set the locale by the `0x37` syscall, then enable experimental
  Unicode support via the `0x600` syscall, and change the number of bytes to
  print to 8 because each Japanese characters is two-byte long..."

  After seeing the shocked expressions on the girls' face, he finally stopped
  talking.

  "Well... Maybe this is to advanced."

  "Erm-, no it's okay, senpai! Thanks for your guidance..."

  Mikoto, while replying, instinctively looked at the computer clock in the
  taskbar.

  "Ehhh! It's been fifteen minutes already!"

  The president's lengthy introduction to Assembly programming made the time
  went flying by. The three girls hastily picked up their bags, saying their
  final greetings before heading out.

  In their minds, the three girls were thinking the exact same thing.

  _"This place is too much for me!"_

  With no time for a break, they headed straight to the destination on their
  little club-visiting adventure.
]
