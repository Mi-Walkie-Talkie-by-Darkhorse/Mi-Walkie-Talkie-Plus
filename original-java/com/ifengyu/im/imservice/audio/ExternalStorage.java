package com.ifengyu.im.imservice.audio;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.IOException;

public class ExternalStorage {
    protected static String NO_MEDIA_FILE_NAME = ".nomedia";
    private static final String TAG = "ExternalStorage";
    private static ExternalStorage instance;
    private Context context;
    private boolean hasPermission = true;
    private String sdkStorageRoot = null;

    private ExternalStorage() {
    }

    public static synchronized ExternalStorage getInstance() {
        ExternalStorage externalStorage;
        synchronized (ExternalStorage.class) {
            if (instance == null) {
                instance = new ExternalStorage();
            }
            externalStorage = instance;
        }
        return externalStorage;
    }

    public void init(Context context2, String str) {
        this.context = context2;
        this.hasPermission = checkPermission(context2);
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            if (file.exists() && !file.isFile()) {
                this.sdkStorageRoot = str;
                if (!str.endsWith("/")) {
                    this.sdkStorageRoot = str + "/";
                }
            }
        }
        if (TextUtils.isEmpty(this.sdkStorageRoot)) {
            loadStorageState(context2);
        }
        createSubFolders();
    }

    private void loadStorageState(Context context2) {
        this.sdkStorageRoot = Environment.getExternalStorageDirectory().getPath() + "/" + context2.getPackageName() + "/";
    }

    private void createSubFolders() {
        boolean z = true;
        File file = new File(this.sdkStorageRoot);
        if (file.exists() && !file.isDirectory()) {
            file.delete();
        }
        for (StorageType storagePath : StorageType.values()) {
            z &= makeDirectory(this.sdkStorageRoot + storagePath.getStoragePath());
        }
        if (z) {
            createNoMediaFile(this.sdkStorageRoot);
        }
    }

    private boolean makeDirectory(String str) {
        File file = new File(str);
        boolean exists = file.exists();
        if (!exists) {
            return file.mkdirs();
        }
        return exists;
    }

    private void createNoMediaFile(String str) {
        File file = new File(str + "/" + NO_MEDIA_FILE_NAME);
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    public String getWritePath(String str, StorageType storageType) {
        return pathForName(str, storageType, false, false);
    }

    private String pathForName(String str, StorageType storageType, boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder(getDirectoryByDirType(storageType));
        if (!z) {
            sb.append(str);
        }
        String sb2 = sb.toString();
        File file = new File(sb2);
        if (!z2) {
            return sb2;
        }
        if (file.exists()) {
            if (z && file.isDirectory()) {
                return sb2;
            }
            if (!z && !file.isDirectory()) {
                return sb2;
            }
        }
        return "";
    }

    public String getDirectoryByDirType(StorageType storageType) {
        return this.sdkStorageRoot + storageType.getStoragePath();
    }

    public String getReadPath(String str, StorageType storageType) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return pathForName(str, storageType, false, true);
    }

    public boolean isSdkStorageReady() {
        if (this.sdkStorageRoot.startsWith(Environment.getExternalStorageDirectory().getAbsolutePath())) {
            return Environment.getExternalStorageState().equals("mounted");
        }
        return true;
    }

    public long getAvailableExternalSize() {
        return getResidualSpace(this.sdkStorageRoot);
    }

    private long getResidualSpace(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return 0;
        }
    }

    private boolean checkPermission(Context context2) {
        if (context2 == null) {
            Log.e(TAG, "checkMPermission context null");
            return false;
        } else if (context2.getPackageManager().checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", context2.getApplicationInfo().packageName) == 0) {
            return true;
        } else {
            Log.e(TAG, "without permission to access storage");
            return false;
        }
    }

    public boolean checkStorageValid() {
        if (this.hasPermission) {
            return true;
        }
        this.hasPermission = checkPermission(this.context);
        if (this.hasPermission) {
            Log.i(TAG, "get permission to access storage");
            createSubFolders();
        }
        return this.hasPermission;
    }
}
