package com.ifengyu.library.a;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;

/* compiled from: FileProviderHelper.java */
/* loaded from: classes2.dex */
public class e {
    public static Uri a(Context context, File file) {
        if (Build.VERSION.SDK_INT >= 24) {
            return b(context, file);
        }
        return Uri.fromFile(file);
    }

    public static Uri b(Context context, File file) {
        return FileProvider.getUriForFile(context, context.getPackageName() + ".provider", file);
    }
}
