package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Base64;
import com.amap.api.fence.GeoFence;
import com.autonavi.p090ae.gmap.utils.GLMapStaticValue;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.data.C5878a;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.manager.C5880a;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C5968aa;
import com.xiaomi.push.C5972ae;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6027bs;
import com.xiaomi.push.C6210h;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
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

/* renamed from: com.xiaomi.clientreport.processor.a */
/* loaded from: classes2.dex */
public class C5889a implements IEventProcessor {

    /* renamed from: a */
    protected Context f20842a;

    /* renamed from: a */
    private HashMap<String, ArrayList<C5878a>> f20843a;

    public C5889a(Context context) {
        m4109a(context);
    }

    /* renamed from: a */
    public static String m4108a(C5878a c5878a) {
        return String.valueOf(c5878a.production);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
        com.xiaomi.channel.commonutils.logger.AbstractC5876b.m4138d(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0063, code lost:
        r9 = "eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K";
        r4 = r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<String> m4106a(String str) {
        char c;
        String str2;
        ArrayList arrayList = new ArrayList();
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                FileInputStream fileInputStream3 = new FileInputStream(new File(str));
                while (true) {
                    try {
                        int read = fileInputStream3.read(bArr);
                        c = -1;
                        c = -1;
                        c = -1;
                        c = -1;
                        if (read == -1) {
                            break;
                        } else if (read != 4 || C5972ae.m3792a(bArr) != -573785174) {
                            break;
                        } else {
                            int read2 = fileInputStream3.read(bArr2);
                            if (read2 == -1) {
                                break;
                            } else if (read2 == 4) {
                                int m3792a = C5972ae.m3792a(bArr2);
                                char c2 = 1;
                                if (m3792a < 1) {
                                    break;
                                }
                                c2 = 4096;
                                if (m3792a > 4096) {
                                    break;
                                }
                                byte[] bArr3 = new byte[m3792a];
                                if (fileInputStream3.read(bArr3) != m3792a) {
                                    str2 = "eventData read from cache file failed cause buffer size not equal length";
                                    c = bArr3;
                                    break;
                                }
                                String bytesToString = bytesToString(bArr3);
                                if (!TextUtils.isEmpty(bytesToString)) {
                                    arrayList.add(bytesToString);
                                }
                            } else {
                                str2 = "eventData read from cache file failed cause lengthBuffer error";
                                break;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        fileInputStream2 = fileInputStream3;
                        AbstractC5876b.m4143a(e);
                        C5968aa.m3810a(fileInputStream2);
                        fileInputStream = fileInputStream2;
                        return arrayList;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream3;
                        C5968aa.m3810a(fileInputStream);
                        throw th;
                    }
                }
                AbstractC5876b.m4138d("eventData read from cache file failed because magicNumber error");
                C5968aa.m3810a(fileInputStream3);
                fileInputStream = c;
            } catch (Exception e2) {
                e = e2;
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    private void m4107a(RandomAccessFile randomAccessFile, FileLock fileLock) {
        if (fileLock != null && fileLock.isValid()) {
            try {
                fileLock.release();
            } catch (IOException e) {
                AbstractC5876b.m4143a(e);
            }
        }
        C5968aa.m3810a(randomAccessFile);
    }

    /* renamed from: a */
    private void m4105a(String str, String str2) {
        C5880a m4132a = C5880a.m4132a(this.f20842a);
        EventClientReport m4133a = m4132a.m4133a(GLMapStaticValue.AM_PARAMETERNAME_NETWORK, "24:" + str + Constants.ACCEPT_TIME_SEPARATOR_SP + str2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(m4133a.toJsonString());
        mo3100a(arrayList);
    }

    /* renamed from: a */
    private C5878a[] m4103a(C5878a[] c5878aArr) {
        FileLock fileLock;
        RandomAccessFile randomAccessFile;
        BufferedOutputStream bufferedOutputStream;
        String m4102b = m4102b(c5878aArr[0]);
        BufferedOutputStream bufferedOutputStream2 = null;
        if (TextUtils.isEmpty(m4102b)) {
            return null;
        }
        try {
            File file = new File(m4102b + ".lock");
            C5968aa.m3808a(file);
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileLock = randomAccessFile.getChannel().lock();
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(m4102b), true));
                } catch (Exception e) {
                    e = e;
                    bufferedOutputStream = null;
                } catch (Throwable th) {
                    th = th;
                    C5968aa.m3810a(bufferedOutputStream2);
                    m4107a(randomAccessFile, fileLock);
                    throw th;
                }
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
            try {
                int i = 0;
                for (C5878a c5878a : c5878aArr) {
                    if (c5878a != null) {
                        byte[] stringToBytes = stringToBytes(c5878a.toJsonString());
                        if (stringToBytes != null && stringToBytes.length >= 1 && stringToBytes.length <= 4096) {
                            if (!C6027bs.m3600a(this.f20842a, m4102b)) {
                                int length = c5878aArr.length - i;
                                C5878a[] c5878aArr2 = new C5878a[length];
                                System.arraycopy(c5878aArr, i, c5878aArr2, 0, length);
                                C5968aa.m3810a(bufferedOutputStream);
                                m4107a(randomAccessFile, fileLock);
                                return c5878aArr2;
                            }
                            bufferedOutputStream.write(C5972ae.m3793a(-573785174));
                            bufferedOutputStream.write(C5972ae.m3793a(stringToBytes.length));
                            bufferedOutputStream.write(stringToBytes);
                            bufferedOutputStream.flush();
                            i++;
                        }
                        AbstractC5876b.m4138d("event data throw a invalid item ");
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream2 = bufferedOutputStream;
                C5968aa.m3810a(bufferedOutputStream2);
                m4107a(randomAccessFile, fileLock);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            AbstractC5876b.m4144a("event data write to cache file failed cause exception", e);
            C5968aa.m3810a(bufferedOutputStream);
            m4107a(randomAccessFile, fileLock);
            return null;
        }
        C5968aa.m3810a(bufferedOutputStream);
        m4107a(randomAccessFile, fileLock);
        return null;
    }

    /* renamed from: b */
    private String m4102b(C5878a c5878a) {
        File externalFilesDir = this.f20842a.getExternalFilesDir(GeoFence.BUNDLE_KEY_FENCESTATUS);
        String m4108a = m4108a(c5878a);
        if (externalFilesDir == null) {
            return null;
        }
        String str = externalFilesDir.getAbsolutePath() + File.separator + m4108a;
        for (int i = 0; i < 100; i++) {
            String str2 = str + i;
            if (C6027bs.m3600a(this.f20842a, str2)) {
                return str2;
            }
        }
        return null;
    }

    @Override // com.xiaomi.clientreport.processor.InterfaceC5891c
    /* renamed from: a */
    public void mo4097a() {
        int i;
        RandomAccessFile randomAccessFile;
        C6027bs.m3598a(this.f20842a, GeoFence.BUNDLE_KEY_FENCESTATUS, "eventUploading");
        File[] m3599a = C6027bs.m3599a(this.f20842a, "eventUploading");
        if (m3599a == null || m3599a.length <= 0) {
            return;
        }
        int length = m3599a.length;
        FileLock fileLock = null;
        RandomAccessFile randomAccessFile2 = null;
        File file = null;
        while (i < length) {
            File file2 = m3599a[i];
            if (file2 == null) {
                if (fileLock != null && fileLock.isValid()) {
                    try {
                        fileLock.release();
                    } catch (IOException e) {
                        AbstractC5876b.m4143a(e);
                    }
                }
                C5968aa.m3810a(randomAccessFile2);
                i = file == null ? i + 1 : 0;
                file.delete();
            } else {
                try {
                    try {
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                if (file2.length() > 5242880) {
                    AbstractC5876b.m4138d("eventData read from cache file failed because " + file2.getName() + " is too big, length " + file2.length());
                    m4105a(file2.getName(), Formatter.formatFileSize(this.f20842a, file2.length()));
                    file2.delete();
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e3) {
                            AbstractC5876b.m4143a(e3);
                        }
                    }
                    C5968aa.m3810a(randomAccessFile2);
                    if (file == null) {
                    }
                    file.delete();
                } else {
                    String absolutePath = file2.getAbsolutePath();
                    File file3 = new File(absolutePath + ".lock");
                    try {
                        C5968aa.m3808a(file3);
                        randomAccessFile = new RandomAccessFile(file3, "rw");
                    } catch (Exception e4) {
                        e = e4;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        fileLock = randomAccessFile.getChannel().lock();
                        mo3100a(m4106a(absolutePath));
                        file2.delete();
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e5) {
                                AbstractC5876b.m4143a(e5);
                            }
                        }
                        C5968aa.m3810a(randomAccessFile);
                        file3.delete();
                        randomAccessFile2 = randomAccessFile;
                        file = file3;
                    } catch (Exception e6) {
                        e = e6;
                        randomAccessFile2 = randomAccessFile;
                        file = file3;
                        AbstractC5876b.m4143a(e);
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e7) {
                                AbstractC5876b.m4143a(e7);
                            }
                        }
                        C5968aa.m3810a(randomAccessFile2);
                        if (file == null) {
                        }
                        file.delete();
                    } catch (Throwable th3) {
                        th = th3;
                        randomAccessFile2 = randomAccessFile;
                        file = file3;
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e8) {
                                AbstractC5876b.m4143a(e8);
                            }
                        }
                        C5968aa.m3810a(randomAccessFile2);
                        if (file != null) {
                            file.delete();
                        }
                        throw th;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m4109a(Context context) {
        this.f20842a = context;
    }

    @Override // com.xiaomi.clientreport.processor.InterfaceC5892d
    /* renamed from: a */
    public void mo4096a(C5878a c5878a) {
        if ((c5878a instanceof EventClientReport) && this.f20843a != null) {
            EventClientReport eventClientReport = (EventClientReport) c5878a;
            String m4108a = m4108a((C5878a) eventClientReport);
            ArrayList<C5878a> arrayList = this.f20843a.get(m4108a);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            arrayList.add(eventClientReport);
            this.f20843a.put(m4108a, arrayList);
        }
    }

    /* renamed from: a */
    public void mo3100a(List<String> list) {
        C6027bs.m3597a(this.f20842a, list);
    }

    /* renamed from: a */
    public void m4104a(C5878a[] c5878aArr) {
        if (c5878aArr == null || c5878aArr.length == 0 || c5878aArr[0] == null) {
            AbstractC5876b.m4147a("event data write to cache file failed because data null");
            return;
        }
        do {
            c5878aArr = m4103a(c5878aArr);
            if (c5878aArr == null || c5878aArr.length <= 0) {
                return;
            }
        } while (c5878aArr[0] != null);
    }

    @Override // com.xiaomi.clientreport.processor.InterfaceC5892d
    /* renamed from: b */
    public void mo4095b() {
        HashMap<String, ArrayList<C5878a>> hashMap = this.f20843a;
        if (hashMap == null) {
            return;
        }
        if (hashMap.size() > 0) {
            for (String str : this.f20843a.keySet()) {
                ArrayList<C5878a> arrayList = this.f20843a.get(str);
                if (arrayList != null && arrayList.size() > 0) {
                    C5878a[] c5878aArr = new C5878a[arrayList.size()];
                    arrayList.toArray(c5878aArr);
                    m4104a(c5878aArr);
                }
            }
        }
        this.f20843a.clear();
    }

    @Override // com.xiaomi.clientreport.processor.IEventProcessor
    public String bytesToString(byte[] bArr) {
        byte[] m3596a;
        if (bArr != null && bArr.length >= 1) {
            if (!C5880a.m4132a(this.f20842a).m4135a().isEventEncrypted()) {
                return C6023bo.m3614a(bArr);
            }
            String m3603a = C6027bs.m3603a(this.f20842a);
            if (!TextUtils.isEmpty(m3603a) && (m3596a = C6027bs.m3596a(m3603a)) != null && m3596a.length > 0) {
                try {
                    return C6023bo.m3614a(Base64.decode(C6210h.m2666a(m3596a, bArr), 2));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
                    AbstractC5876b.m4143a(e);
                }
            }
        }
        return null;
    }

    @Override // com.xiaomi.clientreport.processor.IEventProcessor
    public void setEventMap(HashMap<String, ArrayList<C5878a>> hashMap) {
        this.f20843a = hashMap;
    }

    @Override // com.xiaomi.clientreport.processor.IEventProcessor
    public byte[] stringToBytes(String str) {
        byte[] m3596a;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (C5880a.m4132a(this.f20842a).m4135a().isEventEncrypted()) {
            String m3603a = C6027bs.m3603a(this.f20842a);
            byte[] m3618a = C6023bo.m3618a(str);
            if (!TextUtils.isEmpty(m3603a) && m3618a != null && m3618a.length > 1 && (m3596a = C6027bs.m3596a(m3603a)) != null) {
                try {
                    if (m3596a.length > 1) {
                        return C6210h.m2665b(m3596a, Base64.encode(m3618a, 2));
                    }
                } catch (Exception e) {
                    AbstractC5876b.m4143a(e);
                }
            }
            return null;
        }
        return C6023bo.m3618a(str);
    }
}
