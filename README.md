<img src="assets/Banner.png">

# WolverineFramework

WolverineFramework is a little and very complete Script allowing you to install and use basic Cybersecurity tools ! The Script is constantly updated, so don't forget to run the "CheckForUpdates.sh" script frequently !

# How it works ?

It's very simple, the main script "Wolverine.sh" ask you what you want to do and, depending on what you choose, it will run some "mini" script in the Script folder, in order to avoid you the task to type complete commands lines.

# Outils présent dans le Framework

  - ettercap-text-only -> Man in the Middle tool
  - hping3 -> DoS/DDoS tool
  - Medusa -> Multi purpose Bruteforce tool
  - Patator -> Multi purpose Bruteforce tool (Not available on ArchLinux)
  - Network Mapper (nmap) -> Network and ports scanning tool
  - PostGreSQL -> Essential database for Metasploit
  - Metasploit -> Framework with a lot of Exploits
  - Phoneinfoga -> Tool to get informations on Intenret from a Phone Number 
  - Wordpress Security Scanner (WPScan) -> Tool to scan Wordpress Websites, to get all the extensions and so the vulnerabilities
  - MacChanger -> Tool used to hide your real MAC Address behind a fake one
  - Bastet -> Tetris Clone (Not available on ArchLinux)
  - Nudoku -> Sudoku Game (Not available on ArchLinux)
  - Nsnake -> Snake Clone (Not available on ArchLinux)
  - Ninvaders -> Space Invaders Clone (not avaible on ArchLinux)

# How to use ?

First, I advise you to run the "Install.sh" script. For that, you have to make it executable, with the command "sudo chmod a+x CheckForUpdates.sh". This script install every packets needed for the Framework (It'll install the packets above, if you have them, it'll do nothing), he'll also make the others script executable. If you're using Kali Linux, you don't need this step, but you have to make every Script executable, with the command "chmod a+x .sh && chmod a+x Scripts/" in the Framework's folder.

Then, I advise you to run the "ChechForUpdates.sh", it'll check if there's an update available, if it's the case, it'll ask you to clone the Repository to have the lastest version.	

Finally, you can run the "Wolverine.sh" script, and you just have to answer the questions to use it, it'll run the scripts from the Scripts' folder to execute what you ask !

# That's it !

Have fun with this little script, if you want to contact me, you can on Discord or Twitter :

Discord : Théo#2226
Twitter : @LeCoqHardi__

# Important Notes

- If you have the error "Unable to Locate package metasploit-framework", use this command -> "wget https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb && chmod +x msfinstall &&./msfinstall "
- Right now Patator isn't available on ArchLinux, when it'll be, i'll add it to the script Install_arch.sh
- Every games aren't in ArchLinux, when they'll be, i'll add it to the script Install_arch.sh
