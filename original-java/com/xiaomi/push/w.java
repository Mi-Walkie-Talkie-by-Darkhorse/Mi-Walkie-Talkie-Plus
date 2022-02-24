package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f9372a = Collections.synchronizedSet(new HashSet());

    /* renamed from: a  reason: collision with other field name */
    private Context f1019a;

    /* renamed from: a  reason: collision with other field name */
    private RandomAccessFile f1020a;

    /* renamed from: a  reason: collision with other field name */
    private String f1021a;

    /* renamed from: a  reason: collision with other field name */
    private FileLock f1022a;

    private w(Context context) {
        this.f1019a = context;
    }

    public static w a(Context context, File file) {
        b.c("Locking: " + file.getAbsolutePath());
        String str = file.getAbsolutePath() + ".LOCK";
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.getParentFile().mkdirs();
            file2.createNewFile();
        }
        if (f9372a.add(str)) {
            w wVar = new w(context);
            wVar.f1021a = str;
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
                wVar.f1020a = randomAccessFile;
                wVar.f1022a = randomAccessFile.getChannel().lock();
                b.c("Locked: " + str + " :" + wVar.f1022a);
                return wVar;
            } finally {
                if (wVar.f1022a == null) {
                    RandomAccessFile randomAccessFile2 = wVar.f1020a;
                    if (randomAccessFile2 != null) {
                        aa.a(randomAccessFile2);
                    }
                    f9372a.remove(wVar.f1021a);
                }
            }
        } else {
            throw new IOException("abtain lock failure");
        }
    }

    public void a() {
        b.c("unLock: " + this.f1022a);
        FileLock fileLock = this.f1022a;
        if (fileLock != null && fileLock.isValid()) {
            try {
                this.f1022a.release();
            } catch (IOException unused) {
            }
            this.f1022a = null;
        }
        RandomAccessFile randomAccessFile = this.f1020a;
        if (randomAccessFile != null) {
            aa.a(randomAccessFile);
        }
        f9372a.remove(this.f1021a);
    }
}
