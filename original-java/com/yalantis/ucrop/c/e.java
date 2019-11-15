package com.yalantis.ucrop.c;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore.Audio;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import com.mi.mimsgsdk.database.AbstractDaoImpl;

/* compiled from: FileUtils */
public class e {
    public static boolean a(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean b(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean c(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean d(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x005b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            r2 = 1
            r1 = 0
            r6 = 0
            java.lang.String r0 = "_data"
            java.lang.String[] r2 = new java.lang.String[r2]
            java.lang.String r0 = "_data"
            r2[r1] = r0
            android.content.ContentResolver r0 = r8.getContentResolver()     // Catch:{ IllegalArgumentException -> 0x0036, all -> 0x0057 }
            r5 = 0
            r1 = r9
            r3 = r10
            r4 = r11
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch:{ IllegalArgumentException -> 0x0036, all -> 0x0057 }
            if (r1 == 0) goto L_0x002f
            boolean r0 = r1.moveToFirst()     // Catch:{ IllegalArgumentException -> 0x0061 }
            if (r0 == 0) goto L_0x002f
            java.lang.String r0 = "_data"
            int r0 = r1.getColumnIndexOrThrow(r0)     // Catch:{ IllegalArgumentException -> 0x0061 }
            java.lang.String r0 = r1.getString(r0)     // Catch:{ IllegalArgumentException -> 0x0061 }
            if (r1 == 0) goto L_0x002e
            r1.close()
        L_0x002e:
            return r0
        L_0x002f:
            if (r1 == 0) goto L_0x0034
            r1.close()
        L_0x0034:
            r0 = r6
            goto L_0x002e
        L_0x0036:
            r0 = move-exception
            r1 = r6
        L_0x0038:
            java.lang.String r2 = "FileUtils"
            java.util.Locale r3 = java.util.Locale.getDefault()     // Catch:{ all -> 0x005f }
            java.lang.String r4 = "getDataColumn: _data - [%s]"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ all -> 0x005f }
            r7 = 0
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x005f }
            r5[r7] = r0     // Catch:{ all -> 0x005f }
            java.lang.String r0 = java.lang.String.format(r3, r4, r5)     // Catch:{ all -> 0x005f }
            android.util.Log.i(r2, r0)     // Catch:{ all -> 0x005f }
            if (r1 == 0) goto L_0x0034
            r1.close()
            goto L_0x0034
        L_0x0057:
            r0 = move-exception
            r1 = r6
        L_0x0059:
            if (r1 == 0) goto L_0x005e
            r1.close()
        L_0x005e:
            throw r0
        L_0x005f:
            r0 = move-exception
            goto L_0x0059
        L_0x0061:
            r0 = move-exception
            goto L_0x0038
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yalantis.ucrop.c.e.a(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    @SuppressLint({"NewApi"})
    public static String a(Context context, Uri uri) {
        Uri uri2 = null;
        if (!(VERSION.SDK_INT >= 19) || !DocumentsContract.isDocumentUri(context, uri)) {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                if (d(uri)) {
                    return uri.getLastPathSegment();
                }
                return a(context, uri, null, null);
            } else if (HttpPostBodyUtil.FILE.equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            } else {
                return null;
            }
        } else if (a(uri)) {
            String[] split = DocumentsContract.getDocumentId(uri).split(":");
            if ("primary".equalsIgnoreCase(split[0])) {
                return Environment.getExternalStorageDirectory() + "/" + split[1];
            }
            return null;
        } else if (b(uri)) {
            return a(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
        } else if (!c(uri)) {
            return null;
        } else {
            String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
            String str = split2[0];
            if ("image".equals(str)) {
                uri2 = Media.EXTERNAL_CONTENT_URI;
            } else if ("video".equals(str)) {
                uri2 = Video.Media.EXTERNAL_CONTENT_URI;
            } else if ("audio".equals(str)) {
                uri2 = Audio.Media.EXTERNAL_CONTENT_URI;
            }
            String str2 = AbstractDaoImpl.CRITERIA_ID;
            return a(context, uri2, AbstractDaoImpl.CRITERIA_ID, new String[]{split2[1]});
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0044  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(@android.support.annotation.NonNull java.lang.String r7, @android.support.annotation.NonNull java.lang.String r8) throws java.io.IOException {
        /*
            r2 = 0
            boolean r0 = r7.equalsIgnoreCase(r8)
            if (r0 == 0) goto L_0x0008
        L_0x0007:
            return
        L_0x0008:
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch:{ all -> 0x003b }
            java.io.File r1 = new java.io.File     // Catch:{ all -> 0x003b }
            r1.<init>(r7)     // Catch:{ all -> 0x003b }
            r0.<init>(r1)     // Catch:{ all -> 0x003b }
            java.nio.channels.FileChannel r1 = r0.getChannel()     // Catch:{ all -> 0x003b }
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch:{ all -> 0x0048 }
            java.io.File r3 = new java.io.File     // Catch:{ all -> 0x0048 }
            r3.<init>(r8)     // Catch:{ all -> 0x0048 }
            r0.<init>(r3)     // Catch:{ all -> 0x0048 }
            java.nio.channels.FileChannel r6 = r0.getChannel()     // Catch:{ all -> 0x0048 }
            r2 = 0
            long r4 = r1.size()     // Catch:{ all -> 0x004a }
            r1.transferTo(r2, r4, r6)     // Catch:{ all -> 0x004a }
            r1.close()     // Catch:{ all -> 0x004a }
            if (r1 == 0) goto L_0x0035
            r1.close()
        L_0x0035:
            if (r6 == 0) goto L_0x0007
            r6.close()
            goto L_0x0007
        L_0x003b:
            r0 = move-exception
            r1 = r2
        L_0x003d:
            if (r1 == 0) goto L_0x0042
            r1.close()
        L_0x0042:
            if (r2 == 0) goto L_0x0047
            r2.close()
        L_0x0047:
            throw r0
        L_0x0048:
            r0 = move-exception
            goto L_0x003d
        L_0x004a:
            r0 = move-exception
            r2 = r6
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yalantis.ucrop.c.e.a(java.lang.String, java.lang.String):void");
    }
}
