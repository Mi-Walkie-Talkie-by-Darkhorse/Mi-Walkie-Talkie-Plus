package p048b.p073d.p074a.p075b;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* renamed from: b.d.a.b.f */
/* loaded from: classes2.dex */
public class RomUtils {
    /* renamed from: a */
    public static boolean m21030a() {
        String str = Build.MANUFACTURER;
        return str.contains("QiKU") || str.contains("360");
    }

    /* renamed from: b */
    public static boolean m21029b() {
        return Build.MANUFACTURER.contains("HUAWEI");
    }

    /* renamed from: c */
    public static boolean m21028c() {
        String m21025f = m21025f("ro.build.display.id");
        if (TextUtils.isEmpty(m21025f)) {
            return false;
        }
        return m21025f.contains("flyme") || m21025f.toLowerCase().contains("flyme");
    }

    /* renamed from: d */
    public static boolean m21027d() {
        return !TextUtils.isEmpty(m21025f("ro.miui.ui.version.name"));
    }

    /* renamed from: e */
    public static boolean m21026e() {
        String str = Build.MANUFACTURER;
        return str.contains("OPPO") || str.contains("oppo");
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0064: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:24:0x0064 */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m21025f(String str) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            } catch (IOException e) {
                e = e;
                bufferedReader = null;
            } catch (Throwable th) {
                th = th;
                if (bufferedReader3 != null) {
                }
                throw th;
            }
            try {
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                try {
                    bufferedReader.close();
                } catch (IOException e2) {
                    Log.e("RomUtils", "Exception while closing InputStream", e2);
                }
                return readLine;
            } catch (IOException e3) {
                e = e3;
                Log.e("RomUtils", "Unable to read sysprop " + str, e);
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        Log.e("RomUtils", "Exception while closing InputStream", e4);
                    }
                }
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader3 = bufferedReader2;
            if (bufferedReader3 != null) {
                try {
                    bufferedReader3.close();
                } catch (IOException e5) {
                    Log.e("RomUtils", "Exception while closing InputStream", e5);
                }
            }
            throw th;
        }
    }
}
