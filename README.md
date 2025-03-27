# HARansom
This tool allows you to encrypt files on a compromised Windows machine using batch scripts (.bat).

Description :

This tool allows you to encrypt files on a compromised Windows machine using batch scripts (.bat).

The two main files of this tool are:
* HARansom.bat: This script encrypts all files in a specified folder and creates a note.txt file containing information about the encryption.
* HADecrypt.bat: This script decrypts previously encrypted files using the decryption key.

Features :

* File Encryption: The HARansom.bat script encrypts all files in a folder, except for batch files.
* Note Creation: A note.txt file is generated to inform the victim that the files have been encrypted.
* Decryption: The HADecrypt.bat script allows you to decrypt the encrypted files and restore their original names.

Usage :

Encryption :
To encrypt files, simply use the command :
HARansom.bat

This script will:
* Check for the presence of files to encrypt.
* Generate a decryption key.
* Create a note.txt file with instructions.
* Encrypt the files and delete the originals.

Decryption :
For decryption, use the command:
**HADecrypt.bat**

This script will:
* Check for the existence of the note.txt file.
* Read the decryption key.
* Decrypt the files and delete the encrypted files.

Warnings :
* Use this tool responsibly. Encrypting files without authorization may be illegal.
* Use it in an environment where you are the sole owner.
