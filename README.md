# Let's Go! 🛸
### Warpspeed your workflow with a single command.

```
$ . lets-go.sh "<project-directory>"
```

This simple Bash script speeds up your workflow on current projects by elimating endless/keystrokes/to/the/directory/you/want, as well as the extra command (or click) to open your IDE. Let's save our finger strength for the coding, shall we?

### Getting Started
Place this script inside your home directory--typically `/c/Users/<username>` for Windows and MacOS users--or whichever root directory you've designated for your terminal. Open the script and replace the value of `base_path` with the path to your parent directory, ie. `~/Documents/Cool_Dude/Dev_Stuff`

Once that's sorted, you can activate your project via a single, speedy command:

```
$ . lets-go.sh "<project-directory>"
```

This will change the working directory to your specified path, then launch VS Code (or your IDE of choice). If there are other apps you'd like to open alongside your IDE, they can be added to the last line(s) of the `lets_go` function. 

> [!NOTE]
> Make sure you're in your home/root directory before running the script. If you've just opened your terminal, you're all good. If you're not sure where the hell you are, go home: `cd ~`

> [!IMPORTANT]
> This script is only compatible with Bash/Zsh shells. If you'd like to use it with Powershell or Command Prompt, tweak at your own peril.