package com.xiaomi.mipush.sdk;

import com.just.agentweb.WebIndicator;
import com.xiaomi.push.ad;

/* loaded from: classes2.dex */
public class Constants {
    public static final String ACCEPT_TIME_SEPARATOR_SERVER = "-";
    public static final String ACCEPT_TIME_SEPARATOR_SP = ",";
    public static final String APP_ID = "app_id";
    public static final long ASSEMBLE_PUSH_NETWORK_INTERVAL = 300000;
    public static final String ASSEMBLE_PUSH_REG_INFO = "RegInfo";
    public static final int[] ASSEMBLE_PUSH_RETRY_DELAY = {2000, 4000, WebIndicator.MAX_UNIFORM_SPEED_DURATION};
    public static final int ASSEMBLE_PUSH_RETRY_INTERVAL = 2000;
    public static final String ASSEMBLE_PUSH_TOKEN = "token";
    public static final String COLON_SEPARATOR = ":";
    public static final String EXTRA_KEY_ACCEPT_TIME = "accept_time";
    public static final String EXTRA_KEY_ACCOUNTS = "user_accounts";
    public static final String EXTRA_KEY_ACCOUNTS_MD5 = "accounts_md5";
    public static final String EXTRA_KEY_ALIASES = "aliases";
    public static final String EXTRA_KEY_ALIASES_MD5 = "aliases_md5";
    public static final String EXTRA_KEY_APP_VERSION = "app_version";
    public static final String EXTRA_KEY_APP_VERSION_CODE = "app_version_code";
    public static final String EXTRA_KEY_BOOT_SERVICE_MODE = "service_boot_mode";
    public static final String EXTRA_KEY_HYBRID_DEVICE_STATUS = "__hybrid_device_status";
    public static final String EXTRA_KEY_HYBRID_MESSAGE_TS = "__hybrid_message_ts";
    public static final String EXTRA_KEY_HYBRID_PASS_THROUGH = "hybrid_pt";
    public static final String EXTRA_KEY_HYBRID_PKGNAME = "hybrid_pkg";
    public static final String EXTRA_KEY_IMEI_MD5 = "imei_md5";
    public static final String EXTRA_KEY_INITIAL_WIFI_UPLOAD = "initial_wifi_upload";
    public static final String EXTRA_KEY_MIID = "miid";
    public static final String EXTRA_KEY_PUSH_SERVER_ACTION = "push_server_action";
    public static final String EXTRA_KEY_REG_ID = "reg_id";
    public static final String EXTRA_KEY_REG_SECRET = "reg_secret";
    public static final String EXTRA_KEY_TOKEN = "token";
    public static final String EXTRA_KEY_TOPICS = "topics";
    public static final String EXTRA_KEY_TOPICS_MD5 = "topics_md5";
    public static final String EXTRA_VALUE_HYBRID_MESSAGE = "hybrid_message";
    public static final String EXTRA_VALUE_PLATFORM_MESSAGE = "platform_message";
    public static final String HUAWEI_HMS_CLIENT_APPID = "com.huawei.hms.client.appid";
    public static final String HYBRID_DEBUG_PACKAGE_NAME = "com.miui.hybrid.loader";
    public static final String HYBRID_PACKAGE_NAME = "com.miui.hybrid";
    public static final String PACKAGE_NAME = "package_name";
    public static final String PHONE_BRAND = "brand";
    public static final String PREF_EXTRA = "mipush_extra";
    public static final String SP_KEY_LAST_REINITIALIZE = "last_reinitialize";
    public static final String VERSION = "version";
    public static final String WAVE_SEPARATOR = "~";

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a() {
        return ad.a();
    }
}
