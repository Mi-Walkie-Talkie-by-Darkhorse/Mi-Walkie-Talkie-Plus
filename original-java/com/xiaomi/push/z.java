package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.b;
import java.io.File;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, String> f9375a;

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        f9375a = hashMap;
        hashMap.put("FFD8FF", "jpg");
        f9375a.put("89504E47", "png");
        f9375a.put("47494638", "gif");
        f9375a.put("474946", "gif");
        f9375a.put("424D", "bmp");
    }

    public static long a(File file) {
        long j = 0;
        try {
            File[] listFiles = file.listFiles();
            for (int i = 0; i < listFiles.length; i++) {
                j += listFiles[i].isDirectory() ? a(listFiles[i]) : listFiles[i].length();
            }
        } catch (Exception e) {
            b.a(e);
        }
        return j;
    }
}
