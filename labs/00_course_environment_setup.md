# Course Environment Setup #

Welcome to IGME-340 Multi-platform Media Application Development. Before really getting into our course, it is important to perform some inital work to ensure your experience is as smooth as possible.

This lab will go over the following items:
1. Proper Flutter installtion.
2. Visual Studio Code setup.
3. Android Simulator setup.
4. Commenting Guidelines.
5. Submission Guidelines.

# Flutter Installation
There are number of methods to install Flutter, But this is the following method I recomment.

1. Open a web browser to this address: https://docs.flutter.dev/get-started/install/windows/mobile
2. Download the latest Flutter version zip file.
3. Unzip the file to a folder on your C Drive or other letter drive, ex: C:\flutter.
4.   DO NOT install flutter on your desktop, users folder, or program files location!
5.   The folder path to the flutter __SDK MUST NOT CONTAIN__ special characters and spaces!
6. Update your Windows PATH variable
#

The System > About dialog displays.

Click Advanced System Settings > Advanced > Environment Variables...

The Environment Variables dialog displays.

In the User variables for (username) section, look for the Path entry.

If the entry exists, double-click on it.

The Edit Environment Variable dialog displays.

Double-click in an empty row.

Type %USERPROFILE%\dev\flutter\bin.

Click the %USERPROFILE%\dev\flutter\bin entry.

Click Move Up until the Flutter entry sits at the top of the list.

Click OK three times.

If the entry doesn't exist, click New....

The Edit Environment Variable dialog displays.

In the Variable Name box, type Path.

In the Variable Value box, type %USERPROFILE%\dev\flutter\bin

Click OK three times.
