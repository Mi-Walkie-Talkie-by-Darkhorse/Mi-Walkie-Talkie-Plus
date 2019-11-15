package com.mi.milinkforgame.sdk.base.os.info;

import android.os.Environment;
import com.mi.milinkforgame.sdk.base.Global;

public class StorageDash {
    public static boolean hasExternal() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static boolean hasExternalReadable() {
        String externalStorageState = Environment.getExternalStorageState();
        return "mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState);
    }

    public static StorageInfo getExternalInfo() {
        if (!hasExternalReadable()) {
            return null;
        }
        return StorageInfo.fromFile(Environment.getExternalStorageDirectory());
    }

    public static StorageInfo getInnerInfo() {
        return StorageInfo.fromFile(Global.getFilesDir());
    }
}
