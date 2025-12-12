# dct-toolkit-scripts
Public repository hosting a variety of sample DCT Toolkit Scripts. These scripts are used as input into the DCT Toolkit Agent.

## Directions
- If you wish to contribute, please submit a PR with your new or updated script added to the `examples` folder. 
- Once reviewed and merged, it will need to be copied as a `.txt` file and moved into the `examples_txt_files` folder to be picked up by the DCT Toolkit Agent.



## Directory
- [examples](examples) - The originally validated Shell files that have been confirmed to work. 
- [examples_txt_files](examples_txt_files) - The originaly validated script files that have been converted to `.txt` so the Microsoft Copilot Agent can interpret them. Note: The Agent can only read .md and .txt files.
- [process_files.sh](process_files.sh) - Simple script to iterate through all files in the `examples` folder, append `.txt`, and copy them into the `examples_txt_files` folder. This is not a DCT Toolkit script.
    - Sample Runtime: `./process_file.sh ./examples`
