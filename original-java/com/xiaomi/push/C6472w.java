package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.xiaomi.push.w */
/* loaded from: classes2.dex */
public final class C6472w {

    /* renamed from: a */
    private static final Set<String> f23256a = Collections.synchronizedSet(new HashSet());

    /* renamed from: a */
    private Context f23257a;

    /* renamed from: a */
    private RandomAccessFile f23258a;

    /* renamed from: a */
    private String f23259a;

    /* renamed from: a */
    private FileLock f23260a;

    private C6472w(Context context) {
        this.f23257a = context;
    }

    /* renamed from: a */
    public static C6472w m1224a(Context context, File file) {
        AbstractC5876b.m4139c("Locking: " + file.getAbsolutePath());
        String str = file.getAbsolutePath() + ".LOCK";
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.getParentFile().mkdirs();
            file2.createNewFile();
        }
        Set<String> set = f23256a;
        if (set.add(str)) {
            C6472w c6472w = new C6472w(context);
            c6472w.f23259a = str;
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
                c6472w.f23258a = randomAccessFile;
                c6472w.f23260a = randomAccessFile.getChannel().lock();
                AbstractC5876b.m4139c("Locked: " + str + " :" + c6472w.f23260a);
                if (c6472w.f23260a == null) {
                    RandomAccessFile randomAccessFile2 = c6472w.f23258a;
                    if (randomAccessFile2 != null) {
                        C5968aa.m3810a(randomAccessFile2);
                    }
                    set.remove(c6472w.f23259a);
                }
                return c6472w;
            } catch (Throwable th) {
                if (c6472w.f23260a == null) {
                    RandomAccessFile randomAccessFile3 = c6472w.f23258a;
                    if (randomAccessFile3 != null) {
                        C5968aa.m3810a(randomAccessFile3);
                    }
                    f23256a.remove(c6472w.f23259a);
                }
                throw th;
            }
        }
        throw new IOException("abtain lock failure");
    }

    /* renamed from: a */
    public void m1225a() {
        AbstractC5876b.m4139c("unLock: " + this.f23260a);
        FileLock fileLock = this.f23260a;
        if (fileLock != null && fileLock.isValid()) {
            try {
                this.f23260a.release();
            } catch (IOException unused) {
            }
            this.f23260a = null;
        }
        RandomAccessFile randomAccessFile = this.f23258a;
        if (randomAccessFile != null) {
            C5968aa.m3810a(randomAccessFile);
        }
        f23256a.remove(this.f23259a);
    }
}
