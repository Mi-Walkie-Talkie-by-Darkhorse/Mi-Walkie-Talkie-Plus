package com.liulishuo.filedownloader.a;

import com.mi.mimsgsdk.upload.Ks3FileUploader;

/* compiled from: DefaultConnectionCountAdapter */
public class a implements com.liulishuo.filedownloader.e.c.a {
    public int a(int i, String str, String str2, long j) {
        if (j < 1048576) {
            return 1;
        }
        if (j < Ks3FileUploader.LARGE_FILE_SIZE) {
            return 2;
        }
        if (j < 52428800) {
            return 3;
        }
        if (j < 104857600) {
            return 4;
        }
        return 5;
    }
}
