package com.ifengyu.library.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;

/* renamed from: com.ifengyu.library.utils.i */
/* loaded from: classes2.dex */
public class FileProviderHelper {
    /* renamed from: a */
    public static Uri m8672a(Context context, File file) {
        if (Build.VERSION.SDK_INT >= 24) {
            return m8671b(context, file);
        }
        return Uri.fromFile(file);
    }

    /* renamed from: b */
    public static Uri m8671b(Context context, File file) {
        return FileProvider.getUriForFile(context, context.getPackageName() + ".provider", file);
    }

    /* renamed from: c */
    public static void m8670c(Context context, Intent intent, String str, File file, boolean z) {
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setDataAndType(m8672a(context, file), str);
            intent.addFlags(1);
            if (z) {
                intent.addFlags(2);
                return;
            }
            return;
        }
        intent.setDataAndType(Uri.fromFile(file), str);
    }
}
