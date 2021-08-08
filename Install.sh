sudo apt install nmap -y && sudo apt install hping3 -y && sudo apt install patator -y && sudo apt install medusa -y && sudo apt install ettercap-text-only -y && curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall && sudo apt install postgresql -y && chmod a+x Scripts/*.* && chmod a+x Scripts/phoneinfoga && rm msfinstall && sudo apt install macchanger && sudo apt install wpscan
