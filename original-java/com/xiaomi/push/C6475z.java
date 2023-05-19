package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.io.File;
import java.util.HashMap;

/* renamed from: com.xiaomi.push.z */
/* loaded from: classes2.dex */
public class C6475z {

    /* renamed from: a */
    private static final HashMap<String, String> f23265a;

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        f23265a = hashMap;
        hashMap.put("FFD8FF", "jpg");
        hashMap.put("89504E47", "png");
        hashMap.put("47494638", "gif");
        hashMap.put("474946", "gif");
        hashMap.put("424D", "bmp");
    }

    /* renamed from: a */
    public static long m1221a(File file) {
        long j = 0;
        try {
            File[] listFiles = file.listFiles();
            for (int i = 0; i < listFiles.length; i++) {
                j += listFiles[i].isDirectory() ? m1221a(listFiles[i]) : listFiles[i].length();
            }
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
        }
        return j;
    }
}
