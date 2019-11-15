package com.liulishuo.filedownloader.services;

import android.content.Intent;
import com.liulishuo.filedownloader.e.c;
import com.liulishuo.filedownloader.model.FileDownloadModel;

/* compiled from: FileDownloadBroadcastHandler */
public class f {
    public static void a(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            throw new IllegalArgumentException();
        } else if (fileDownloadModel.f() != -3) {
            throw new IllegalStateException();
        } else {
            Intent intent = new Intent("filedownloader.intent.action.completed");
            intent.putExtra("model", fileDownloadModel);
            c.a().sendBroadcast(intent);
        }
    }
}
