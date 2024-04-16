# Windows

### Layouts
Three layouts for windows are provided:
* [usintgr](/windows/usintgr/): A version of the US intl keyboard layout with no dead keys. Taken from: https://github.com/umanovskis/win-kbd-usint-nodead.
* [wokmokus](/windows/wokmokus/): This layout is the usintgr layout with wokmok letterings.
* [wokmokdk](/windows/wokmokdk/): This layout is the danish keyboard layout without dead keys and with wokmok letterings.

#### Installation
To install any of the three layouts, simply enter their folder and run setup.exe.


### Layer 5
2 layer 5 scripts are provided. [AutoHotkey](https://www.autohotkey.com/) must be installed on the machine. The scripts should also work on MacOS. layer5qwerty.ahk works for the usintgr layout and layer5wokmok.ahk works for wokmokus. It also works for wokmokdk, except for the danish letter keys.

#### Installation
Copy the desired script to the startup folder, or double click it to run it manually. To find the startup folder press Win + R to open the Run dialog. Type 'shell:startup' and press enter, which will open the current user's startup folder.
