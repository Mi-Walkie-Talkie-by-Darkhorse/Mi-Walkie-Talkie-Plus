package com.ifengyu.intercom.g;

import android.content.pm.PackageManager;
import android.os.Build;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.g.c.c;
import com.ifengyu.intercom.g.c.d;
import com.ifengyu.intercom.g.d.b;
import com.ifengyu.intercom.g.e.f;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.enums.LoginTypeEnum;
import com.umeng.analytics.pro.ai;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.util.List;

/* compiled from: FengYuApi.java */
/* loaded from: classes.dex */
public class a {

    /* compiled from: FengYuApi.java */
    /* renamed from: com.ifengyu.intercom.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class C0145a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5232a;

        static {
            int[] iArr = new int[LoginTypeEnum.values().length];
            f5232a = iArr;
            try {
                iArr[LoginTypeEnum.XIAOMI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5232a[LoginTypeEnum.WECHAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static void a(LoginTypeEnum loginTypeEnum, String str, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        int i = C0145a.f5232a[loginTypeEnum.ordinal()];
        String str2 = "https://api.ifengyu.com";
        if (i == 1) {
            str2 = str2 + "/v2/user/mi";
        } else if (i == 2) {
            str2 = str2 + "/v2/user/wechat";
        }
        c e = b.e();
        e.a(str2);
        c cVar = e;
        cVar.a("action", "login");
        cVar.a("code", str);
        cVar.a(ai.x, "and");
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(valueOf));
        cVar.a().b(bVar);
    }

    public static f b(String str, b bVar) {
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a("https://api-mipoc.ifengyu.com:8088/v1/privacy/info");
        com.ifengyu.intercom.g.c.a aVar = c2;
        aVar.a("type", str);
        f a2 = aVar.a();
        a2.b(bVar);
        return a2;
    }

    public static void c(String str, String str2, String str3, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com/v3/user/password");
        c cVar = e;
        cVar.a("account", str);
        cVar.a("newPassword", str2);
        cVar.a("code", str3);
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(valueOf));
        cVar.a().b(bVar);
    }

    public static void d(String str, String str2, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com/v3/user/login");
        c cVar = e;
        cVar.a("account", str);
        cVar.a("secret", str2);
        cVar.a("loginType", "102");
        cVar.a(ai.x, "and");
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(valueOf));
        cVar.a().b(bVar);
    }

    public static void e(b bVar) {
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a("https://cms.ifengyu.com/fymanage/api/splash/?is_publish=1&limit=1");
        c2.a().b(bVar);
    }

    public static void b(String str, String str2, String str3, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com/v3/user/register");
        c cVar = e;
        cVar.a("phone", str);
        cVar.a("password", str2);
        cVar.a("code", str3);
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(valueOf));
        cVar.a().b(bVar);
    }

    public static void c(String str, b bVar) {
        String string = d0.R().getString(AuthorizeActivityBase.KEY_USERID, "");
        String valueOf = String.valueOf(System.currentTimeMillis());
        String O = d0.O();
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar = e;
        cVar.a("action", "userinfo");
        cVar.a(AuthorizeActivityBase.KEY_USERID, string);
        cVar.a("queryid", str);
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(O + valueOf));
        cVar.a().b(bVar);
    }

    public static void d(b bVar) {
        String str;
        String valueOf = String.valueOf(System.currentTimeMillis());
        try {
            str = MiTalkiApp.b().getPackageManager().getPackageInfo(k0.d(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str = null;
        }
        int K = d0.K();
        StringBuilder sb = new StringBuilder();
        if (K > 0) {
            sb.append((K / 16777216) % 256);
            sb.append(".");
            sb.append((K / 65536) % 256);
            sb.append(".");
            sb.append(K % 65536);
        }
        z.c("SharkMcuVersionName", sb.toString());
        z.c("url:", "https://api.ifengyu.com/v2/version");
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a("https://api.ifengyu.com/v2/version");
        com.ifengyu.intercom.g.c.a aVar = c2;
        aVar.a("action", Constants.VERSION);
        aVar.a("type", "shark");
        aVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        aVar.a("lang", "zh_cn");
        aVar.a("appVersion", str);
        aVar.a("hwVersion", String.valueOf(d0.J()));
        aVar.a("mcuVersion", sb.toString());
        aVar.a("time", valueOf);
        aVar.a("sign", a0.b(d0.O() + valueOf));
        aVar.a().b(bVar);
    }

    public static void a(String str, int i, String str2, String str3, String str4, String str5, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com/v3/sms/code");
        c cVar = e;
        cVar.a("phone", str);
        cVar.a("codeType", String.valueOf(i));
        cVar.a("sessionId", str2);
        cVar.a("sig", str3);
        cVar.a("token", str4);
        cVar.a("scene", str5);
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(valueOf));
        cVar.a().b(bVar);
    }

    public static void b(String str, String str2, b bVar) {
        String O = d0.O();
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar = e;
        cVar.a("action", "channelAct");
        cVar.a(AuthorizeActivityBase.KEY_USERID, str);
        cVar.a("deviceId", str2);
        cVar.a("activate", "2");
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(O + valueOf));
        cVar.a().b(bVar);
    }

    public static void c(b bVar) {
        String str;
        String valueOf = String.valueOf(System.currentTimeMillis());
        try {
            str = MiTalkiApp.b().getPackageManager().getPackageInfo(k0.d(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str = null;
        }
        int D = d0.D();
        StringBuilder sb = new StringBuilder();
        if (D > 0) {
            sb.append((D / 16777216) % 256);
            sb.append(".");
            sb.append((D / 65536) % 256);
            sb.append(".");
            sb.append(D % 65536);
        }
        z.c("SealMcuVersionName", sb.toString());
        z.c("url:", "https://api.ifengyu.com/v2/version");
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a("https://api.ifengyu.com/v2/version");
        com.ifengyu.intercom.g.c.a aVar = c2;
        aVar.a("action", Constants.VERSION);
        aVar.a("type", "seal");
        aVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        aVar.a("lang", "zh_cn");
        aVar.a("appVersion", str);
        aVar.a("hwVersion", String.valueOf(d0.C()));
        aVar.a("mcuVersion", sb.toString());
        aVar.a("time", valueOf);
        aVar.a("sign", a0.b(d0.O() + valueOf));
        aVar.a().b(bVar);
    }

    public static void a(String str, String str2, int i, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com/v3/sms/code/check");
        c cVar = e;
        cVar.a("phone", str);
        cVar.a("code", str2);
        cVar.a("codeType", String.valueOf(i));
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(valueOf));
        cVar.a().b(bVar);
    }

    public static void b(b bVar) {
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a("https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=4&order=-first_published_at&limit=1");
        c2.a().b(bVar);
    }

    public static void b(double d, double d2, b bVar) {
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a("http://api.map.baidu.com/geocoder?location=" + d + Constants.ACCEPT_TIME_SEPARATOR_SP + d2 + "&output=json");
        c2.a().b(bVar);
    }

    public static void a(double d, double d2, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a("https://api.ifengyu.com");
        com.ifengyu.intercom.g.c.a aVar = c2;
        aVar.a("action", "elevation");
        aVar.a("location", d + Constants.ACCEPT_TIME_SEPARATOR_SP + d2);
        aVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        aVar.a("time", valueOf);
        aVar.a("sign", a0.b(d0.O() + valueOf));
        f a2 = aVar.a();
        a2.a(5000L);
        a2.b(3000L);
        a2.c(3000L);
        a2.b(bVar);
    }

    public static void b(int i, int i2, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar = e;
        cVar.a("action", "getfeedback");
        cVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(d0.O() + valueOf));
        if (i > 0) {
            cVar.a("limit", String.valueOf(i));
        }
        if (i2 > 0) {
            cVar.a("offset", String.valueOf(i2));
        }
        cVar.a().b(bVar);
    }

    public static void c(String str, String str2, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        d f = b.f();
        f.a("https://api.ifengyu.com/v3/user/change_password");
        d dVar = f;
        dVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        dVar.a("oldPassword", str);
        dVar.a("newPassword", str2);
        dVar.a("time", valueOf);
        dVar.a("sign", a0.b(d0.O() + valueOf));
        dVar.a().b(bVar);
    }

    public static void a(String str, String str2, b bVar) {
        String O = d0.O();
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar = e;
        cVar.a("action", "channelAct");
        cVar.a(AuthorizeActivityBase.KEY_USERID, str);
        cVar.a("deviceId", str2);
        cVar.a("activate", "1");
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(O + valueOf));
        cVar.a().b(bVar);
    }

    public static void a(String str, String str2, int i) {
        String str3;
        String N = d0.N();
        String O = d0.O();
        String valueOf = String.valueOf(System.currentTimeMillis());
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            sb.append((i / 16777216) % 256);
            sb.append(".");
            sb.append((i / 65536) % 256);
            sb.append(".");
            sb.append(i % 65536);
        }
        try {
            str3 = MiTalkiApp.b().getPackageManager().getPackageInfo(k0.d(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str3 = "unknown";
        }
        c e2 = b.e();
        e2.a("https://api.ifengyu.com");
        c cVar = e2;
        cVar.a("action", "uploadInterphoneInfo");
        cVar.a(AuthorizeActivityBase.KEY_USERID, N);
        cVar.a("interphonetype", str);
        cVar.a("interphoneid", str2);
        cVar.a("activate", d0.U() ? "1" : "0");
        cVar.a("mcuversion", sb.toString());
        cVar.a("appversion", str3);
        cVar.a("phonemodel", Build.MANUFACTURER + Constants.COLON_SEPARATOR + Build.MODEL);
        cVar.a("phonesys", "android");
        cVar.a("phonesysversion", Build.VERSION.RELEASE);
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(O + valueOf));
        cVar.a().b((b) null);
    }

    public static void a(int i, String str, String str2, String str3, String str4, b bVar) {
        String N = d0.N();
        String valueOf = String.valueOf(System.currentTimeMillis());
        String O = d0.O();
        if (i == 1) {
            c e = b.e();
            e.a("https://api.ifengyu.com");
            c cVar = e;
            cVar.a("action", "profile");
            cVar.a(AuthorizeActivityBase.KEY_USERID, N);
            cVar.a("nickname", str);
            cVar.a("time", valueOf);
            cVar.a("sign", a0.b(O + valueOf));
            cVar.a().b(bVar);
        } else if (i == 2) {
            c e2 = b.e();
            e2.a("https://api.ifengyu.com");
            c cVar2 = e2;
            cVar2.a("action", "profile");
            cVar2.a(AuthorizeActivityBase.KEY_USERID, N);
            cVar2.a("phone", str2);
            cVar2.a("time", valueOf);
            cVar2.a("sign", a0.b(O + valueOf));
            cVar2.a().b(bVar);
        } else if (i == 3) {
            c e3 = b.e();
            e3.a("https://api.ifengyu.com");
            c cVar3 = e3;
            cVar3.a("action", "profile");
            cVar3.a(AuthorizeActivityBase.KEY_USERID, N);
            cVar3.a("email", str3);
            cVar3.a("time", valueOf);
            cVar3.a("sign", a0.b(O + valueOf));
            cVar3.a().b(bVar);
        } else if (i == 4) {
            c e4 = b.e();
            e4.a("https://api.ifengyu.com");
            c cVar4 = e4;
            cVar4.a("action", "profile");
            cVar4.a(AuthorizeActivityBase.KEY_USERID, N);
            cVar4.a("gender", str4);
            cVar4.a("time", valueOf);
            cVar4.a("sign", a0.b(O + valueOf));
            cVar4.a().b(bVar);
        }
    }

    public static void a(String str, File file, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar = e;
        cVar.a("action", "profile");
        cVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(d0.O() + valueOf));
        cVar.a("portrait", str, file);
        cVar.a().b(bVar);
    }

    public static void a(String str, String str2, String str3, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        if (str == null || str.length() <= 0) {
            c e = b.e();
            e.a("https://api.ifengyu.com");
            c cVar = e;
            cVar.a("action", "feedback");
            cVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
            cVar.a("message", str2);
            cVar.a(com.tencent.connect.common.Constants.PARAM_PLATFORM, "Android");
            cVar.a("feedback_object", str3);
            cVar.a("time", valueOf);
            cVar.a("sign", a0.b(d0.O() + valueOf));
            cVar.a().b(bVar);
            return;
        }
        c e2 = b.e();
        e2.a("https://api.ifengyu.com");
        c cVar2 = e2;
        cVar2.a("action", "feedback");
        cVar2.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        cVar2.a("email", str);
        cVar2.a("message", str2);
        cVar2.a(com.tencent.connect.common.Constants.PARAM_PLATFORM, "Android");
        cVar2.a("feedback_object", str3);
        cVar2.a("time", valueOf);
        cVar2.a("sign", a0.b(d0.O() + valueOf));
        cVar2.a().b(bVar);
    }

    public static void a(com.ifengyu.intercom.greendao.bean.b bVar, List<com.ifengyu.intercom.greendao.bean.c> list, b bVar2) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        for (int i = 0; i < list.size(); i++) {
            com.ifengyu.intercom.greendao.bean.c cVar = list.get(i);
            stringBuffer.append("[");
            stringBuffer.append("\"" + (cVar.f().intValue() / 1000000.0d) + "\",");
            stringBuffer.append("\"" + (((double) cVar.g().intValue()) / 1000000.0d) + "\",");
            stringBuffer.append("\"" + cVar.a() + "\",");
            stringBuffer.append("\"" + cVar.b() + "\",");
            stringBuffer.append("\"" + cVar.e() + "\"");
            if (i == list.size() - 1) {
                stringBuffer.append("]");
            } else {
                stringBuffer.append("],");
            }
        }
        stringBuffer.append("]");
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar2 = e;
        cVar2.a("action", "saveTrack");
        cVar2.a(AuthorizeActivityBase.KEY_USERID, bVar.A());
        cVar2.a("trackName", bVar.y());
        cVar2.a("city", bVar.g());
        cVar2.a("district", bVar.h());
        cVar2.a("totalDistance", String.valueOf(bVar.q()));
        cVar2.a("totalSeconds", String.valueOf(bVar.r()));
        cVar2.a("beginTime", String.valueOf(bVar.f()));
        cVar2.a("endTime", String.valueOf(bVar.j()));
        cVar2.a("speed", String.valueOf(bVar.d()));
        cVar2.a("alt", String.valueOf(bVar.c()));
        cVar2.a("maxAlt", String.valueOf(bVar.n()));
        cVar2.a("minAlt", String.valueOf(bVar.o()));
        cVar2.a("accruedClimb", String.valueOf(bVar.a()));
        cVar2.a("accruedDescent", String.valueOf(bVar.b()));
        cVar2.a("screenShot", bVar.v() + ".jpg", new File(bVar.w()));
        cVar2.a("track", stringBuffer.toString());
        cVar2.a("time", valueOf);
        cVar2.a("sign", a0.b(d0.O() + valueOf));
        cVar2.a().b(bVar2);
    }

    public static void a(String str, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar = e;
        cVar.a("action", "delTrack");
        cVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        cVar.a("trackId", str);
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(d0.O() + valueOf));
        cVar.a().b(bVar);
    }

    public static void a(String str, Integer num, Integer num2, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar = e;
        cVar.a("action", "queryTrack");
        cVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        if (str != null) {
            cVar.a("trackId", str);
        }
        if (num.intValue() > 0) {
            cVar.a("limit", String.valueOf(num));
        }
        if (num2.intValue() > 0) {
            cVar.a("offset", String.valueOf(num2));
        }
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(d0.O() + valueOf));
        cVar.a().b(bVar);
    }

    public static void a(b bVar) {
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a("https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=5&order=-first_published_at&fields=excerpt,header_image_url");
        c2.a().b(bVar);
    }

    public static void a(int i, int i2, b bVar) {
        String str = "https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=3&limit=" + i + "&offset=" + i2 + "&order=-first_published_at&fields=excerpt,header_image_url";
        com.ifengyu.intercom.g.c.a c2 = b.c();
        c2.a(str);
        c2.a().b(bVar);
    }

    public static void a(int i, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c e = b.e();
        e.a("https://api.ifengyu.com");
        c cVar = e;
        cVar.a("action", "delfeedback");
        cVar.a(AuthorizeActivityBase.KEY_USERID, d0.N());
        cVar.a("feedback_id", String.valueOf(i));
        cVar.a("time", valueOf);
        cVar.a("sign", a0.b(d0.O() + valueOf));
        cVar.a().b(bVar);
    }
}
