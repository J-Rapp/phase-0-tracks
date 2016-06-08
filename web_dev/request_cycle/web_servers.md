**What are some of the key design philosophies of the Linux operating system?**

- Assumes that the user is computer literate from the start/knows what he or she is doing.
- Not worried about users doing stupid things, as that also prevent sthem from doing clever things.
- Elitist? No. Egalitarian. "Treat all users with respect"

**What is a VPS and what are some advantages of using one?**

- A virtual private server is a virtual machine sold as a service by an internet hosting service
- It comes with it's own copy of an OS
- Safe/virtual spcae to mess around with operating systems without worrying about the consequences
- It's affordable like shared hosting, but also acts as a dedicated server so it's entirely your own

**Why is it considered a bad idea to run programs as the root user on a Linux system?**

- Root is essentially administrator level access. If you install and run a linux program in root, it's possible that the program might encounter a bug and ruin other stuff unintentionally. Even worse, the program might include something that allows someone to access your system, which is bad if the program has root instead of just user access.
