package com.ifengyu.intercom.i;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.library.a.d;
import com.umeng.analytics.pro.ai;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.mipush.sdk.Constants;
import java.io.Closeable;
import java.io.IOException;
import org.osmdroid.tileprovider.modules.DatabaseFileArchive;

/* compiled from: MiTalkClientUtil.java */
/* loaded from: classes2.dex */
public class d0 {

    /* renamed from: a  reason: collision with root package name */
    public static int f5308a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static SharedPreferences f5309b;

    /* renamed from: c  reason: collision with root package name */
    private static SharedPreferences f5310c;
    private static SharedPreferences d;
    private static SharedPreferences e;
    private static SharedPreferences f;
    private static SharedPreferences g;
    private static SharedPreferences h;

    public static SharedPreferences A() {
        if (f == null) {
            f = MiTalkiApp.b().getSharedPreferences("sp_seal", 0);
        }
        return f;
    }

    public static int B() {
        return A().getInt("SEAL_SQ_LEVEL_IS_OPEN", 0);
    }

    public static int C() {
        return A().getInt("seal_version_hw", 0);
    }

    public static int D() {
        return A().getInt("seal_version_soft", 0);
    }

    public static int E() {
        return A().getInt("seal_vox_open_level", 0);
    }

    public static String F() {
        return I().getString("shark_device_id", null);
    }

    public static boolean G() {
        return I().getBoolean("shark_is_share_location", false);
    }

    public static int H() {
        return I().getInt("shark_vox_open_level", 1);
    }

    public static SharedPreferences I() {
        if (g == null) {
            g = MiTalkiApp.b().getSharedPreferences("sp_shark", 0);
        }
        return g;
    }

    public static int J() {
        return I().getInt("shark_version_hw", 0);
    }

    public static int K() {
        return I().getInt("shark_version_soft", 0);
    }

    public static String L() {
        return R().getString("email", "");
    }

    public static String M() {
        return R().getString("gender", null);
    }

    public static String N() {
        return R().getString(AuthorizeActivityBase.KEY_USERID, "");
    }

    public static String O() {
        return R().getString(DatabaseFileArchive.COLUMN_KEY, "");
    }

    public static String P() {
        return R().getString("nickname", "我");
    }

    public static String Q() {
        return R().getString("phone", "");
    }

    public static SharedPreferences R() {
        if (d == null) {
            d = MiTalkiApp.b().getSharedPreferences("sp_user", 0);
        }
        return d;
    }

    public static int S() {
        return A().getInt("seal_voice_type", 1);
    }

    public static boolean T() {
        return A().getBoolean("seal_mcu_had_alart_jifeng_btear_dialog", false);
    }

    public static boolean U() {
        return f().getBoolean("activateChannel", false);
    }

    public static boolean V() {
        return R().getBoolean("is_agree_app_privacy_old", false);
    }

    public static boolean W() {
        return d().getBoolean("is_copied_db", false);
    }

    public static boolean X() {
        return d().getBoolean("is_current_city_map_downloaded", false);
    }

    public static boolean Y() {
        return j().getBoolean("is_double_frequency_model", false);
    }

    public static boolean Z() {
        return j().getBoolean("is_public_loc_info", false);
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                z.a("MiTalkClientUtil", "closeCloseable exception:", e2);
            }
        }
    }

    public static boolean a0() {
        return j().getBoolean("is_sos_model", false);
    }

    public static void b() {
        j().edit().clear().apply();
        A().edit().clear().apply();
        I().edit().clear().apply();
        f((String) null);
        e((String) null);
    }

    public static boolean b0() {
        return R().getBoolean("is_join_improve_plan", false);
    }

    public static SharedPreferences c(String str) {
        MiTalkiApp b2 = MiTalkiApp.b();
        SharedPreferences sharedPreferences = b2.getSharedPreferences("sp_" + str.replace(Constants.COLON_SEPARATOR, ""), 0);
        f5310c = sharedPreferences;
        return sharedPreferences;
    }

    public static boolean c0() {
        return d().getBoolean("is_muli_guide_displayed", false);
    }

    public static SharedPreferences d() {
        if (f5309b == null) {
            f5309b = MiTalkiApp.b().getSharedPreferences("sp_app", 0);
        }
        return f5309b;
    }

    public static boolean d0() {
        return d().getBoolean("is_need_display_right_top_update_red_point", true);
    }

    public static void e(boolean z) {
        j().edit().putBoolean("is_double_frequency_model", z).apply();
    }

    public static boolean e0() {
        return A().getBoolean("seal_mcu_have_update", false);
    }

    public static SharedPreferences f() {
        if (h == null) {
            h = MiTalkiApp.b().getSharedPreferences("sp_device_general", 0);
        }
        return h;
    }

    public static boolean f0() {
        return I().getBoolean("shark_mcu_have_update", false);
    }

    public static void g(int i) {
        A().edit().putInt("seal_pw_save_mode", i).apply();
    }

    public static boolean g0() {
        return d().getBoolean("is_single_guide_displayed", false);
    }

    public static String h() {
        return j().getString("deviceId", null);
    }

    public static void h0() {
        d().edit().putBoolean("is_muli_guide_displayed", true).apply();
    }

    public static String i() {
        return j().getString("dolphin_language_type", "mcu_language_type_chinese");
    }

    public static void i0() {
        d().edit().putBoolean("is_single_guide_displayed", true).apply();
    }

    public static SharedPreferences j() {
        if (e == null) {
            e = MiTalkiApp.b().getSharedPreferences("sp_mitalki", 0);
        }
        return e;
    }

    public static int k() {
        return j().getInt("versionHW", -1);
    }

    public static int l() {
        return j().getInt("versionMCU", -1);
    }

    public static void m(String str) {
        A().edit().putString("seal_device_id", str).apply();
    }

    public static void n(String str) {
        A().edit().putString("seal_language_type", str).apply();
    }

    public static void o(int i) {
        A().edit().putInt("seal_voice_type", i).apply();
    }

    public static void p(String str) {
        I().edit().putString("shark_language_type", str).apply();
    }

    public static void q(boolean z) {
        I().edit().putBoolean("shark_mcu_have_update", z).apply();
    }

    public static double[] r() {
        return new double[]{Double.valueOf(d().getString("latitude_pre", "39.909142")).doubleValue(), Double.valueOf(d().getString("longtitude_pre", "116.397481")).doubleValue()};
    }

    public static double[] s() {
        return new double[]{Double.valueOf(d().getString("latitude_pre", "39.909142")).doubleValue(), Double.valueOf(d().getString("longtitude_pre", "116.397481")).doubleValue(), d().getInt("altitude_pre", 0)};
    }

    public static int t() {
        return A().getInt("seal_band", 0);
    }

    public static String u() {
        return A().getString("seal_device_id", null);
    }

    public static boolean v() {
        return A().getBoolean("seal_is_open_all_public", false);
    }

    public static boolean w() {
        return A().getBoolean("seal_is_open_voice_alert", false);
    }

    public static boolean x() {
        return A().getBoolean("seal_is_share_location", false);
    }

    public static boolean y() {
        return A().getBoolean("seal_polite_is_open", false);
    }

    public static int z() {
        return A().getInt("seal_pw_save_mode", 0);
    }

    public static void c() {
        R().edit().clear().apply();
    }

    public static String e() {
        return d().getString("current_city_name", null);
    }

    public static void g(boolean z) {
        A().edit().putBoolean("seal_mcu_had_alart_jifeng_btear_dialog", z).apply();
    }

    public static void h(int i) {
        A().edit().putInt("SEAL_SQ_LEVEL_IS_OPEN", i).apply();
    }

    public static void i(int i) {
        A().edit().putInt("seal_version_hw", i).apply();
    }

    public static void k(String str) {
        j().edit().putString("dolphin_language_type", str).apply();
    }

    public static void l(boolean z) {
        A().edit().putBoolean("seal_is_open_voice_alert", z).apply();
    }

    public static void m(boolean z) {
        A().edit().putBoolean("seal_is_share_location", z).apply();
    }

    public static void n(boolean z) {
        A().edit().putBoolean("seal_mcu_have_update", z).apply();
    }

    public static void o(boolean z) {
        A().edit().putBoolean("seal_polite_is_open", z).apply();
    }

    public static void p(boolean z) {
        I().edit().putBoolean("shark_is_share_location", z).apply();
    }

    public static String q() {
        return f().getString("pre_selected_device_name", null);
    }

    public static void a() {
        j().edit().clear().apply();
        A().edit().clear().apply();
        I().edit().clear().apply();
        i(true);
    }

    public static void c(boolean z) {
        R().edit().putBoolean("is_agree_app_privacy_old", z).apply();
    }

    public static void e(int i) {
        f().edit().putInt(ai.ai, i).apply();
    }

    public static void g(String str) {
        R().edit().putString("email", str).apply();
    }

    public static void h(String str) {
        R().edit().putString("gender", str).apply();
    }

    public static void i(String str) {
        R().edit().putString("nickname", str).apply();
    }

    public static void k(boolean z) {
        A().edit().putBoolean("seal_is_open_all_public", z).apply();
    }

    public static void l(int i) {
        I().edit().putInt("shark_vox_open_level", i).apply();
    }

    public static void m(int i) {
        I().edit().putInt("shark_version_hw", i).apply();
    }

    public static void n(int i) {
        I().edit().putInt("shark_version_soft", i).apply();
    }

    public static void o(String str) {
        I().edit().putString("shark_device_id", str).apply();
    }

    public static String p() {
        return f().getString("pre_selected_device_address", null);
    }

    public static void c(int i) {
        d().edit().putInt("map_type", i).apply();
    }

    public static void d(int i) {
        A().edit().putInt("seal_bt_audio_state", i).apply();
    }

    public static void e(String str) {
        f().edit().putString("pre_selected_device_address", str).apply();
    }

    public static void f(boolean z) {
        j().edit().putBoolean("is_public_loc_info", z).apply();
    }

    public static int g() {
        return f().getInt(ai.ai, 0);
    }

    public static void h(boolean z) {
        R().edit().putBoolean("is_join_improve_plan", z).apply();
    }

    public static void i(boolean z) {
        d().edit().putBoolean("is_need_display_right_top_update_red_point", z).apply();
    }

    public static void j(int i) {
        A().edit().putInt("seal_version_soft", i).apply();
    }

    public static void k(int i) {
        A().edit().putInt("seal_vox_open_level", i).apply();
    }

    public static void l(String str) {
        d().edit().putString("phone_device_id", str).apply();
    }

    public static long m() {
        return d().getLong("last_track_primary_key_id", -1L);
    }

    public static int n() {
        return d().getInt("map_type", 1);
    }

    public static String o() {
        String string = d().getString("phone_device_id", "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String b2 = d.b(MiTalkiApp.b());
        l(b2);
        return b2;
    }

    public static void d(String str) {
        d().edit().putString("current_city_name", str).apply();
    }

    public static void f(int i) {
        A().edit().putInt("seal_band", i).apply();
    }

    public static void j(boolean z) {
        A().edit().putBoolean("seal_elim_is_open", z).apply();
    }

    public static void b(int i) {
        j().edit().putInt("versionMCU", i).apply();
    }

    public static void d(boolean z) {
        d().edit().putBoolean("is_copied_db", z).apply();
    }

    public static void f(String str) {
        f().edit().putString("pre_selected_device_name", str).apply();
    }

    public static void j(String str) {
        R().edit().putString("phone", str).apply();
    }

    public static boolean a(int i) {
        return R().getBoolean(String.format("is_%s_agree_privacy", Integer.valueOf(i)), false);
    }

    public static int b(String str) {
        return R().getInt(String.format("privacy_type_%s_version", str), 1);
    }

    public static void a(int i, boolean z) {
        R().edit().putBoolean(String.format("is_%s_agree_privacy", Integer.valueOf(i)), z).apply();
    }

    public static void b(boolean z) {
        d().edit().putBoolean("is_current_city_map_downloaded", z).apply();
    }

    public static void a(String str, int i) {
        if (i < 1) {
            i = 1;
        }
        R().edit().putInt(String.format("privacy_type_%s_version", str), i).apply();
    }

    public static void a(String str, long j) {
        c(str).edit().putLong("loc_interval", j).apply();
    }

    public static long a(String str) {
        if (str != null) {
            return c(str).getLong("loc_interval", 180000L);
        }
        return 180000L;
    }

    public static void a(long j) {
        d().edit().putLong("last_track_primary_key_id", j).apply();
    }

    public static void a(double d2, double d3) {
        SharedPreferences.Editor edit = d().edit();
        edit.putString("latitude_pre", String.valueOf(d2));
        edit.putString("longtitude_pre", String.valueOf(d3));
        edit.apply();
    }

    public static void a(double d2, double d3, int i) {
        SharedPreferences.Editor edit = d().edit();
        edit.putString("latitude_pre", String.valueOf(d2));
        edit.putString("longtitude_pre", String.valueOf(d3));
        edit.putInt("altitude_pre", i);
        edit.apply();
    }

    public static void a(boolean z) {
        f().edit().putBoolean("activateChannel", z).apply();
    }
}
