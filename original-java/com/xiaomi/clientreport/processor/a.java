package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Base64;
import com.amap.api.fence.GeoFence;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.aa;
import com.xiaomi.push.ae;
import com.xiaomi.push.bo;
import com.xiaomi.push.bs;
import com.xiaomi.push.h;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes2.dex */
public class a implements IEventProcessor {

    /* renamed from: a  reason: collision with root package name */
    protected Context f8661a;

    /* renamed from: a  reason: collision with other field name */
    private HashMap<String, ArrayList<com.xiaomi.clientreport.data.a>> f20a;

    public a(Context context) {
        a(context);
    }

    public static String a(com.xiaomi.clientreport.data.a aVar) {
        return String.valueOf(aVar.production);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
        com.xiaomi.channel.commonutils.logger.b.d(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
        r9 = "eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K";
        r4 = r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<java.lang.String> a(java.lang.String r9) {
        /*
            r8 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 4
            byte[] r2 = new byte[r1]
            byte[] r3 = new byte[r1]
            r4 = 0
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: all -> 0x0070, Exception -> 0x0072
            java.io.File r6 = new java.io.File     // Catch: all -> 0x0070, Exception -> 0x0072
            r6.<init>(r9)     // Catch: all -> 0x0070, Exception -> 0x0072
            r5.<init>(r6)     // Catch: all -> 0x0070, Exception -> 0x0072
        L_0x0015:
            int r9 = r5.read(r2)     // Catch: all -> 0x006a, Exception -> 0x006d
            r4 = -1
            if (r9 != r4) goto L_0x001d
            goto L_0x0066
        L_0x001d:
            java.lang.String r6 = "eventData read from cache file failed because magicNumber error"
            if (r9 == r1) goto L_0x0025
        L_0x0021:
            com.xiaomi.channel.commonutils.logger.b.d(r6)     // Catch: all -> 0x006a, Exception -> 0x006d
            goto L_0x0066
        L_0x0025:
            int r9 = com.xiaomi.push.ae.a(r2)     // Catch: all -> 0x006a, Exception -> 0x006d
            r7 = -573785174(0xffffffffddccbbaa, float:-1.84407149E18)
            if (r9 == r7) goto L_0x002f
            goto L_0x0021
        L_0x002f:
            int r9 = r5.read(r3)     // Catch: all -> 0x006a, Exception -> 0x006d
            if (r9 != r4) goto L_0x0036
            goto L_0x0066
        L_0x0036:
            if (r9 == r1) goto L_0x003e
            java.lang.String r9 = "eventData read from cache file failed cause lengthBuffer error"
        L_0x003a:
            com.xiaomi.channel.commonutils.logger.b.d(r9)     // Catch: all -> 0x006a, Exception -> 0x006d
            goto L_0x0066
        L_0x003e:
            int r9 = com.xiaomi.push.ae.a(r3)     // Catch: all -> 0x006a, Exception -> 0x006d
            r4 = 1
            if (r9 < r4) goto L_0x0063
            r4 = 4096(0x1000, float:5.74E-42)
            if (r9 <= r4) goto L_0x004a
            goto L_0x0063
        L_0x004a:
            byte[] r4 = new byte[r9]     // Catch: all -> 0x006a, Exception -> 0x006d
            int r6 = r5.read(r4)     // Catch: all -> 0x006a, Exception -> 0x006d
            if (r6 == r9) goto L_0x0055
            java.lang.String r9 = "eventData read from cache file failed cause buffer size not equal length"
            goto L_0x003a
        L_0x0055:
            java.lang.String r9 = r8.bytesToString(r4)     // Catch: all -> 0x006a, Exception -> 0x006d
            boolean r4 = android.text.TextUtils.isEmpty(r9)     // Catch: all -> 0x006a, Exception -> 0x006d
            if (r4 != 0) goto L_0x0015
            r0.add(r9)     // Catch: all -> 0x006a, Exception -> 0x006d
            goto L_0x0015
        L_0x0063:
            java.lang.String r9 = "eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K"
            goto L_0x003a
        L_0x0066:
            com.xiaomi.push.aa.a(r5)
            goto L_0x0079
        L_0x006a:
            r9 = move-exception
            r4 = r5
            goto L_0x007a
        L_0x006d:
            r9 = move-exception
            r4 = r5
            goto L_0x0073
        L_0x0070:
            r9 = move-exception
            goto L_0x007a
        L_0x0072:
            r9 = move-exception
        L_0x0073:
            com.xiaomi.channel.commonutils.logger.b.a(r9)     // Catch: all -> 0x0070
            com.xiaomi.push.aa.a(r4)
        L_0x0079:
            return r0
        L_0x007a:
            com.xiaomi.push.aa.a(r4)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.clientreport.processor.a.a(java.lang.String):java.util.List");
    }

    private void a(RandomAccessFile randomAccessFile, FileLock fileLock) {
        if (fileLock != null && fileLock.isValid()) {
            try {
                fileLock.release();
            } catch (IOException e) {
                b.a(e);
            }
        }
        aa.a(randomAccessFile);
    }

    private void a(String str, String str2) {
        com.xiaomi.clientreport.manager.a a2 = com.xiaomi.clientreport.manager.a.a(this.f8661a);
        EventClientReport a3 = a2.a(GLMapStaticValue.AM_PARAMETERNAME_NETWORK, "24:" + str + Constants.ACCEPT_TIME_SEPARATOR_SP + str2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(a3.toJsonString());
        a(arrayList);
    }

    private com.xiaomi.clientreport.data.a[] a(com.xiaomi.clientreport.data.a[] aVarArr) {
        Throwable th;
        RandomAccessFile randomAccessFile;
        FileLock fileLock;
        Exception e;
        String b2 = b(aVarArr[0]);
        BufferedOutputStream bufferedOutputStream = null;
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        try {
            File file = new File(b2 + ".lock");
            aa.m65a(file);
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileLock = randomAccessFile.getChannel().lock();
            } catch (Exception e2) {
                e = e2;
                fileLock = null;
                bufferedOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileLock = null;
            }
        } catch (Exception e3) {
            e = e3;
            fileLock = null;
            randomAccessFile = null;
            bufferedOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileLock = null;
            randomAccessFile = null;
        }
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(b2), true));
            try {
                try {
                    int i = 0;
                    for (com.xiaomi.clientreport.data.a aVar : aVarArr) {
                        if (aVar != null) {
                            byte[] stringToBytes = stringToBytes(aVar.toJsonString());
                            if (stringToBytes != null && stringToBytes.length >= 1 && stringToBytes.length <= 4096) {
                                if (!bs.m109a(this.f8661a, b2)) {
                                    int length = aVarArr.length - i;
                                    com.xiaomi.clientreport.data.a[] aVarArr2 = new com.xiaomi.clientreport.data.a[length];
                                    System.arraycopy(aVarArr, i, aVarArr2, 0, length);
                                    aa.a(bufferedOutputStream);
                                    a(randomAccessFile, fileLock);
                                    return aVarArr2;
                                }
                                bufferedOutputStream.write(ae.a(-573785174));
                                bufferedOutputStream.write(ae.a(stringToBytes.length));
                                bufferedOutputStream.write(stringToBytes);
                                bufferedOutputStream.flush();
                                i++;
                            }
                            b.d("event data throw a invalid item ");
                        }
                    }
                } catch (Exception e4) {
                    e = e4;
                    b.a("event data write to cache file failed cause exception", e);
                    aa.a(bufferedOutputStream);
                    a(randomAccessFile, fileLock);
                    return null;
                }
            } catch (Throwable th4) {
                th = th4;
                aa.a(bufferedOutputStream);
                a(randomAccessFile, fileLock);
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            bufferedOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            aa.a(bufferedOutputStream);
            a(randomAccessFile, fileLock);
            throw th;
        }
        aa.a(bufferedOutputStream);
        a(randomAccessFile, fileLock);
        return null;
    }

    private String b(com.xiaomi.clientreport.data.a aVar) {
        File externalFilesDir = this.f8661a.getExternalFilesDir(GeoFence.BUNDLE_KEY_FENCESTATUS);
        String a2 = a(aVar);
        if (externalFilesDir == null) {
            return null;
        }
        String str = externalFilesDir.getAbsolutePath() + File.separator + a2;
        for (int i = 0; i < 100; i++) {
            String str2 = str + i;
            if (bs.m109a(this.f8661a, str2)) {
                return str2;
            }
        }
        return null;
    }

    @Override // com.xiaomi.clientreport.processor.c
    public void a() {
        Throwable th;
        Exception e;
        bs.a(this.f8661a, GeoFence.BUNDLE_KEY_FENCESTATUS, "eventUploading");
        File[] a2 = bs.m110a(this.f8661a, "eventUploading");
        if (a2 != null && a2.length > 0) {
            FileLock fileLock = null;
            RandomAccessFile randomAccessFile = null;
            File file = null;
            for (File file2 : a2) {
                if (file2 == null) {
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e2) {
                            b.a(e2);
                        }
                    }
                    aa.a(randomAccessFile);
                    if (file == null) {
                    }
                    file.delete();
                } else {
                    try {
                        try {
                        } catch (Exception e3) {
                            e = e3;
                        }
                        if (file2.length() > 5242880) {
                            b.d("eventData read from cache file failed because " + file2.getName() + " is too big, length " + file2.length());
                            a(file2.getName(), Formatter.formatFileSize(this.f8661a, file2.length()));
                            file2.delete();
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e4) {
                                    b.a(e4);
                                }
                            }
                            aa.a(randomAccessFile);
                            if (file == null) {
                            }
                            file.delete();
                        } else {
                            String absolutePath = file2.getAbsolutePath();
                            File file3 = new File(absolutePath + ".lock");
                            try {
                                aa.m65a(file3);
                                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file3, "rw");
                                try {
                                    fileLock = randomAccessFile2.getChannel().lock();
                                    a(a(absolutePath));
                                    file2.delete();
                                    if (fileLock != null && fileLock.isValid()) {
                                        try {
                                            fileLock.release();
                                        } catch (IOException e5) {
                                            b.a(e5);
                                        }
                                    }
                                    aa.a(randomAccessFile2);
                                    file3.delete();
                                    randomAccessFile = randomAccessFile2;
                                    file = file3;
                                } catch (Exception e6) {
                                    e = e6;
                                    randomAccessFile = randomAccessFile2;
                                    file = file3;
                                    b.a(e);
                                    if (fileLock != null && fileLock.isValid()) {
                                        try {
                                            fileLock.release();
                                        } catch (IOException e7) {
                                            b.a(e7);
                                        }
                                    }
                                    aa.a(randomAccessFile);
                                    if (file == null) {
                                    }
                                    file.delete();
                                } catch (Throwable th2) {
                                    th = th2;
                                    randomAccessFile = randomAccessFile2;
                                    file = file3;
                                    if (fileLock != null && fileLock.isValid()) {
                                        try {
                                            fileLock.release();
                                        } catch (IOException e8) {
                                            b.a(e8);
                                        }
                                    }
                                    aa.a(randomAccessFile);
                                    if (file != null) {
                                        file.delete();
                                    }
                                    throw th;
                                }
                            } catch (Exception e9) {
                                e = e9;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            }
        }
    }

    public void a(Context context) {
        this.f8661a = context;
    }

    @Override // com.xiaomi.clientreport.processor.d
    /* renamed from: a  reason: collision with other method in class */
    public void mo6a(com.xiaomi.clientreport.data.a aVar) {
        if ((aVar instanceof EventClientReport) && this.f20a != null) {
            EventClientReport eventClientReport = (EventClientReport) aVar;
            String a2 = a((com.xiaomi.clientreport.data.a) eventClientReport);
            ArrayList<com.xiaomi.clientreport.data.a> arrayList = this.f20a.get(a2);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            arrayList.add(eventClientReport);
            this.f20a.put(a2, arrayList);
        }
    }

    public void a(List<String> list) {
        bs.a(this.f8661a, list);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m7a(com.xiaomi.clientreport.data.a[] aVarArr) {
        if (aVarArr == null || aVarArr.length == 0 || aVarArr[0] == null) {
            b.m1a("event data write to cache file failed because data null");
            return;
        }
        do {
            aVarArr = a(aVarArr);
            if (aVarArr == null || aVarArr.length <= 0) {
                return;
            }
        } while (aVarArr[0] != null);
    }

    @Override // com.xiaomi.clientreport.processor.d
    public void b() {
        HashMap<String, ArrayList<com.xiaomi.clientreport.data.a>> hashMap = this.f20a;
        if (hashMap != null) {
            if (hashMap.size() > 0) {
                for (String str : this.f20a.keySet()) {
                    ArrayList<com.xiaomi.clientreport.data.a> arrayList = this.f20a.get(str);
                    if (arrayList != null && arrayList.size() > 0) {
                        com.xiaomi.clientreport.data.a[] aVarArr = new com.xiaomi.clientreport.data.a[arrayList.size()];
                        arrayList.toArray(aVarArr);
                        m7a(aVarArr);
                    }
                }
            }
            this.f20a.clear();
        }
    }

    @Override // com.xiaomi.clientreport.processor.IEventProcessor
    public String bytesToString(byte[] bArr) {
        byte[] a2;
        if (bArr != null && bArr.length >= 1) {
            if (!com.xiaomi.clientreport.manager.a.a(this.f8661a).m3a().isEventEncrypted()) {
                return bo.a(bArr);
            }
            String a3 = bs.a(this.f8661a);
            if (!TextUtils.isEmpty(a3) && (a2 = bs.a(a3)) != null && a2.length > 0) {
                try {
                    return bo.a(Base64.decode(h.a(a2, bArr), 2));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
                    b.a(e);
                }
            }
        }
        return null;
    }

    @Override // com.xiaomi.clientreport.processor.IEventProcessor
    public void setEventMap(HashMap<String, ArrayList<com.xiaomi.clientreport.data.a>> hashMap) {
        this.f20a = hashMap;
    }

    @Override // com.xiaomi.clientreport.processor.IEventProcessor
    public byte[] stringToBytes(String str) {
        byte[] a2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!com.xiaomi.clientreport.manager.a.a(this.f8661a).m3a().isEventEncrypted()) {
            return bo.m105a(str);
        }
        String a3 = bs.a(this.f8661a);
        byte[] a4 = bo.m105a(str);
        if (!TextUtils.isEmpty(a3) && a4 != null && a4.length > 1 && (a2 = bs.a(a3)) != null) {
            try {
                if (a2.length > 1) {
                    return h.b(a2, Base64.encode(a4, 2));
                }
            } catch (Exception e) {
                b.a(e);
            }
        }
        return null;
    }
}
