# ansible-vault-brute-force
A tool to brute force gaining access to an ansible vault

[![Licence](https://img.shields.io/badge/Licence-ISC-blue.svg)](https://opensource.org/licenses/ISC)

# usage
1. define your dictionary space (currently done in code will extract to a separate function)
2. run `./ansible-vault-brute-force.sh vault.yml`

**note:** im not including the password but the dictionary space is set up correctly to have the password in its namespace.  It took me less then 10 seconds.
