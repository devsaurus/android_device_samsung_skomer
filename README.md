Device configuration for the Samsung Skomer

Copyright (C) 2013 The CyanogenMod Project
Copyright (C) 2013 Felix Obenhuber <f.obenhuber@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0



This device specific files can be used to build a CWM based recovery for the Samsung GT-S7710 (skomer). Work is in progress.
The CWM port is untested and may not work as expected. Use at your own risk.


Build instructions:


1. Initialize repo

# repo init -u git://github.com/CyanogenMod/android.git -b cm-10.1


2. Add a local manifest

create a xml file unter .repo/local_manifests with the following content:

<?xml version="1.0" encoding="UTF-8"?>
<manifest>
 <project path="device/samsung/skomer" name="flxo/android_device_samsung_skomer" revision="cm-10.1" />
 <project path="kernel/samsung/skomer" name="flxo/android_kernel_samsung_skomer" revision="cm-10.1" />
 <project path="vendor/samsung/u8500-common" name="flxo/android_vendor_samsung_u8500-common" revision="cm-10.1" />
 <project path="device/samsung/u8500-common" name="TeamCanjica/android_device_samsung_u8500-common" revision="cm-10.1_staging" />
</manifest>


3. sync 

# repo sync

this may take while.

4. build

# source build/envsetup.sh
# lunch cm_skomer-userdebug
# make -jX recoveryimage


Thanks to:

CyanogenMod
Oliver96
TeamCanjica
TheBoegl