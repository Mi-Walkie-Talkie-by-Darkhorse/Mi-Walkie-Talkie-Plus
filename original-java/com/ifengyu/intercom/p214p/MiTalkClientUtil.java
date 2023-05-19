package com.ifengyu.intercom.p214p;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.library.utils.DeviceIdUtil;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.mipush.sdk.Constants;

/* renamed from: com.ifengyu.intercom.p.d0 */
/* loaded from: classes2.dex */
public class MiTalkClientUtil {

    /* renamed from: a */
    public static int f14440a = 1;

    /* renamed from: b */
    private static SharedPreferences f14441b;

    /* renamed from: c */
    private static SharedPreferences f14442c;

    /* renamed from: d */
    private static SharedPreferences f14443d;

    /* renamed from: e */
    private static SharedPreferences f14444e;

    /* renamed from: f */
    private static SharedPreferences f14445f;

    /* renamed from: g */
    private static SharedPreferences f14446g;

    /* renamed from: h */
    private static SharedPreferences f14447h;

    /* renamed from: A */
    public static int m11273A() {
        return m11271B().getInt("seal_pw_save_mode", 0);
    }

    /* renamed from: A0 */
    public static void m11272A0(int i) {
        m11213f().edit().putInt(UMCommonContent.f19381ai, i).apply();
    }

    /* renamed from: B */
    public static SharedPreferences m11271B() {
        if (f14445f == null) {
            f14445f = MiTalkiApp.m14296h().getSharedPreferences("sp_seal", 0);
        }
        return f14445f;
    }

    /* renamed from: B0 */
    public static void m11270B0(String str, int i) {
        if (i < 1) {
            i = 1;
        }
        m11235T().edit().putInt(String.format("privacy_type_%s_version", str), i).apply();
    }

    /* renamed from: C */
    public static int m11269C() {
        return m11271B().getInt("SEAL_SQ_LEVEL_IS_OPEN", 0);
    }

    /* renamed from: C0 */
    public static void m11268C0(int i) {
        m11271B().edit().putInt("seal_band", i).apply();
    }

    /* renamed from: D */
    public static int m11267D() {
        return m11271B().getInt("seal_version_hw", 0);
    }

    /* renamed from: D0 */
    public static void m11266D0(String str) {
        m11271B().edit().putString("seal_device_id", str).apply();
    }

    /* renamed from: E */
    public static int m11265E() {
        return m11271B().getInt("seal_version_soft", 0);
    }

    /* renamed from: E0 */
    public static void m11264E0(boolean z) {
        m11271B().edit().putBoolean("seal_elim_is_open", z).apply();
    }

    /* renamed from: F */
    public static int m11263F() {
        return m11271B().getInt("seal_vox_open_level", 0);
    }

    /* renamed from: F0 */
    public static void m11262F0(boolean z) {
        m11271B().edit().putBoolean("seal_is_open_all_public", z).apply();
    }

    /* renamed from: G */
    public static String m11261G() {
        return m11255J().getString("shark_device_id", null);
    }

    /* renamed from: G0 */
    public static void m11260G0(boolean z) {
        m11271B().edit().putBoolean("seal_is_open_voice_alert", z).apply();
    }

    /* renamed from: H */
    public static boolean m11259H() {
        return m11255J().getBoolean("shark_is_share_location", false);
    }

    /* renamed from: H0 */
    public static void m11258H0(boolean z) {
        m11271B().edit().putBoolean("seal_is_share_location", z).apply();
    }

    /* renamed from: I */
    public static int m11257I() {
        return m11255J().getInt("shark_vox_open_level", 1);
    }

    /* renamed from: I0 */
    public static void m11256I0(String str) {
        m11271B().edit().putString("seal_language_type", str).apply();
    }

    /* renamed from: J */
    public static SharedPreferences m11255J() {
        if (f14446g == null) {
            f14446g = MiTalkiApp.m14296h().getSharedPreferences("sp_shark", 0);
        }
        return f14446g;
    }

    /* renamed from: J0 */
    public static void m11254J0(boolean z) {
        m11271B().edit().putBoolean("seal_mcu_have_update", z).apply();
    }

    /* renamed from: K */
    public static int m11253K() {
        return m11255J().getInt("shark_version_hw", 0);
    }

    /* renamed from: K0 */
    public static void m11252K0(boolean z) {
        m11271B().edit().putBoolean("seal_polite_is_open", z).apply();
    }

    /* renamed from: L */
    public static int m11251L() {
        return m11255J().getInt("shark_version_soft", 0);
    }

    /* renamed from: L0 */
    public static void m11250L0(int i) {
        m11271B().edit().putInt("seal_pw_save_mode", i).apply();
    }

    /* renamed from: M */
    public static SharedPreferences m11249M(String str) {
        MiTalkiApp m14296h = MiTalkiApp.m14296h();
        SharedPreferences sharedPreferences = m14296h.getSharedPreferences("sp_" + str.replace(Constants.COLON_SEPARATOR, ""), 0);
        f14442c = sharedPreferences;
        return sharedPreferences;
    }

    /* renamed from: M0 */
    public static void m11248M0(int i) {
        m11271B().edit().putInt("SEAL_SQ_LEVEL_IS_OPEN", i).apply();
    }

    /* renamed from: N */
    public static String m11247N() {
        return m11235T().getString("email", "");
    }

    /* renamed from: N0 */
    public static void m11246N0(int i) {
        m11271B().edit().putInt("seal_version_hw", i).apply();
    }

    /* renamed from: O */
    public static int m11245O() {
        return m11235T().getInt("gender", 0);
    }

    /* renamed from: O0 */
    public static void m11244O0(int i) {
        m11271B().edit().putInt("seal_version_soft", i).apply();
    }

    /* renamed from: P */
    public static String m11243P() {
        return m11235T().getString(AuthorizeActivityBase.KEY_USERID, "");
    }

    /* renamed from: P0 */
    public static void m11242P0(int i) {
        m11271B().edit().putInt("seal_vox_open_level", i).apply();
    }

    /* renamed from: Q */
    public static String m11241Q() {
        return m11235T().getString("key", "");
    }

    /* renamed from: Q0 */
    public static void m11240Q0(String str) {
        m11255J().edit().putString("shark_device_id", str).apply();
    }

    /* renamed from: R */
    public static String m11239R() {
        return m11235T().getString("nickname", "我");
    }

    /* renamed from: R0 */
    public static void m11238R0(boolean z) {
        m11255J().edit().putBoolean("shark_is_share_location", z).apply();
    }

    /* renamed from: S */
    public static String m11237S() {
        return m11235T().getString("phone", "");
    }

    /* renamed from: S0 */
    public static void m11236S0(String str) {
        m11255J().edit().putString("shark_language_type", str).apply();
    }

    /* renamed from: T */
    public static SharedPreferences m11235T() {
        if (f14443d == null) {
            f14443d = MiTalkiApp.m14296h().getSharedPreferences("sp_user", 0);
        }
        return f14443d;
    }

    /* renamed from: T0 */
    public static void m11234T0(boolean z) {
        m11255J().edit().putBoolean("shark_mcu_have_update", z).apply();
    }

    /* renamed from: U */
    public static int m11233U() {
        return m11271B().getInt("seal_voice_type", 1);
    }

    /* renamed from: U0 */
    public static void m11232U0(int i) {
        m11255J().edit().putInt("shark_vox_open_level", i).apply();
    }

    /* renamed from: V */
    public static boolean m11231V() {
        return m11271B().getBoolean("seal_mcu_had_alart_jifeng_btear_dialog", false);
    }

    /* renamed from: V0 */
    public static void m11230V0(int i) {
        m11255J().edit().putInt("shark_version_hw", i).apply();
    }

    /* renamed from: W */
    public static boolean m11229W() {
        return m11235T().getBoolean("is_agreed_app_privacy", false);
    }

    /* renamed from: W0 */
    public static void m11228W0(int i) {
        m11255J().edit().putInt("shark_version_soft", i).apply();
    }

    /* renamed from: X */
    public static boolean m11227X() {
        return m11217d().getBoolean("is_current_city_map_downloaded", false);
    }

    /* renamed from: X0 */
    public static void m11226X0(int i) {
        m11271B().edit().putInt("seal_voice_type", i).apply();
    }

    /* renamed from: Y */
    public static boolean m11225Y() {
        return m11207i().getBoolean("is_double_frequency_model", false);
    }

    /* renamed from: Z */
    public static boolean m11224Z() {
        return m11207i().getBoolean("is_public_loc_info", false);
    }

    /* renamed from: a */
    public static void m11223a() {
        m11207i().edit().clear().apply();
        m11271B().edit().clear().apply();
        m11255J().edit().clear().apply();
        m11176x0(true);
    }

    /* renamed from: a0 */
    public static boolean m11222a0() {
        return m11207i().getBoolean("is_sos_model", false);
    }

    /* renamed from: b */
    public static void m11221b() {
        m11207i().edit().clear().apply();
        m11271B().edit().clear().apply();
        m11255J().edit().clear().apply();
        m11204j0(null);
        m11206i0(null);
    }

    /* renamed from: b0 */
    public static boolean m11220b0() {
        return m11235T().getBoolean("is_join_improve_plan", false);
    }

    /* renamed from: c */
    public static void m11219c() {
        m11235T().edit().clear().apply();
    }

    /* renamed from: c0 */
    public static boolean m11218c0() {
        return m11217d().getBoolean("is_need_display_right_top_update_red_point", true);
    }

    /* renamed from: d */
    public static SharedPreferences m11217d() {
        if (f14441b == null) {
            f14441b = MiTalkiApp.m14296h().getSharedPreferences("sp_app", 0);
        }
        return f14441b;
    }

    /* renamed from: d0 */
    public static boolean m11216d0() {
        return m11271B().getBoolean("seal_mcu_have_update", false);
    }

    /* renamed from: e */
    public static String m11215e() {
        return m11217d().getString("current_city_name", null);
    }

    /* renamed from: e0 */
    public static boolean m11214e0() {
        return m11255J().getBoolean("shark_mcu_have_update", false);
    }

    /* renamed from: f */
    public static SharedPreferences m11213f() {
        if (f14447h == null) {
            f14447h = MiTalkiApp.m14296h().getSharedPreferences("sp_device_general", 0);
        }
        return f14447h;
    }

    /* renamed from: f0 */
    public static void m11212f0(int i) {
        m11207i().edit().putInt("versionMCU", i).apply();
    }

    /* renamed from: g */
    public static String m11211g() {
        return m11207i().getString("deviceId", null);
    }

    /* renamed from: g0 */
    public static void m11210g0(boolean z) {
        m11217d().edit().putBoolean("is_current_city_map_downloaded", z).apply();
    }

    /* renamed from: h */
    public static String m11209h() {
        return m11207i().getString("dolphin_language_type", "mcu_language_type_chinese");
    }

    /* renamed from: h0 */
    public static void m11208h0(int i) {
        m11217d().edit().putInt("map_type", i).apply();
    }

    /* renamed from: i */
    public static SharedPreferences m11207i() {
        if (f14444e == null) {
            f14444e = MiTalkiApp.m14296h().getSharedPreferences("sp_mitalki", 0);
        }
        return f14444e;
    }

    /* renamed from: i0 */
    public static void m11206i0(String str) {
        m11213f().edit().putString("pre_selected_device_address", str).apply();
    }

    /* renamed from: j */
    public static int m11205j() {
        return m11207i().getInt("versionHW", -1);
    }

    /* renamed from: j0 */
    public static void m11204j0(String str) {
        m11213f().edit().putString("pre_selected_device_name", str).apply();
    }

    /* renamed from: k */
    public static int m11203k() {
        return m11207i().getInt("versionMCU", -1);
    }

    /* renamed from: k0 */
    public static void m11202k0(double d, double d2) {
        SharedPreferences.Editor edit = m11217d().edit();
        edit.putString("latitude_pre", String.valueOf(d));
        edit.putString("longtitude_pre", String.valueOf(d2));
        edit.apply();
    }

    /* renamed from: l */
    public static long m11201l(String str) {
        if (str != null) {
            return m11249M(str).getLong("loc_interval", 180000L);
        }
        return 180000L;
    }

    /* renamed from: l0 */
    public static void m11200l0(double d, double d2, int i) {
        SharedPreferences.Editor edit = m11217d().edit();
        edit.putString("latitude_pre", String.valueOf(d));
        edit.putString("longtitude_pre", String.valueOf(d2));
        edit.putInt("altitude_pre", i);
        edit.apply();
    }

    /* renamed from: m */
    public static int m11199m() {
        return m11217d().getInt("map_type", 1);
    }

    /* renamed from: m0 */
    public static void m11198m0(int i) {
        m11271B().edit().putInt("seal_bt_audio_state", i).apply();
    }

    /* renamed from: n */
    public static String m11197n() {
        String string = m11217d().getString("phone_device_id", "");
        if (TextUtils.isEmpty(string)) {
            String m8679c = DeviceIdUtil.m8679c(MiTalkiApp.m14296h());
            m11172z0(m8679c);
            return m8679c;
        }
        return string;
    }

    /* renamed from: n0 */
    public static void m11196n0(String str) {
        m11235T().edit().putString("email", str).apply();
    }

    /* renamed from: o */
    public static String m11195o() {
        return m11213f().getString("pre_selected_device_address", null);
    }

    /* renamed from: o0 */
    public static void m11194o0(int i) {
        m11235T().edit().putInt("gender", i).apply();
    }

    /* renamed from: p */
    public static String m11193p() {
        return m11213f().getString("pre_selected_device_name", null);
    }

    /* renamed from: p0 */
    public static void m11192p0(String str) {
        m11235T().edit().putString("nickname", str).apply();
    }

    /* renamed from: q */
    public static int m11191q() {
        return m11213f().getInt(UMCommonContent.f19381ai, 0);
    }

    /* renamed from: q0 */
    public static void m11190q0(String str) {
        m11235T().edit().putString("phone", str).apply();
    }

    /* renamed from: r */
    public static double[] m11189r() {
        return new double[]{Double.parseDouble(m11217d().getString("latitude_pre", "39.909142")), Double.parseDouble(m11217d().getString("longtitude_pre", "116.397481"))};
    }

    /* renamed from: r0 */
    public static void m11188r0(boolean z) {
        m11235T().edit().putBoolean("is_agreed_app_privacy", z).apply();
    }

    /* renamed from: s */
    public static double[] m11187s() {
        return new double[]{Double.parseDouble(m11217d().getString("latitude_pre", "39.909142")), Double.parseDouble(m11217d().getString("longtitude_pre", "116.397481")), m11217d().getInt("altitude_pre", 0)};
    }

    /* renamed from: s0 */
    public static void m11186s0(boolean z) {
        m11207i().edit().putBoolean("is_double_frequency_model", z).apply();
    }

    /* renamed from: t */
    public static int m11185t(String str) {
        return m11235T().getInt(String.format("privacy_type_%s_version", str), 1);
    }

    /* renamed from: t0 */
    public static void m11184t0(boolean z) {
        m11207i().edit().putBoolean("is_public_loc_info", z).apply();
    }

    /* renamed from: u */
    public static int m11183u() {
        return m11271B().getInt("seal_band", 0);
    }

    /* renamed from: u0 */
    public static void m11182u0(String str) {
        m11207i().edit().putString("dolphin_language_type", str).apply();
    }

    /* renamed from: v */
    public static String m11181v() {
        return m11271B().getString("seal_device_id", null);
    }

    /* renamed from: v0 */
    public static void m11180v0(boolean z) {
        m11271B().edit().putBoolean("seal_mcu_had_alart_jifeng_btear_dialog", z).apply();
    }

    /* renamed from: w */
    public static boolean m11179w() {
        return m11271B().getBoolean("seal_is_open_all_public", false);
    }

    /* renamed from: w0 */
    public static void m11178w0(boolean z) {
        m11235T().edit().putBoolean("is_join_improve_plan", z).apply();
    }

    /* renamed from: x */
    public static boolean m11177x() {
        return m11271B().getBoolean("seal_is_open_voice_alert", false);
    }

    /* renamed from: x0 */
    public static void m11176x0(boolean z) {
        m11217d().edit().putBoolean("is_need_display_right_top_update_red_point", z).apply();
    }

    /* renamed from: y */
    public static boolean m11175y() {
        return m11271B().getBoolean("seal_is_share_location", false);
    }

    /* renamed from: y0 */
    public static void m11174y0(String str, long j) {
        m11249M(str).edit().putLong("loc_interval", j).apply();
    }

    /* renamed from: z */
    public static boolean m11173z() {
        return m11271B().getBoolean("seal_polite_is_open", false);
    }

    /* renamed from: z0 */
    public static void m11172z0(String str) {
        m11217d().edit().putString("phone_device_id", str).apply();
    }
}
