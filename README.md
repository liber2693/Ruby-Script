It is necessary to have Ruby 2.6.2 installed.

To run the script it is necessary to save the project in any folder. Unzip the ZIP file inside this folder.

From the console, enter the folder with the command " cd 'project name' ".

Execute a "bundle install" to download the dependencies.

Then run the script with the command " ruby init_script.rb ".

At this point the script will start running. First it will ask you the number of days in which you want to generate the corresponding data. This amount is validated between 1 and 30 days. It can NOT be empty. Any error will cause the script to terminate its execution, sending a message of what happened.

Secondly the name of the sample file. In this case it is called " sample.txt ". Like the previous one, it is also validated. For example, the file with a name that does not exist.

When the script finishes running (it takes a few thousandths of seconds), a txt file will be generated, inside the tmp folder, containing the output of the file.

As for SPECS, the RSPEC gem is used. This can be verified with the command "bundle exec rspec spec/spec_script.rb".
