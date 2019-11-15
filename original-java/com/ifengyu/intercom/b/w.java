package com.ifengyu.intercom.b;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ifengyu.im.account.UserInfo;
import com.ifengyu.intercom.MiTalkiApp;
import com.mi.milinkforgame.sdk.data.Const.Service;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: MiTalkClientUtil */
public class w {
    public static int a = 1;
    private static SharedPreferences b;
    private static SharedPreferences c;
    private static SharedPreferences d;
    private static SharedPreferences e;
    private static SharedPreferences f;
    private static SharedPreferences g;
    private static SharedPreferences h;

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                s.b("MiTalkClientUtil", "closeCloseable exception:", e2);
            }
        }
    }

    public static SharedPreferences a() {
        if (b == null) {
            b = MiTalkiApp.a().getSharedPreferences("sp_app", 0);
        }
        return b;
    }

    public static SharedPreferences a(String str) {
        c = MiTalkiApp.a().getSharedPreferences("sp_" + str.replace(":", ""), 0);
        return c;
    }

    public static SharedPreferences b() {
        if (d == null) {
            d = MiTalkiApp.a().getSharedPreferences("sp_user", 0);
        }
        return d;
    }

    public static SharedPreferences c() {
        if (e == null) {
            e = MiTalkiApp.a().getSharedPreferences("sp_mitalki", 0);
        }
        return e;
    }

    public static SharedPreferences d() {
        if (f == null) {
            f = MiTalkiApp.a().getSharedPreferences("sp_seal", 0);
        }
        return f;
    }

    public static SharedPreferences e() {
        if (g == null) {
            g = MiTalkiApp.a().getSharedPreferences("sp_shark", 0);
        }
        return g;
    }

    public static SharedPreferences f() {
        if (h == null) {
            h = MiTalkiApp.a().getSharedPreferences("sp_device_general", 0);
        }
        return h;
    }

    public static void g() {
        c().edit().clear().apply();
        d().edit().clear().apply();
        e().edit().clear().apply();
        m((String) null);
        n((String) null);
    }

    public static void h() {
        c().edit().clear().apply();
        d().edit().clear().apply();
        e().edit().clear().apply();
        o(true);
    }

    public static void i() {
        b().edit().clear().apply();
    }

    public static boolean j() {
        return c().getBoolean("is_public_loc_info", false);
    }

    public static void a(boolean z) {
        c().edit().putBoolean("is_public_loc_info", z).apply();
    }

    public static boolean k() {
        return c().getBoolean("is_double_frequency_model", false);
    }

    public static void b(boolean z) {
        c().edit().putBoolean("is_double_frequency_model", z).apply();
    }

    public static int l() {
        return c().getInt("versionMCU", -1);
    }

    public static void a(int i) {
        c().edit().putInt("versionMCU", i).apply();
    }

    public static int m() {
        return c().getInt("versionHW", -1);
    }

    public static boolean n() {
        return c().getBoolean("is_sos_model", false);
    }

    public static String o() {
        return c().getString("deviceId", null);
    }

    public static String p() {
        return c().getString("dolphin_language_type", "mcu_language_type_chinese");
    }

    public static void b(String str) {
        c().edit().putString("dolphin_language_type", str).apply();
    }

    public static String q() {
        return d().getString("seal_device_id", null);
    }

    public static void c(String str) {
        d().edit().putString("seal_device_id", str).apply();
    }

    public static void d(String str) {
        d().edit().putString("seal_language_type", str).apply();
    }

    public static int r() {
        return d().getInt("seal_version_hw", 0);
    }

    public static void b(int i) {
        d().edit().putInt("seal_version_hw", i).apply();
    }

    public static int s() {
        return d().getInt("seal_version_soft", 0);
    }

    public static void c(int i) {
        d().edit().putInt("seal_version_soft", i).apply();
    }

    public static boolean t() {
        return d().getBoolean("seal_is_share_location", false);
    }

    public static void c(boolean z) {
        d().edit().putBoolean("seal_is_share_location", z).apply();
    }

    public static void d(int i) {
        d().edit().putInt("seal_bt_audio_state", i).apply();
    }

    public static boolean u() {
        return d().getBoolean("seal_is_open_voice_alert", false);
    }

    public static void d(boolean z) {
        d().edit().putBoolean("seal_is_open_voice_alert", z).apply();
    }

    public static boolean v() {
        return d().getBoolean("seal_is_open_all_public", false);
    }

    public static void e(boolean z) {
        d().edit().putBoolean("seal_is_open_all_public", z).apply();
    }

    public static int w() {
        return d().getInt("seal_pw_save_mode", 0);
    }

    public static void e(int i) {
        d().edit().putInt("seal_pw_save_mode", i).apply();
    }

    public static int x() {
        return d().getInt("seal_voice_type", 1);
    }

    public static void f(int i) {
        d().edit().putInt("seal_voice_type", i).apply();
    }

    public static int y() {
        return d().getInt("seal_vox_open_level", 0);
    }

    public static void g(int i) {
        d().edit().putInt("seal_vox_open_level", i).apply();
    }

    public static int z() {
        return d().getInt("SEAL_SQ_LEVEL_IS_OPEN", 0);
    }

    public static void h(int i) {
        d().edit().putInt("SEAL_SQ_LEVEL_IS_OPEN", i).apply();
    }

    public static void f(boolean z) {
        d().edit().putBoolean("seal_elim_is_open", z).apply();
    }

    public static int A() {
        return d().getInt("seal_band", 0);
    }

    public static void i(int i) {
        d().edit().putInt("seal_band", i).apply();
    }

    public static boolean B() {
        return d().getBoolean("seal_polite_is_open", false);
    }

    public static void g(boolean z) {
        d().edit().putBoolean("seal_polite_is_open", z).apply();
    }

    public static boolean C() {
        return d().getBoolean("seal_mcu_have_update", false);
    }

    public static void h(boolean z) {
        d().edit().putBoolean("seal_mcu_have_update", z).apply();
    }

    public static boolean D() {
        return d().getBoolean("seal_mcu_had_alart_jifeng_btear_dialog", false);
    }

    public static void i(boolean z) {
        d().edit().putBoolean("seal_mcu_had_alart_jifeng_btear_dialog", z).apply();
    }

    public static String E() {
        return e().getString("shark_device_id", null);
    }

    public static void e(String str) {
        e().edit().putString("shark_device_id", str).apply();
    }

    public static void f(String str) {
        e().edit().putString("shark_language_type", str).apply();
    }

    public static int F() {
        return e().getInt("shark_version_hw", 0);
    }

    public static void j(int i) {
        e().edit().putInt("shark_version_hw", i).apply();
    }

    public static int G() {
        return e().getInt("shark_version_soft", 0);
    }

    public static void k(int i) {
        e().edit().putInt("shark_version_soft", i).apply();
    }

    public static boolean H() {
        return e().getBoolean("shark_is_share_location", false);
    }

    public static void j(boolean z) {
        e().edit().putBoolean("shark_is_share_location", z).apply();
    }

    public static int I() {
        return e().getInt("shark_vox_open_level", 1);
    }

    public static void l(int i) {
        e().edit().putInt("shark_vox_open_level", i).apply();
    }

    public static boolean J() {
        return e().getBoolean("shark_mcu_have_update", false);
    }

    public static void k(boolean z) {
        e().edit().putBoolean("shark_mcu_have_update", z).apply();
    }

    public static String K() {
        return b().getString(AuthorizeActivityBase.KEY_USERID, "");
    }

    public static String L() {
        return b().getString("key", "");
    }

    public static String M() {
        return b().getString("nickname", "我");
    }

    public static void g(String str) {
        b().edit().putString("nickname", str).apply();
    }

    public static String N() {
        return b().getString("gender", null);
    }

    public static void h(String str) {
        b().edit().putString("gender", str).apply();
    }

    public static String O() {
        return b().getString(UserInfo.TYPE_PHONE, "");
    }

    public static void i(String str) {
        b().edit().putString(UserInfo.TYPE_PHONE, str).apply();
    }

    public static String P() {
        return b().getString("email", "");
    }

    public static void j(String str) {
        b().edit().putString("email", str).apply();
    }

    public static boolean Q() {
        return a().getBoolean("is_login_msg_server_success", false);
    }

    public static void l(boolean z) {
        a().edit().putBoolean("is_login_msg_server_success", z).apply();
    }

    public static boolean R() {
        return a().getBoolean("is_single_guide_displayed", false);
    }

    public static void S() {
        a().edit().putBoolean("is_single_guide_displayed", true).apply();
    }

    public static boolean T() {
        return a().getBoolean("is_muli_guide_displayed", false);
    }

    public static void U() {
        a().edit().putBoolean("is_muli_guide_displayed", true).apply();
    }

    public static void a(String str, long j) {
        a(str).edit().putLong("loc_interval", j).apply();
    }

    public static long k(String str) {
        if (str != null) {
            return a(str).getLong("loc_interval", Service.DefHeartBeatInterval);
        }
        return Service.DefHeartBeatInterval;
    }

    public static String V() {
        return a().getString("current_city_name", null);
    }

    public static void l(String str) {
        a().edit().putString("current_city_name", str).apply();
    }

    public static void a(long j) {
        a().edit().putLong("last_track_primary_key_id", j).apply();
    }

    public static long W() {
        return a().getLong("last_track_primary_key_id", -1);
    }

    public static int X() {
        return a().getInt("map_type", 1);
    }

    public static void m(int i) {
        a().edit().putInt("map_type", i).apply();
    }

    public static void a(double d2, double d3) {
        Editor edit = a().edit();
        edit.putString("latitude_pre", String.valueOf(d2));
        edit.putString("longtitude_pre", String.valueOf(d3));
        edit.apply();
    }

    public static void a(double d2, double d3, int i) {
        Editor edit = a().edit();
        edit.putString("latitude_pre", String.valueOf(d2));
        edit.putString("longtitude_pre", String.valueOf(d3));
        edit.putInt("altitude_pre", i);
        edit.apply();
    }

    public static double[] Y() {
        return new double[]{Double.valueOf(a().getString("latitude_pre", "39.909142")).doubleValue(), Double.valueOf(a().getString("longtitude_pre", "116.397481")).doubleValue()};
    }

    public static double[] Z() {
        return new double[]{Double.valueOf(a().getString("latitude_pre", "39.909142")).doubleValue(), Double.valueOf(a().getString("longtitude_pre", "116.397481")).doubleValue(), (double) a().getInt("altitude_pre", 0)};
    }

    public static boolean aa() {
        return a().getBoolean("is_current_city_map_downloaded", false);
    }

    public static void m(boolean z) {
        a().edit().putBoolean("is_current_city_map_downloaded", z).apply();
    }

    public static boolean ab() {
        return a().getBoolean("is_join_improve_plan", true);
    }

    public static void n(boolean z) {
        a().edit().putBoolean("is_join_improve_plan", z).apply();
    }

    public static boolean ac() {
        return a().getBoolean("is_need_display_right_top_update_red_point", true);
    }

    public static void o(boolean z) {
        a().edit().putBoolean("is_need_display_right_top_update_red_point", z).apply();
    }

    public static int ad() {
        return f().getInt("device_type", 1);
    }

    public static void n(int i) {
        f().edit().putInt("device_type", i).apply();
    }

    public static String ae() {
        return f().getString("pre_selected_device_name", null);
    }

    public static void m(String str) {
        f().edit().putString("pre_selected_device_name", str).apply();
    }

    public static String af() {
        return f().getString("pre_selected_device_address", null);
    }

    public static void n(String str) {
        f().edit().putString("pre_selected_device_address", str).apply();
    }

    public static boolean ag() {
        return f().getBoolean("activateChannel", false);
    }

    public static void p(boolean z) {
        f().edit().putBoolean("activateChannel", z).apply();
    }
}
