package com.mi.mimsgsdk.log.upload;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.FileFilter;

public class LogLocation {
    private FileFilter mFileFilter;
    private String mRootDir;

    public LogLocation(@NonNull String str, @Nullable FileFilter fileFilter) {
        this.mRootDir = str;
        this.mFileFilter = fileFilter;
    }

    @NonNull
    public String getRootDir() {
        return this.mRootDir;
    }

    @Nullable
    public FileFilter getFileFilter() {
        return this.mFileFilter;
    }
}
