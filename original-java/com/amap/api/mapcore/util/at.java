package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.IOException;

/* compiled from: OfflineMapRemoveTask */
public class at {
    private Context a;

    public at(Context context) {
        this.a = context;
    }

    public void a(am amVar) {
        b(amVar);
    }

    private boolean b(am amVar) {
        if (amVar == null) {
            return false;
        }
        String pinyin = amVar.getPinyin();
        boolean a2 = a(pinyin, this.a, "vmap/");
        if (pinyin.equals("quanguogaiyaotu")) {
            pinyin = "quanguo";
        }
        boolean z = a(pinyin, this.a, "map/") || a2;
        if (z) {
            amVar.i();
            return z;
        }
        amVar.h();
        return false;
    }

    private boolean a(String str, Context context, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String a2 = ee.a(context);
        try {
            File file = new File(a2 + str2 + str + ".dat");
            if (!file.exists() || bk.b(file)) {
                try {
                    bk.b(a2 + str2);
                    bk.b(str, context);
                    return true;
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    return false;
                } catch (Exception e2) {
                    ThrowableExtension.printStackTrace(e2);
                    return false;
                }
            } else {
                bk.a("deleteDownload delete some thing wrong!");
                return false;
            }
        } catch (IOException e3) {
            ThrowableExtension.printStackTrace(e3);
            return false;
        } catch (Exception e4) {
            ThrowableExtension.printStackTrace(e4);
            return false;
        }
    }
}
