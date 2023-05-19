package com.ifengyu.intercom.p214p;

import android.annotation.SuppressLint;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.View;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p230d.HttpNormalCallBack;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.span.QMUITouchableSpan;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.p.j0 */
/* loaded from: classes2.dex */
public class UserPrivacyReportUtil {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserPrivacyReportUtil.java */
    /* renamed from: com.ifengyu.intercom.p.j0$a */
    /* loaded from: classes2.dex */
    public class C4150a extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ HttpNormalCallBack f14458a;

        C4150a(HttpNormalCallBack httpNormalCallBack) {
            this.f14458a = httpNormalCallBack;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            HttpNormalCallBack httpNormalCallBack = this.f14458a;
            if (httpNormalCallBack != null) {
                httpNormalCallBack.mo8716a(newApiException);
            }
        }
    }

    /* compiled from: UserPrivacyReportUtil.java */
    /* renamed from: com.ifengyu.intercom.p.j0$b */
    /* loaded from: classes2.dex */
    class C4151b extends QMUITouchableSpan {

        /* renamed from: k */
        final /* synthetic */ String f14459k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4151b(int i, int i2, int i3, int i4, String str) {
            super(i, i2, i3, i4);
            this.f14459k = str;
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11977b(1, String.valueOf(DeviceConstants.m11981b(this.f14459k))));
        }
    }

    /* compiled from: UserPrivacyReportUtil.java */
    /* renamed from: com.ifengyu.intercom.p.j0$c */
    /* loaded from: classes2.dex */
    class C4152c extends QMUITouchableSpan {

        /* renamed from: k */
        final /* synthetic */ String f14460k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4152c(int i, int i2, int i3, int i4, String str) {
            super(i, i2, i3, i4);
            this.f14460k = str;
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11977b(2, String.valueOf(DeviceConstants.m11981b(this.f14460k))));
        }
    }

    /* compiled from: UserPrivacyReportUtil.java */
    /* renamed from: com.ifengyu.intercom.p.j0$d */
    /* loaded from: classes2.dex */
    class C4153d extends QMUITouchableSpan {

        /* renamed from: k */
        final /* synthetic */ String f14461k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4153d(int i, int i2, int i3, int i4, String str) {
            super(i, i2, i3, i4);
            this.f14461k = str;
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11977b(1, String.valueOf(DeviceConstants.m11981b(this.f14461k))));
        }
    }

    /* compiled from: UserPrivacyReportUtil.java */
    /* renamed from: com.ifengyu.intercom.p.j0$e */
    /* loaded from: classes2.dex */
    class C4154e extends QMUITouchableSpan {

        /* renamed from: k */
        final /* synthetic */ String f14462k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4154e(int i, int i2, int i3, int i4, String str) {
            super(i, i2, i3, i4);
            this.f14462k = str;
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11977b(2, String.valueOf(DeviceConstants.m11981b(this.f14462k))));
        }
    }

    /* renamed from: a */
    public static void m11158a() {
        Map<String, Object> m11148k = m11148k();
        m11148k.put("type", "app");
        m11155d(m11148k);
    }

    /* renamed from: b */
    public static void m11157b(String str, String str2) {
        Map<String, Object> m11148k = m11148k();
        m11148k.put("type", str);
        m11148k.put("deviceSn", str2);
        m11155d(m11148k);
    }

    /* renamed from: c */
    public static void m11156c(long j) {
        Map<String, Object> m11148k = m11148k();
        m11148k.put("type", "mipoc");
        m11148k.put("deviceUid", Long.valueOf(j));
        m11155d(m11148k);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: d */
    private static void m11155d(Map<String, Object> map) {
        AppServiceClient.m11355a().m11406A(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(map).toString())).compose(Transformer.m8717a()).subscribe(C4146h.f14455a, C4149j.f14457a);
    }

    /* renamed from: e */
    public static void m11154e(HttpNormalCallBack httpNormalCallBack) {
        Map<String, Object> m11148k = m11148k();
        m11148k.put("type", "app");
        m11151h(m11148k, httpNormalCallBack);
    }

    /* renamed from: f */
    public static void m11153f(String str, String str2, HttpNormalCallBack httpNormalCallBack) {
        Map<String, Object> m11148k = m11148k();
        m11148k.put("type", str);
        m11148k.put("deviceSn", str2);
        m11151h(m11148k, httpNormalCallBack);
    }

    /* renamed from: g */
    public static void m11152g(long j, HttpNormalCallBack httpNormalCallBack) {
        Map<String, Object> m11148k = m11148k();
        m11148k.put("type", "mipoc");
        m11148k.put("deviceUid", Long.valueOf(j));
        m11151h(m11148k, httpNormalCallBack);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: h */
    private static void m11151h(Map<String, Object> map, final HttpNormalCallBack httpNormalCallBack) {
        AppServiceClient.m11355a().m11405B(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(map).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.p.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                UserPrivacyReportUtil.m11140s(HttpNormalCallBack.this, (NewHttpResult) obj);
            }
        }, new C4150a(httpNormalCallBack));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: i */
    public static void m11150i(String str) {
        Map<String, Object> m11148k = m11148k();
        m11148k.put("permissionName", str);
        AppServiceClient.m11355a().m11394M(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(m11148k).toString())).compose(Transformer.m8717a()).subscribe(C4144f.f14450a, C4149j.f14457a);
    }

    /* renamed from: j */
    private static String m11149j() {
        try {
            return MiTalkiApp.m14296h().getPackageManager().getPackageInfo(MiTalkiApp.m14296h().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: k */
    private static Map<String, Object> m11148k() {
        HashMap hashMap = new HashMap();
        hashMap.put("appVersion", m11149j());
        hashMap.put("did", MiTalkClientUtil.m11197n());
        String m11144o = m11144o();
        if (!TextUtils.isEmpty(m11144o)) {
            hashMap.put("miuiVersion", m11144o);
        }
        hashMap.put("sys", "Android");
        hashMap.put("sysVersion", Build.VERSION.RELEASE);
        return hashMap;
    }

    /* renamed from: l */
    private static String m11147l(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 108055:
                if (str.equals("mi3")) {
                    c = 0;
                    break;
                }
                break;
            case 3322030:
                if (str.equals("lite")) {
                    c = 1;
                    break;
                }
                break;
            case 3526141:
                if (str.equals("seal")) {
                    c = 2;
                    break;
                }
                break;
            case 103903016:
                if (str.equals("mipoc")) {
                    c = 3;
                    break;
                }
                break;
            case 109400037:
                if (str.equals("shark")) {
                    c = 4;
                    break;
                }
                break;
            case 1837070814:
                if (str.equals("dolphin")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return UIUtils.m8603o(R.string.device_xiaomi3_name);
            case 1:
                return UIUtils.m8603o(R.string.device_lite_name);
            case 2:
                return UIUtils.m8603o(R.string.device_seal_name);
            case 3:
                return UIUtils.m8603o(R.string.device_xiaomi3_4g_name);
            case 4:
                return UIUtils.m8603o(R.string.device_shark_name);
            case 5:
                return UIUtils.m8603o(R.string.device_dolphin_name);
            default:
                return "";
        }
    }

    /* renamed from: m */
    public static SpannableString m11146m(String str) {
        String m8603o = UIUtils.m8603o(R.string.lite_user_protocol_prefix);
        String m11147l = m11147l(str);
        String m8603o2 = UIUtils.m8603o(R.string.user_protocol_click);
        String m8603o3 = UIUtils.m8603o(R.string.privacy_center_space);
        String m8603o4 = UIUtils.m8603o(R.string.privacy_agreement_click);
        String str2 = m8603o + m11147l + m8603o2 + m8603o3 + m8603o4;
        SpannableString spannableString = new SpannableString(str2);
        C4151b c4151b = new C4151b(0, 0, 0, 0, str);
        c4151b.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4151b.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4151b, m8603o.length() + m11147l.length(), m8603o.length() + m11147l.length() + m8603o2.length(), 17);
        C4152c c4152c = new C4152c(0, 0, 0, 0, str);
        c4152c.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4152c.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4152c, str2.length() - m8603o4.length(), str2.length(), 17);
        return spannableString;
    }

    /* renamed from: n */
    public static SpannableString m11145n(String str) {
        String m11147l = m11147l(str);
        String m8603o = UIUtils.m8603o(R.string.user_protocol_click);
        String m8603o2 = UIUtils.m8603o(R.string.privacy_center_space);
        String m8603o3 = UIUtils.m8603o(R.string.privacy_agreement_click);
        String m8603o4 = UIUtils.m8603o(R.string.user_protocol_updated_suffix);
        SpannableString spannableString = new SpannableString(m11147l + m8603o + m8603o2 + m8603o3 + m8603o4);
        C4153d c4153d = new C4153d(0, 0, 0, 0, str);
        c4153d.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4153d.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4153d, m11147l.length(), m11147l.length() + m8603o.length(), 17);
        C4154e c4154e = new C4154e(0, 0, 0, 0, str);
        c4154e.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4154e.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4154e, m11147l.length() + m8603o.length() + m8603o2.length(), m11147l.length() + m8603o.length() + m8603o2.length() + m8603o3.length(), 17);
        return spannableString;
    }

    /* renamed from: o */
    private static String m11144o() {
        return m11143p("ro.miui.ui.version.name");
    }

    /* renamed from: p */
    private static String m11143p(String str) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
        } catch (IOException unused) {
            bufferedReader = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            try {
                bufferedReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return readLine;
        } catch (IOException unused2) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            throw th;
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: q */
    public static void m11142q(String str) {
        Map<String, Object> m11148k = m11148k();
        m11148k.put("permissionName", str);
        AppServiceClient.m11355a().m11368n(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(m11148k).toString())).compose(Transformer.m8717a()).subscribe(C4142d.f14439a, C4149j.f14457a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static /* synthetic */ void m11141r(NewHttpResult newHttpResult) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static /* synthetic */ void m11140s(HttpNormalCallBack httpNormalCallBack, NewHttpResult newHttpResult) throws Exception {
        if (httpNormalCallBack != null) {
            httpNormalCallBack.onSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static /* synthetic */ void m11139t(NewHttpResult newHttpResult) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static /* synthetic */ void m11138u(NewHttpResult newHttpResult) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public static /* synthetic */ Integer m11137v(String str, Integer num) throws Exception {
        DeviceDao mo14270E = AppDatabase.m14275G(MiTalkiApp.m14296h()).mo14270E();
        DeviceModel mo14239f = mo14270E.mo14239f(str);
        if (mo14239f != null) {
            mo14239f.setAgreedProtocolVersion(num.intValue());
            mo14270E.mo14237h(mo14239f);
        }
        return num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static /* synthetic */ void m11136w(Integer num) throws Exception {
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: x */
    public static void m11135x(int i, final String str) {
        Observable.just(Integer.valueOf(i)).map(new Function() { // from class: com.ifengyu.intercom.p.i
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Integer num = (Integer) obj;
                UserPrivacyReportUtil.m11137v(str, num);
                return num;
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(C4143e.f14448a, C4149j.f14457a);
    }
}
