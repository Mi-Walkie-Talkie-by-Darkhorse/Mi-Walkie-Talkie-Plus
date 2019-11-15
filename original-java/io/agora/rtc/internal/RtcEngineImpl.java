package io.agora.rtc.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.IntentFilter;
import android.hardware.Camera;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthWcdma;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.view.OrientationEventListener;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Network;
import io.agora.rtc.b;
import io.agora.rtc.d;
import io.agora.rtc.internal.a.C0079a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class RtcEngineImpl extends d implements C0079a {
    static float[] a = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    private static boolean j = false;
    /* access modifiers changed from: private */
    public boolean b;
    private int c;
    private boolean d;
    private OrientationEventListener e;
    private long f = 0;
    private int g = 1000;
    private long h = 0;
    private b i;
    private io.agora.rtc.a k = null;
    private io.agora.rtc.a.d l = null;
    private ConnectionChangeBroadcastReceiver m = null;
    private WifiLock n = null;
    private a o = null;
    private int p = -1;
    private int q;
    private boolean r;
    private int s;
    private int t;
    private String u;
    private WeakReference<Context> v;
    /* access modifiers changed from: private */
    public a w;
    private boolean x;

    private class a extends PhoneStateListener {
        private SignalStrength b;

        private a() {
        }

        public int a() {
            return a("getDbm");
        }

        public int b() {
            return a("getLevel");
        }

        public int c() {
            return a("getAsuLevel");
        }

        private int a(String str) {
            try {
                if (this.b != null) {
                    Method declaredMethod = this.b.getClass().getDeclaredMethod(str, new Class[0]);
                    if (declaredMethod != null) {
                        return ((Integer) declaredMethod.invoke(this.b, new Object[0])).intValue();
                    }
                }
            } catch (Exception e) {
            }
            return 0;
        }

        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            super.onSignalStrengthsChanged(signalStrength);
            this.b = signalStrength;
        }

        public void onCallStateChanged(int i, String str) {
            super.onCallStateChanged(i, str);
            if (RtcEngineImpl.this.w != null) {
                switch (i) {
                    case 0:
                        d.b("RtcEngine", "system phone call end delay 1000");
                        new Handler().postDelayed(new Runnable() {
                            public void run() {
                                RtcEngineImpl.this.e();
                                RtcEngineImpl.this.w.a(22, 0);
                            }
                        }, 1000);
                        RtcEngineImpl.this.w.a(22, 0);
                        return;
                    case 1:
                        d.b("RtcEngine", "system phone call ring");
                        RtcEngineImpl.this.f();
                        RtcEngineImpl.this.w.a(22, 1);
                        return;
                    case 2:
                        d.b("RtcEngine", "system phone call start");
                        RtcEngineImpl.this.f();
                        RtcEngineImpl.this.w.a(22, 2);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    private static native int nativeClassInit();

    private native int nativeDestroy(long j2);

    private native String nativeGetParameter(long j2, String str, String str2);

    private native int nativeJoinChannel(long j2, byte[] bArr, String str, String str2, String str3, int i2);

    private native int nativeLeaveChannel(long j2);

    static native int nativeLog(int i2, String str);

    private native int nativeNotifyNetworkChange(long j2, byte[] bArr);

    private native long nativeObjectInit(Object obj, String str, String str2, String str3, String str4, String str5);

    private native int nativeSetParameters(long j2, String str);

    private native int setExtVideoSource(long j2, int i2, int i3);

    public void c(int i2) {
        a("che.audio.output.routing", i2);
        if (this.k != null) {
            this.k.onAudioRouteChanged(i2);
        }
    }

    public void d(int i2) {
        d.b("RtcEngine", "on Audio routing error:" + i2);
        if (this.k != null) {
            this.k.onError(i2);
        }
    }

    private void a(Context context, String str) throws SecurityException {
        if (context == null || context.checkCallingOrSelfPermission(str) != 0) {
            throw new SecurityException(str + " is not granted");
        }
    }

    private void a(Context context) throws SecurityException {
        a(context, "android.permission.INTERNET");
        a(context, "android.permission.RECORD_AUDIO");
        a(context, "android.permission.MODIFY_AUDIO_SETTINGS");
        if (this.b && !this.d) {
            a(context, "android.permission.CAMERA");
        }
    }

    private int a(Context context, int i2) {
        switch (i2) {
            case 1:
                try {
                    a(context);
                    break;
                } catch (SecurityException e2) {
                    d.a("RtcEngine", "Do not have enough permission! ", (Throwable) e2);
                    return -9;
                }
            case 2:
                try {
                    a(context, "android.permission.INTERNET");
                    break;
                } catch (SecurityException e3) {
                    d.c("RtcEngine", "Do not have Internet permission!");
                    return -9;
                }
            default:
                return -2;
        }
        return 0;
    }

    private static String c(String str) throws Exception {
        Class cls = Class.forName("android.os.SystemProperties");
        return (String) cls.getMethod("get", new Class[]{String.class}).invoke(cls, new Object[]{str});
    }

    public static synchronized boolean c() {
        boolean z;
        synchronized (RtcEngineImpl.class) {
            if (!j) {
                System.loadLibrary("agora-rtc-sdk-jni");
                j = nativeClassInit() == 0;
            }
            z = j;
        }
        return z;
    }

    public RtcEngineImpl(Context context, String str, io.agora.rtc.a aVar) throws Exception {
        boolean z;
        boolean z2 = false;
        this.b = z2;
        this.c = z2 ? 1 : 0;
        this.d = z2;
        this.q = z2;
        this.s = z2;
        this.t = 2;
        this.u = null;
        this.x = true;
        this.b = z2;
        this.v = new WeakReference<>(context);
        this.k = aVar;
        this.c = j();
        String d2 = d(context);
        String absolutePath = context.getCacheDir().getAbsolutePath();
        String str2 = context.getApplicationInfo().nativeLibraryDir;
        String a2 = c.a();
        d.b("RtcEngine", "Initialize Agora Rtc Engine device '" + a2 + "' dir '" + d2);
        this.h = nativeObjectInit(context, str, a2, d2, absolutePath, str2);
        boolean equals = Build.SERIAL.toLowerCase().equals(EnvironmentCompat.MEDIA_UNKNOWN);
        try {
            z = c("ro.hardware").equals("intel");
            try {
                z2 = System.getProperty("os.arch").toLowerCase().equals("i686");
            } catch (Exception e2) {
            }
        } catch (Exception e3) {
            z = z2;
        }
        if (equals || z || z2) {
            a("che.android_simulator", true);
        }
        this.w = new a(context, this);
        if (this.w.a() != 0) {
            d.c("RtcEngine", "failed to init audio routing controller");
        }
        b(true);
        try {
            this.o = new a();
            ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).listen(this.o, 288);
        } catch (Exception e4) {
            d.a("RtcEngine", "Unable to create PhoneStateListener, ", (Throwable) e4);
        }
    }

    public void d() {
        a(false, false, true);
        this.w.b();
        this.w = null;
        b(false);
        this.e = null;
        this.o = null;
        nativeDestroy(this.h);
        this.h = 0;
    }

    public void b(Context context, String str, io.agora.rtc.a aVar) {
        this.k = aVar;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x006f, code lost:
        if ((360 - r13) >= 40) goto L_0x0071;
     */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x003d A[SYNTHETIC, Splitter:B:12:0x003d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void f(int r13) {
        /*
            r12 = this;
            r11 = 40
            r10 = 20
            r1 = 2
            r2 = 1
            long r4 = java.lang.System.currentTimeMillis()
            long r6 = r12.f
            long r6 = r4 - r6
            r8 = 100
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r0 >= 0) goto L_0x0015
        L_0x0014:
            return
        L_0x0015:
            double r6 = (double) r13
            r8 = 4636033603912859648(0x4056800000000000, double:90.0)
            double r6 = r6 / r8
            long r6 = java.lang.Math.round(r6)
            r8 = 90
            long r6 = r6 * r8
            int r0 = (int) r6
            int r0 = r0 % 360
            r3 = 0
            int r6 = r0 - r13
            int r6 = java.lang.Math.abs(r6)
            if (r6 >= r10) goto L_0x0063
            r3 = r2
        L_0x0030:
            if (r0 != 0) goto L_0x0071
            r6 = 180(0xb4, float:2.52E-43)
            if (r13 <= r6) goto L_0x0071
            int r6 = 360 - r13
            if (r6 >= r10) goto L_0x006d
            r1 = r2
        L_0x003b:
            if (r1 <= 0) goto L_0x0060
            android.hardware.Camera$CameraInfo r3 = new android.hardware.Camera$CameraInfo     // Catch:{ Exception -> 0x007c }
            r3.<init>()     // Catch:{ Exception -> 0x007c }
            int r6 = r12.c     // Catch:{ Exception -> 0x007c }
            android.hardware.Camera.getCameraInfo(r6, r3)     // Catch:{ Exception -> 0x007c }
            int r3 = r3.orientation     // Catch:{ Exception -> 0x007c }
            if (r1 != r2) goto L_0x0073
            r1 = r0
        L_0x004c:
            boolean r0 = r12.r     // Catch:{ Exception -> 0x007c }
            if (r0 == 0) goto L_0x0077
            int r0 = 360 - r1
            int r0 = r0 % 360
            int r0 = r0 + r3
            int r0 = r0 % 360
        L_0x0057:
            int r2 = r12.g     // Catch:{ Exception -> 0x007c }
            if (r0 == r2) goto L_0x005e
            r12.b(r0, r1)     // Catch:{ Exception -> 0x007c }
        L_0x005e:
            r12.g = r0     // Catch:{ Exception -> 0x007c }
        L_0x0060:
            r12.f = r4
            goto L_0x0014
        L_0x0063:
            int r6 = r0 - r13
            int r6 = java.lang.Math.abs(r6)
            if (r6 >= r11) goto L_0x0030
            r3 = r1
            goto L_0x0030
        L_0x006d:
            int r6 = 360 - r13
            if (r6 < r11) goto L_0x003b
        L_0x0071:
            r1 = r3
            goto L_0x003b
        L_0x0073:
            int r0 = r0 + 5
            r1 = r0
            goto L_0x004c
        L_0x0077:
            int r0 = r1 + r3
            int r0 = r0 % 360
            goto L_0x0057
        L_0x007c:
            r0 = move-exception
            java.lang.String r1 = "RtcEngine"
            java.lang.String r2 = "Unable to get camera info, "
            io.agora.rtc.internal.d.a(r1, r2, r0)
            goto L_0x0060
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.RtcEngineImpl.f(int):void");
    }

    private int b(int i2, int i3) {
        return c("che.video.local.rotate_video", a("{\"degree\":%d,\"rotation\":%d}", Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    private int j() {
        return Camera.getNumberOfCameras() > 1 ? 1 : 0;
    }

    public void b(boolean z) {
        if (!z) {
            try {
                Context context = (Context) this.v.get();
                if (!(context == null || this.m == null)) {
                    context.unregisterReceiver(this.m);
                }
            } catch (IllegalArgumentException e2) {
            }
            this.m = null;
        } else if (this.m == null) {
            try {
                this.m = new ConnectionChangeBroadcastReceiver(this);
                Context context2 = (Context) this.v.get();
                if (context2 != null && this.m != null) {
                    context2.registerReceiver(this.m, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                }
            } catch (Exception e3) {
                d.a("RtcEngine", "Unable to create ConnectionChangeBroadcastReceiver, ", (Throwable) e3);
            }
        }
    }

    public boolean a(boolean z) {
        Context context = (Context) this.v.get();
        if (context == null) {
            return false;
        }
        if (!z) {
            this.n = null;
        } else if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") != 0) {
            this.n = null;
            return false;
        } else if (this.n == null) {
            this.n = ((WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI)).createWifiLock(3, "agora.voip.lock");
        }
        return true;
    }

    private io.agora.rtc.internal.f.a b(Context context) {
        io.agora.rtc.internal.f.a aVar = new io.agora.rtc.internal.f.a();
        aVar.a = c(context);
        return aVar;
    }

    private f.b c(Context context) {
        f.b bVar = new f.b();
        if (!f(context)) {
            bVar.j = "";
            bVar.k = "";
            bVar.h = 0;
            bVar.g = 0;
            return bVar;
        }
        String i2 = i();
        if (i2 != null) {
            bVar.a = i2;
        }
        NetworkInfo a2 = b.a(context);
        bVar.e = b.a(a2);
        if (a2 != null) {
            bVar.f = a2.getSubtype();
        }
        bVar.l = b.a();
        if (bVar.e == 2) {
            if (!g(context)) {
                bVar.j = "";
                bVar.k = "";
                bVar.h = 0;
                bVar.g = 0;
                return bVar;
            }
            WifiManager wifiManager = (WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI);
            DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
            if (dhcpInfo != null) {
                InetAddress g2 = g(dhcpInfo.gateway);
                if (g2 != null) {
                    bVar.b = g2.getHostAddress();
                }
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo != null) {
                String bssid = connectionInfo.getBSSID();
                bVar.j = connectionInfo.getSSID().replace("\"", "");
                bVar.k = bssid == null ? "" : bssid.replace("\"", "");
                bVar.h = connectionInfo.getRssi();
                bVar.g = WifiManager.calculateSignalLevel(bVar.h, 5);
                if (VERSION.SDK_INT >= 21) {
                    int frequency = connectionInfo.getFrequency();
                    if (frequency >= 5000) {
                        bVar.f = 101;
                    } else if (frequency >= 2400) {
                        bVar.f = 100;
                    }
                }
            }
        } else if (this.o != null) {
            bVar.h = this.o.a();
            bVar.g = this.o.b();
            bVar.i = this.o.c();
        } else if (context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
            a(context, bVar);
        }
        return bVar;
    }

    @TargetApi(17)
    private boolean a(Context context, f.b bVar) {
        if (context == null || VERSION.SDK_INT < 17) {
            this.p = -1;
            return false;
        }
        List allCellInfo = ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getAllCellInfo();
        if (allCellInfo == null || allCellInfo.isEmpty()) {
            return false;
        }
        CellInfo cellInfo = (CellInfo) allCellInfo.get(0);
        if (cellInfo == null) {
            return false;
        }
        try {
            if (this.p == -1 || this.p == 0) {
                CellSignalStrengthGsm cellSignalStrength = ((CellInfoGsm) cellInfo).getCellSignalStrength();
                if (cellSignalStrength != null) {
                    this.p = 0;
                    bVar.h = cellSignalStrength.getDbm();
                    bVar.g = cellSignalStrength.getLevel();
                    bVar.i = cellSignalStrength.getAsuLevel();
                    return true;
                }
            }
        } catch (Exception e2) {
            this.p = -1;
        }
        try {
            if (this.p == -1 || this.p == 1) {
                CellSignalStrengthCdma cellSignalStrength2 = ((CellInfoCdma) cellInfo).getCellSignalStrength();
                if (cellSignalStrength2 != null) {
                    this.p = 1;
                    bVar.h = cellSignalStrength2.getDbm();
                    bVar.g = cellSignalStrength2.getLevel();
                    bVar.i = cellSignalStrength2.getAsuLevel();
                    return true;
                }
            }
        } catch (Exception e3) {
            this.p = -1;
        }
        try {
            if (this.p == -1 || this.p == 2) {
                if (VERSION.SDK_INT < 18) {
                    return false;
                }
                CellSignalStrengthWcdma cellSignalStrength3 = ((CellInfoWcdma) cellInfo).getCellSignalStrength();
                if (cellSignalStrength3 != null) {
                    this.p = 2;
                    bVar.h = cellSignalStrength3.getDbm();
                    bVar.g = cellSignalStrength3.getLevel();
                    bVar.i = cellSignalStrength3.getAsuLevel();
                    return true;
                }
            }
        } catch (Exception e4) {
            this.p = -1;
        }
        try {
            if (this.p == -1 || this.p == 3) {
                CellSignalStrengthLte cellSignalStrength4 = ((CellInfoLte) cellInfo).getCellSignalStrength();
                if (cellSignalStrength4 != null) {
                    this.p = 3;
                    bVar.h = cellSignalStrength4.getDbm();
                    bVar.g = cellSignalStrength4.getLevel();
                    bVar.i = cellSignalStrength4.getAsuLevel();
                    return true;
                }
            }
        } catch (Exception e5) {
            this.p = -1;
        }
        return false;
    }

    private String d(Context context) {
        if (context != null) {
            if (context.checkCallingOrSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
                return "/sdcard/" + context.getApplicationInfo().packageName;
            }
            d.d("RtcEngine", "read external storage is not granted");
        }
        return null;
    }

    private void a(Context context, io.agora.rtc.internal.f.a aVar) {
        if (context != null && aVar.a.e == 2 && context.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0 && this.n != null) {
            this.n.acquire();
            d.b("RtcEngine", "hp connection mode detected");
        }
    }

    private int e(Context context) {
        int i2 = 1;
        if (this.s == 1) {
            i2 = this.t;
        }
        if (a(context, i2) == 0) {
            return 0;
        }
        d.c("RtcEngine", "can't join channel because no permission");
        return -9;
    }

    public int a(String str, String str2, String str3, int i2) {
        String str4;
        Context context = (Context) this.v.get();
        if (context == null) {
            return -7;
        }
        io.agora.rtc.internal.f.a b2 = b(context);
        a(context, b2);
        e(context);
        if (this.b) {
            try {
                if (this.e == null) {
                    this.e = new OrientationEventListener(context, 2) {
                        public void onOrientationChanged(int i) {
                            if (RtcEngineImpl.this.b && i != -1) {
                                RtcEngineImpl.this.f(i);
                            }
                        }
                    };
                }
                this.e.enable();
            } catch (Exception e2) {
                d.a("RtcEngine", "Unable to create OrientationEventListener, ", (Throwable) e2);
            }
            e(this.c);
        }
        if (this.i == null || !this.i.a()) {
            str4 = str3;
        } else {
            if (str3 != null) {
                d.d("RtcEngine", "override optionalInfo by publisherConfiguration");
            }
            str4 = this.i.b();
        }
        return nativeJoinChannel(this.h, b2.a(), str, str2, str4, i2);
    }

    private void k() {
        if (this.e != null) {
            this.e.disable();
            this.e = null;
        }
        if (this.n != null && this.n.isHeld()) {
            this.n.release();
            d.b("RtcEngine", "hp connection mode ended");
        }
    }

    public int b() {
        k();
        if (this.w != null) {
            this.w.c();
        }
        return nativeLeaveChannel(this.h);
    }

    public int e() {
        return a("{\"rtc.audio.enabled\":true,\"che.disable.audio\":false}");
    }

    public int f() {
        return a("{\"rtc.audio.enabled\":false,\"che.disable.audio\":true}");
    }

    public int d(boolean z) {
        return a(a("{\"rtc.audio.mute_me\":%b, \"che.audio.mute_me\":%b}", Boolean.valueOf(z), Boolean.valueOf(z)));
    }

    public int e(boolean z) {
        return a("rtc.audio.mute_peers", z);
    }

    public int a(int i2, boolean z) {
        return a(a("{\"rtc.audio.mute_peer\":{\"uid\":%d,\"mute\":%b}}", Long.valueOf(((long) i2) & 4294967295L), Boolean.valueOf(z)));
    }

    public int c(boolean z) {
        int i2 = 1;
        d.a(String.format("API call to setEnableSpeakerphone to %b", new Object[]{Boolean.valueOf(z)}));
        if (this.w == null) {
            return -7;
        }
        a aVar = this.w;
        if (!z) {
            i2 = 0;
        }
        aVar.a(11, i2);
        return 0;
    }

    public int b(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 400) {
            i2 = 400;
        }
        return a("che.audio.playout.signal.volume", i2);
    }

    public int a(int i2, int i3) {
        if (i2 < 0) {
            i2 = 0;
        }
        return c("che.audio.volume_indication", a("{\"interval\":%d,\"smooth\":%d}", Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public int e(int i2) {
        boolean z = true;
        if (!this.b || this.d) {
            return -1;
        }
        this.c = i2;
        if (this.c != 1) {
            z = false;
        }
        this.r = z;
        return a("che.video.local.camera_index", i2);
    }

    private static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public int b(String str) {
        return b("rtc.log_file", str);
    }

    public int a(String str) {
        return nativeSetParameters(this.h, str);
    }

    public String a(String str, String str2) {
        return nativeGetParameter(this.h, str, str2);
    }

    public int a(int i2) {
        if (this.w == null) {
            return -7;
        }
        this.s = i2;
        this.w.a(20, i2);
        return a("rtc.channel_profile", i2);
    }

    private boolean f(Context context) {
        if (context != null && context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            return true;
        }
        return false;
    }

    private boolean g(Context context) {
        if (context != null && context.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public byte[] g() {
        f.b c2 = c((Context) this.v.get());
        if (c2 != null) {
            return c2.a();
        }
        return null;
    }

    public void h() {
        nativeNotifyNetworkChange(this.h, g());
    }

    public void a(boolean z, boolean z2, boolean z3) {
        int i2 = 1;
        this.d = z;
        if (!z2) {
            long j2 = this.h;
            int i3 = z ? 1 : 0;
            if (!z3) {
                i2 = 0;
            }
            setExtVideoSource(j2, i3, i2);
        } else if (z) {
            a("che.video.enable_external_texture_input", true);
        } else {
            a("che.video.enable_external_texture_input", false);
            d.b("setVideoSource: on Android, texture mode cannot be disabled once enabled.");
        }
    }

    private static String a(InetAddress inetAddress) {
        if (!inetAddress.isLoopbackAddress()) {
            if (inetAddress instanceof Inet4Address) {
                return ((Inet4Address) inetAddress).getHostAddress();
            }
            if (inetAddress instanceof Inet6Address) {
            }
        }
        return null;
    }

    protected static String i() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (!networkInterface.getName().startsWith("usb")) {
                    for (InetAddress a2 : Collections.list(networkInterface.getInetAddresses())) {
                        String a3 = a(a2);
                        if (a3 != null && !a3.isEmpty()) {
                            return a3;
                        }
                    }
                    continue;
                }
            }
        } catch (Exception e2) {
        }
        return null;
    }

    private static InetAddress g(int i2) {
        try {
            return InetAddress.getByAddress(new byte[]{(byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 24) & 255)});
        } catch (UnknownHostException e2) {
            return null;
        }
    }

    public void finalize() {
        if (this.h != 0) {
            nativeDestroy(this.h);
        }
    }

    private int a(String str, boolean z) {
        return a(a("{\"%s\":%b}", str, Boolean.valueOf(z)));
    }

    private int a(String str, int i2) {
        return a(a("{\"%s\":%d}", str, Integer.valueOf(i2)));
    }

    private int b(String str, String str2) {
        return a(a("{\"%s\":\"%s\"}", str, str2));
    }

    private int c(String str, String str2) {
        return a(a("{\"%s\":%s}", str, str2));
    }
}
