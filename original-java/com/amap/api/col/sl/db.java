package com.amap.api.col.sl;

import android.content.Context;
import java.io.File;
import java.util.List;

/* compiled from: DexFileManager */
public final class db {

    /* compiled from: DexFileManager */
    public static class a {
        static df a(cq cqVar, String str) {
            List b = cqVar.b(df.b(str), df.class);
            if (b == null || b.size() <= 0) {
                return null;
            }
            return (df) b.get(0);
        }

        public static List<df> a(cq cqVar, String str, String str2) {
            return cqVar.b(df.b(str, str2), df.class);
        }
    }

    static String a(String str) {
        return str + ".o";
    }

    static String a(Context context, String str, String str2) {
        return bw.b(str + str2 + bu.t(context)) + ".jar";
    }

    static String b(Context context, String str, String str2) {
        return a(context, a(context, str, str2));
    }

    public static String a(Context context, String str) {
        return a(context) + File.separator + str;
    }

    static String a(Context context) {
        return context.getFilesDir().getAbsolutePath() + File.separator + "pngex";
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(android.content.Context r8, com.amap.api.col.sl.bz r9) {
        /*
            com.amap.api.col.sl.dg r0 = com.amap.api.col.sl.dg.b()     // Catch:{ Throwable -> 0x002c }
            com.amap.api.col.sl.dg$a r6 = r0.a(r9)     // Catch:{ Throwable -> 0x002c }
            if (r6 == 0) goto L_0x0013
            boolean r0 = r6.a     // Catch:{ Throwable -> 0x002c }
            if (r0 == 0) goto L_0x0013
            monitor-enter(r6)     // Catch:{ Throwable -> 0x002c }
            r6.wait()     // Catch:{ all -> 0x0029 }
            monitor-exit(r6)     // Catch:{ all -> 0x0029 }
        L_0x0013:
            r0 = 1
            r6.b = r0     // Catch:{ Throwable -> 0x002c }
            java.lang.String r0 = r9.a()     // Catch:{ Throwable -> 0x002c }
            java.lang.String r1 = r9.b()     // Catch:{ Throwable -> 0x002c }
            java.lang.String r0 = b(r8, r0, r1)     // Catch:{ Throwable -> 0x002c }
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x002c }
            if (r1 == 0) goto L_0x0035
        L_0x0028:
            return
        L_0x0029:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ Throwable -> 0x002c }
            throw r0     // Catch:{ Throwable -> 0x002c }
        L_0x002c:
            r0 = move-exception
            java.lang.String r1 = "BaseLoader"
            java.lang.String r2 = "getInstanceByThread()"
            com.amap.api.col.sl.cj.a(r0, r1, r2)
            goto L_0x0028
        L_0x0035:
            java.io.File r1 = new java.io.File     // Catch:{ Throwable -> 0x002c }
            r1.<init>(r0)     // Catch:{ Throwable -> 0x002c }
            java.io.File r2 = r1.getParentFile()     // Catch:{ Throwable -> 0x002c }
            boolean r3 = r1.exists()     // Catch:{ Throwable -> 0x002c }
            if (r3 != 0) goto L_0x0058
            if (r2 == 0) goto L_0x0028
            boolean r0 = r2.exists()     // Catch:{ Throwable -> 0x002c }
            if (r0 == 0) goto L_0x0028
            java.lang.String r0 = r9.a()     // Catch:{ Throwable -> 0x002c }
            java.lang.String r1 = r9.b()     // Catch:{ Throwable -> 0x002c }
            c(r8, r0, r1)     // Catch:{ Throwable -> 0x002c }
            goto L_0x0028
        L_0x0058:
            java.lang.String r2 = r1.getName()     // Catch:{ Throwable -> 0x002c }
            java.lang.String r2 = a(r2)     // Catch:{ Throwable -> 0x002c }
            java.lang.String r2 = a(r8, r2)     // Catch:{ Throwable -> 0x002c }
            r3 = 0
            dalvik.system.DexFile r0 = dalvik.system.DexFile.loadDex(r0, r2, r3)     // Catch:{ Throwable -> 0x002c }
            if (r0 == 0) goto L_0x00bd
            r0.close()     // Catch:{ Throwable -> 0x002c }
            r5 = 0
            com.amap.api.col.sl.cq r7 = new com.amap.api.col.sl.cq     // Catch:{ Throwable -> 0x002c }
            com.amap.api.col.sl.dd r0 = com.amap.api.col.sl.dd.b()     // Catch:{ Throwable -> 0x002c }
            r7.<init>(r8, r0)     // Catch:{ Throwable -> 0x002c }
            java.lang.String r0 = r1.getName()     // Catch:{ Throwable -> 0x002c }
            com.amap.api.col.sl.df r0 = com.amap.api.col.sl.db.a.a(r7, r0)     // Catch:{ Throwable -> 0x002c }
            if (r0 == 0) goto L_0x0086
            java.lang.String r5 = r0.e()     // Catch:{ Throwable -> 0x002c }
        L_0x0086:
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x002c }
            r0.<init>(r2)     // Catch:{ Throwable -> 0x002c }
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch:{ Throwable -> 0x002c }
            if (r1 != 0) goto L_0x00bd
            boolean r1 = r0.exists()     // Catch:{ Throwable -> 0x002c }
            if (r1 == 0) goto L_0x00bd
            java.lang.String r2 = com.amap.api.col.sl.bw.a(r2)     // Catch:{ Throwable -> 0x002c }
            java.lang.String r1 = r0.getName()     // Catch:{ Throwable -> 0x002c }
            java.lang.String r3 = r9.a()     // Catch:{ Throwable -> 0x002c }
            java.lang.String r4 = r9.b()     // Catch:{ Throwable -> 0x002c }
            com.amap.api.col.sl.df$a r0 = new com.amap.api.col.sl.df$a     // Catch:{ Throwable -> 0x002c }
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x002c }
            java.lang.String r2 = "useod"
            com.amap.api.col.sl.df$a r0 = r0.a(r2)     // Catch:{ Throwable -> 0x002c }
            com.amap.api.col.sl.df r0 = r0.a()     // Catch:{ Throwable -> 0x002c }
            java.lang.String r1 = com.amap.api.col.sl.df.b(r1)     // Catch:{ Throwable -> 0x002c }
            r7.a(r0, r1)     // Catch:{ Throwable -> 0x002c }
        L_0x00bd:
            r0 = 0
            r6.b = r0     // Catch:{ Throwable -> 0x002c }
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.db.a(android.content.Context, com.amap.api.col.sl.bz):void");
    }

    static void b(Context context, String str) {
        cq cqVar = new cq(context, dd.b());
        List a2 = a.a(cqVar, str, "copy");
        dh.a(a2);
        if (a2 != null && a2.size() > 1) {
            int size = a2.size();
            for (int i = 1; i < size; i++) {
                c(context, cqVar, ((df) a2.get(i)).a());
            }
        }
    }

    static void a(Context context, cq cqVar, String str) {
        c(context, cqVar, a(str));
        c(context, cqVar, str);
    }

    static void c(final Context context, final String str, final String str2) {
        try {
            dg.b().a().submit(new Runnable() {
                public final void run() {
                    try {
                        cq cqVar = new cq(context, dd.b());
                        List<df> b2 = cqVar.b(df.a(str), df.class);
                        if (b2 != null && b2.size() > 0) {
                            for (df dfVar : b2) {
                                if (!str2.equalsIgnoreCase(dfVar.d())) {
                                    db.c(context, cqVar, dfVar.a());
                                }
                            }
                        }
                    } catch (Throwable th) {
                        cj.a(th, "FileManager", "clearUnSuitableV");
                    }
                }
            });
        } catch (Throwable th) {
        }
    }

    static void a(cq cqVar, Context context, String str) {
        List<df> a2 = a.a(cqVar, str, "used");
        if (a2 != null && a2.size() > 0) {
            for (df dfVar : a2) {
                if (dfVar != null && dfVar.c().equals(str)) {
                    a(context, cqVar, dfVar.a());
                    List b = cqVar.b(df.a(str, dfVar.e()), df.class);
                    if (b != null && b.size() > 0) {
                        df dfVar2 = (df) b.get(0);
                        dfVar2.c("errorstatus");
                        cqVar.a((Object) dfVar2, df.b(dfVar2.a()));
                        File file = new File(a(context, dfVar2.a()));
                        if (file.exists()) {
                            file.delete();
                        }
                    }
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x0077  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(android.content.Context r12, com.amap.api.col.sl.cq r13, com.amap.api.col.sl.bz r14, java.lang.String r15, java.lang.String r16) throws java.lang.Throwable {
        /*
            r4 = 0
            r2 = 0
            r1 = 0
            java.lang.String r3 = r14.a()     // Catch:{ Throwable -> 0x00e7, all -> 0x00db }
            com.amap.api.col.sl.dg r0 = com.amap.api.col.sl.dg.b()     // Catch:{ Throwable -> 0x00e7, all -> 0x00db }
            com.amap.api.col.sl.dg$a r6 = r0.a(r14)     // Catch:{ Throwable -> 0x00e7, all -> 0x00db }
            if (r6 == 0) goto L_0x001a
            boolean r0 = r6.a     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            if (r0 == 0) goto L_0x001a
            monitor-enter(r6)     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            r6.wait()     // Catch:{ all -> 0x0065 }
            monitor-exit(r6)     // Catch:{ all -> 0x0065 }
        L_0x001a:
            r0 = 1
            r6.b = r0     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            java.lang.String r0 = r14.b()     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            java.lang.String r1 = a(r12, r3, r0)     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            a(r12, r13, r1)     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            r0.<init>(r15)     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            r8.<init>(r0)     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            r0 = 32
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x00ea, all -> 0x00e2 }
            r8.read(r0)     // Catch:{ Throwable -> 0x00ea, all -> 0x00e2 }
            java.io.File r4 = new java.io.File     // Catch:{ Throwable -> 0x00ea, all -> 0x00e2 }
            java.lang.String r0 = r14.b()     // Catch:{ Throwable -> 0x00ea, all -> 0x00e2 }
            java.lang.String r0 = b(r12, r3, r0)     // Catch:{ Throwable -> 0x00ea, all -> 0x00e2 }
            r4.<init>(r0)     // Catch:{ Throwable -> 0x00ea, all -> 0x00e2 }
            java.io.RandomAccessFile r7 = new java.io.RandomAccessFile     // Catch:{ Throwable -> 0x00ea, all -> 0x00e2 }
            java.lang.String r0 = "rw"
            r7.<init>(r4, r0)     // Catch:{ Throwable -> 0x00ea, all -> 0x00e2 }
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r0]     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            r0 = 0
        L_0x0052:
            int r5 = r8.read(r2)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            if (r5 <= 0) goto L_0x008f
            r9 = 1024(0x400, float:1.435E-42)
            if (r5 != r9) goto L_0x007b
            long r10 = (long) r0     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            r7.seek(r10)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            r7.write(r2)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
        L_0x0063:
            int r0 = r0 + r5
            goto L_0x0052
        L_0x0065:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
            throw r0     // Catch:{ Throwable -> 0x0068, all -> 0x00df }
        L_0x0068:
            r0 = move-exception
            r1 = r6
            r3 = r4
        L_0x006b:
            throw r0     // Catch:{ all -> 0x006c }
        L_0x006c:
            r0 = move-exception
            r6 = r1
            r8 = r3
        L_0x006f:
            com.amap.api.col.sl.dh.a(r8)     // Catch:{ Throwable -> 0x00cd }
        L_0x0072:
            com.amap.api.col.sl.dh.a(r2)     // Catch:{ Throwable -> 0x00d2 }
        L_0x0075:
            if (r6 == 0) goto L_0x007a
            r1 = 0
            r6.b = r1     // Catch:{ Throwable -> 0x00d9 }
        L_0x007a:
            throw r0
        L_0x007b:
            byte[] r9 = new byte[r5]     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            r10 = 0
            r11 = 0
            java.lang.System.arraycopy(r2, r10, r9, r11, r5)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            long r10 = (long) r0     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            r7.seek(r10)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            r7.write(r9)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            goto L_0x0063
        L_0x008a:
            r0 = move-exception
            r1 = r6
            r2 = r7
            r3 = r8
            goto L_0x006b
        L_0x008f:
            java.lang.String r0 = r4.getAbsolutePath()     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            java.lang.String r2 = com.amap.api.col.sl.bw.a(r0)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            com.amap.api.col.sl.df$a r0 = new com.amap.api.col.sl.df$a     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            java.lang.String r4 = r14.b()     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            r5 = r16
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            java.lang.String r1 = "used"
            com.amap.api.col.sl.df$a r0 = r0.a(r1)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            com.amap.api.col.sl.df r0 = r0.a()     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            java.lang.String r1 = r0.a()     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            java.lang.String r1 = com.amap.api.col.sl.df.b(r1)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            r13.a(r0, r1)     // Catch:{ Throwable -> 0x008a, all -> 0x00e4 }
            com.amap.api.col.sl.dh.a(r8)     // Catch:{ Throwable -> 0x00c3 }
        L_0x00ba:
            com.amap.api.col.sl.dh.a(r7)     // Catch:{ Throwable -> 0x00c8 }
        L_0x00bd:
            if (r6 == 0) goto L_0x00c2
            r0 = 0
            r6.b = r0     // Catch:{ Throwable -> 0x00d7 }
        L_0x00c2:
            return
        L_0x00c3:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x00ba
        L_0x00c8:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x00bd
        L_0x00cd:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0072
        L_0x00d2:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0075
        L_0x00d7:
            r0 = move-exception
            goto L_0x00c2
        L_0x00d9:
            r1 = move-exception
            goto L_0x007a
        L_0x00db:
            r0 = move-exception
            r6 = r1
            r8 = r4
            goto L_0x006f
        L_0x00df:
            r0 = move-exception
            r8 = r4
            goto L_0x006f
        L_0x00e2:
            r0 = move-exception
            goto L_0x006f
        L_0x00e4:
            r0 = move-exception
            r2 = r7
            goto L_0x006f
        L_0x00e7:
            r0 = move-exception
            r3 = r4
            goto L_0x006b
        L_0x00ea:
            r0 = move-exception
            r1 = r6
            r3 = r8
            goto L_0x006b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.db.a(android.content.Context, com.amap.api.col.sl.cq, com.amap.api.col.sl.bz, java.lang.String, java.lang.String):void");
    }

    static String a(Context context, cq cqVar, bz bzVar) {
        List b = cqVar.b(df.b(bzVar.a(), "copy"), df.class);
        if (b == null || b.size() == 0) {
            return null;
        }
        dh.a(b);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= b.size()) {
                return null;
            }
            df dfVar = (df) b.get(i2);
            String a2 = dfVar.a();
            if (dh.a(cqVar, a2, a(context, a2), bzVar)) {
                try {
                    a(context, cqVar, bzVar, a(context, dfVar.a()), dfVar.e());
                    return dfVar.e();
                } catch (Throwable th) {
                    cj.a(th, "FileManager", "loadAvailableD");
                }
            } else {
                c(context, cqVar, dfVar.a());
                i = i2 + 1;
            }
        }
    }

    /* access modifiers changed from: private */
    public static void c(Context context, cq cqVar, String str) {
        File file = new File(a(context, str));
        if (file.exists()) {
            file.delete();
        }
        cqVar.a(df.b(str), df.class);
    }
}
