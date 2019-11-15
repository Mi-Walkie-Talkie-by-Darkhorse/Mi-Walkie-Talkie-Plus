package com.ifengyu.intercom.a;

import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.support.v4.os.EnvironmentCompat;
import com.amap.api.services.district.DistrictSearchQuery;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.account.UserInfo;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.a.a.c;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.t;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.network.d;
import com.tencent.tauth.AuthActivity;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mistatistic.sdk.BaseService;
import java.io.File;
import java.util.List;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

/* compiled from: FengYuApi */
public class a {
    public static void a(int i, String str, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        String str2 = d.c;
        switch (i) {
            case 1:
                str2 = str2 + "/v2/user/mi";
                break;
            case 2:
                str2 = str2 + "/v2/user/wechat";
                break;
        }
        ((c) b.e().a(str2)).a(AuthActivity.ACTION_KEY, "login").a("code", str).a("os", "and").a(Values.TIME, valueOf).a("sign", t.a(valueOf)).a().b(bVar);
    }

    public static void a(double d, double d2, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        ((com.ifengyu.intercom.a.a.a) b.d().a(d.c)).a(AuthActivity.ACTION_KEY, "elevation").a("location", d + Constants.ACCEPT_TIME_SEPARATOR_SP + d2).a(AuthorizeActivityBase.KEY_USERID, w.K()).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().c(5000).a(3000).b(3000).b(bVar);
    }

    public static void a(String str, String str2, b bVar) {
        String L = w.L();
        String valueOf = String.valueOf(System.currentTimeMillis());
        ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "channelAct").a(AuthorizeActivityBase.KEY_USERID, str).a("deviceId", str2).a("activate", "1").a(Values.TIME, valueOf).a("sign", t.a(L + valueOf)).a().b(bVar);
    }

    public static void b(String str, String str2, b bVar) {
        String L = w.L();
        String valueOf = String.valueOf(System.currentTimeMillis());
        ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "channelAct").a(AuthorizeActivityBase.KEY_USERID, str).a("deviceId", str2).a("activate", "2").a(Values.TIME, valueOf).a("sign", t.a(L + valueOf)).a().b(bVar);
    }

    public static void a(String str, String str2, int i) {
        String str3;
        String K = w.K();
        String L = w.L();
        String valueOf = String.valueOf(System.currentTimeMillis());
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            sb.append((i / 16777216) % 256);
            sb.append(".");
            sb.append((i / 65536) % 256);
            sb.append(".");
            sb.append(i % 65536);
        }
        String str4 = EnvironmentCompat.MEDIA_UNKNOWN;
        try {
            str3 = MiTalkiApp.a().getPackageManager().getPackageInfo(ad.c(), 0).versionName;
        } catch (NameNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            str3 = str4;
        }
        ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "uploadInterphoneInfo").a(AuthorizeActivityBase.KEY_USERID, K).a("interphonetype", str).a("interphoneid", str2).a("activate", w.ag() ? "1" : "0").a("mcuversion", sb.toString()).a("appversion", str3).a("phonemodel", Build.MANUFACTURER + ":" + Build.MODEL).a("phonesys", "android").a("phonesysversion", VERSION.RELEASE).a(Values.TIME, valueOf).a("sign", t.a(L + valueOf)).a().b((b) null);
    }

    public static void a(String str, b bVar) {
        String string = w.b().getString(AuthorizeActivityBase.KEY_USERID, "");
        String valueOf = String.valueOf(System.currentTimeMillis());
        ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "userinfo").a(AuthorizeActivityBase.KEY_USERID, string).a("queryid", str).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar);
    }

    public static void a(b bVar) {
        ((com.ifengyu.intercom.a.a.a) b.d().a("https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=4&order=-first_published_at&limit=1")).a().b(bVar);
    }

    public static void a(int i, String str, String str2, String str3, String str4, b bVar) {
        String K = w.K();
        String valueOf = String.valueOf(System.currentTimeMillis());
        String L = w.L();
        switch (i) {
            case 1:
                ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "profile").a(AuthorizeActivityBase.KEY_USERID, K).a("nickname", str).a(Values.TIME, valueOf).a("sign", t.a(L + valueOf)).a().b(bVar);
                return;
            case 2:
                ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "profile").a(AuthorizeActivityBase.KEY_USERID, K).a(UserInfo.TYPE_PHONE, str2).a(Values.TIME, valueOf).a("sign", t.a(L + valueOf)).a().b(bVar);
                return;
            case 3:
                ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "profile").a(AuthorizeActivityBase.KEY_USERID, K).a("email", str3).a(Values.TIME, valueOf).a("sign", t.a(L + valueOf)).a().b(bVar);
                return;
            case 4:
                ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "profile").a(AuthorizeActivityBase.KEY_USERID, K).a("gender", str4).a(Values.TIME, valueOf).a("sign", t.a(L + valueOf)).a().b(bVar);
                return;
            default:
                return;
        }
    }

    public static void a(String str, File file, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "profile").a(AuthorizeActivityBase.KEY_USERID, w.K()).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a("portrait", str, file).a().b(bVar);
    }

    public static void a(String str, String str2, String str3, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        if (str == null || str.length() <= 0) {
            ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "feedback").a(AuthorizeActivityBase.KEY_USERID, w.K()).a("message", str2).a(com.tencent.connect.common.Constants.PARAM_PLATFORM, "Android").a("feedback_object", str3).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar);
        } else {
            ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "feedback").a(AuthorizeActivityBase.KEY_USERID, w.K()).a("email", str).a("message", str2).a(com.tencent.connect.common.Constants.PARAM_PLATFORM, "Android").a("feedback_object", str3).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar);
        }
    }

    public static void a(com.ifengyu.intercom.greendao.bean.b bVar, List<com.ifengyu.intercom.greendao.bean.c> list, b bVar2) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                com.ifengyu.intercom.greendao.bean.c cVar = (com.ifengyu.intercom.greendao.bean.c) list.get(i2);
                stringBuffer.append("[");
                stringBuffer.append("\"" + (((double) cVar.c().intValue()) / 1000000.0d) + "\",");
                stringBuffer.append("\"" + (((double) cVar.d().intValue()) / 1000000.0d) + "\",");
                stringBuffer.append("\"" + cVar.e() + "\",");
                stringBuffer.append("\"" + cVar.f() + "\",");
                stringBuffer.append("\"" + cVar.h() + "\"");
                if (i2 == list.size() - 1) {
                    stringBuffer.append("]");
                } else {
                    stringBuffer.append("],");
                }
                i = i2 + 1;
            } else {
                stringBuffer.append("]");
                ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "saveTrack").a(AuthorizeActivityBase.KEY_USERID, bVar.b()).a("trackName", bVar.f()).a(DistrictSearchQuery.KEYWORDS_CITY, bVar.l()).a(DistrictSearchQuery.KEYWORDS_DISTRICT, bVar.m()).a("totalDistance", String.valueOf(bVar.o())).a("totalSeconds", String.valueOf(bVar.n())).a("beginTime", String.valueOf(bVar.h())).a(BaseService.END_TIME, String.valueOf(bVar.i())).a("speed", String.valueOf(bVar.p())).a("alt", String.valueOf(bVar.q())).a("maxAlt", String.valueOf(bVar.r())).a("minAlt", String.valueOf(bVar.s())).a("accruedClimb", String.valueOf(bVar.t())).a("accruedDescent", String.valueOf(bVar.u())).a("screenShot", bVar.c() + ".jpg", new File(bVar.y())).a("track", stringBuffer.toString()).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar2);
                return;
            }
        }
    }

    public static void b(String str, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "delTrack").a(AuthorizeActivityBase.KEY_USERID, w.K()).a("trackId", str).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar);
    }

    public static void a(String str, Integer num, Integer num2, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c a = ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "queryTrack").a(AuthorizeActivityBase.KEY_USERID, w.K());
        if (str != null) {
            a.a("trackId", str);
        }
        if (num.intValue() > 0) {
            a.a("limit", String.valueOf(num));
        }
        if (num2.intValue() > 0) {
            a.a("offset", String.valueOf(num2));
        }
        a.a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar);
    }

    public static void b(b bVar) {
        String str;
        if (d.e.equals("https://cms.ifengyu.com")) {
            str = d.e + "/api/v1/pages/?type=puput.EntryPage&child_of=5&order=-first_published_at&fields=excerpt,header_image_url";
        } else {
            str = d.e + "/api/v1/pages/?type=puput.EntryPage&child_of=19&order=-first_published_at&fields=excerpt,header_image_url";
        }
        ((com.ifengyu.intercom.a.a.a) b.d().a(str)).a().b(bVar);
    }

    public static void a(int i, int i2, b bVar) {
        String str;
        if (d.e.equals("https://cms.ifengyu.com")) {
            str = d.e + "/api/v1/pages/?type=puput.EntryPage&child_of=3&limit=" + i + "&offset=" + i2 + "&order=-first_published_at&fields=excerpt,header_image_url";
        } else {
            str = d.e + "/api/v1/pages/?type=puput.EntryPage&child_of=18&limit=" + i + "&offset=" + i2 + "&order=-first_published_at&fields=excerpt,header_image_url";
        }
        ((com.ifengyu.intercom.a.a.a) b.d().a(str)).a().b(bVar);
    }

    public static void c(b bVar) {
        ((com.ifengyu.intercom.a.a.a) b.d().a(d.i)).a().b(bVar);
    }

    public static void b(double d, double d2, b bVar) {
        ((com.ifengyu.intercom.a.a.a) b.d().a("http://api.map.baidu.com/geocoder?location=" + d + Constants.ACCEPT_TIME_SEPARATOR_SP + d2 + "&output=json")).a().b(bVar);
    }

    public static void d(b bVar) {
        String str;
        String valueOf = String.valueOf(System.currentTimeMillis());
        String str2 = null;
        try {
            str = MiTalkiApp.a().getPackageManager().getPackageInfo(ad.c(), 0).versionName;
        } catch (NameNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            str = str2;
        }
        int s = w.s();
        StringBuilder sb = new StringBuilder();
        if (s > 0) {
            sb.append((s / 16777216) % 256);
            sb.append(".");
            sb.append((s / 65536) % 256);
            sb.append(".");
            sb.append(s % 65536);
        }
        s.c("SealMcuVersionName", sb.toString());
        s.c("url:", d.c + "/v2/version");
        ((com.ifengyu.intercom.a.a.a) b.d().a(d.c + "/v2/version")).a(AuthActivity.ACTION_KEY, "version").a("type", "seal").a(AuthorizeActivityBase.KEY_USERID, w.K()).a("lang", "zh_cn").a("appVersion", str).a("hwVersion", String.valueOf(w.r())).a("mcuVersion", sb.toString()).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar);
    }

    public static void e(b bVar) {
        String str;
        String valueOf = String.valueOf(System.currentTimeMillis());
        String str2 = null;
        try {
            str = MiTalkiApp.a().getPackageManager().getPackageInfo(ad.c(), 0).versionName;
        } catch (NameNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            str = str2;
        }
        int G = w.G();
        StringBuilder sb = new StringBuilder();
        if (G > 0) {
            sb.append((G / 16777216) % 256);
            sb.append(".");
            sb.append((G / 65536) % 256);
            sb.append(".");
            sb.append(G % 65536);
        }
        s.c("SharkMcuVersionName", sb.toString());
        s.c("url:", d.c + "/v2/version");
        ((com.ifengyu.intercom.a.a.a) b.d().a(d.c + "/v2/version")).a(AuthActivity.ACTION_KEY, "version").a("type", "shark").a(AuthorizeActivityBase.KEY_USERID, w.K()).a("lang", "zh_cn").a("appVersion", str).a("hwVersion", String.valueOf(w.F())).a("mcuVersion", sb.toString()).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar);
    }

    public static void b(int i, int i2, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        c a = ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "getfeedback").a(AuthorizeActivityBase.KEY_USERID, w.K()).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf));
        if (i > 0) {
            a.a("limit", String.valueOf(i));
        }
        if (i2 > 0) {
            a.a("offset", String.valueOf(i2));
        }
        a.a().b(bVar);
    }

    public static void a(int i, b bVar) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        ((c) b.e().a(d.c)).a(AuthActivity.ACTION_KEY, "delfeedback").a(AuthorizeActivityBase.KEY_USERID, w.K()).a("feedback_id", String.valueOf(i)).a(Values.TIME, valueOf).a("sign", t.a(w.L() + valueOf)).a().b(bVar);
    }
}
