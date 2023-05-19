package com.xiaomi.account.openauth;

import java.io.File;

/* loaded from: classes2.dex */
public class XiaomiOAuthConstants {
    public static final int ERROR_ACCESS_DENIED = 96012;
    public static final int ERROR_AUTH_FAILED = -1003;
    public static final int ERROR_CLIENT_NOT_EXISTS = 96001;
    public static final int ERROR_CONNECT_FAILED = -1000;
    public static final int ERROR_INVALID_CLIENT = 96003;
    public static final int ERROR_INVALID_CODE = 96013;
    public static final int ERROR_INVALID_GRANT = 96004;
    public static final int ERROR_INVALID_REDIRECT_URI = 96010;
    public static final int ERROR_INVALID_REFRESHTOKEN = 96009;
    public static final int ERROR_INVALID_REQUEST = 96002;
    public static final int ERROR_INVALID_SCOPE = 96007;
    public static final int ERROR_INVALID_TOKEN = 96008;
    public static final int ERROR_LOGIN_FAILED = -1002;
    public static final int ERROR_NEED_AUTHORIZE = -1001;
    public static final int ERROR_OK = 0;
    public static final int ERROR_UNAUTHORIZED_CLIENT = 96005;
    public static final int ERROR_UNSUPPORTED_GRANT_TYPE = 96006;
    public static final int ERROR_UNSUPPORTED_RESPONSE_TYPE = 96011;
    public static final String EXTRA_ACCESS_TOKEN = "extra_access_token";
    public static final String EXTRA_ACCESS_TOKEN_2 = "access_token";
    public static final String EXTRA_AVATAR_URL = "extra_avatar_url";
    public static final String EXTRA_CLIENT_ID = "extra_client_id";
    public static final String EXTRA_CODE = "extra_code";
    public static final String EXTRA_CODE_2 = "code";
    public static final String EXTRA_DEVICEID = "extra_deviceid";
    public static final String EXTRA_DISPLAY = "extra_display";
    public static final String EXTRA_DISPLAY_MOBILE = "mobile";
    public static final String EXTRA_DISPLAY_TV = "TV";
    public static final String EXTRA_ERROR_CODE = "extra_error_code";
    public static final String EXTRA_ERROR_CODE_2 = "error";
    public static final String EXTRA_ERROR_DESCRIPTION = "extra_error_description";
    public static final String EXTRA_ERROR_DESCRIPTION_2 = "error_description";
    public static final String EXTRA_EXPIRES_IN = "extra_expires_in";
    public static final String EXTRA_EXPIRES_IN_2 = "expires_in";
    public static final String EXTRA_HIDE_SWITCH = "extra_hide_switch";
    public static final String EXTRA_INFO = "info";
    public static final String EXTRA_INTENT = "extra_intent";
    public static final String EXTRA_LOGIN_TYPE = "_loginType";
    public static final String EXTRA_MAC_ALGORITHM = "extra_mac_algorithm";
    public static final String EXTRA_MAC_ALGORITHM_2 = "mac_algorithm";
    public static final String EXTRA_MAC_KEY = "extra_mac_key";
    public static final String EXTRA_MAC_KEY_2 = "mac_key";
    public static final String EXTRA_NATIVE_OAUTH = "extra_native_oauth";
    public static final String EXTRA_NICK_NAME = "extra_nick_name";
    public static final String EXTRA_PHONEINFO = "extra_phoneinfo";
    public static final String EXTRA_PLATFORM = "extra_platform";
    public static final String EXTRA_REDIRECT_URI = "extra_redirect_uri";
    public static final String EXTRA_RESPONSE = "extra_response";
    public static final String EXTRA_RESPONSE_TYPE = "extra_response_type";
    public static final String EXTRA_SCOPE = "extra_scope";
    public static final String EXTRA_SCOPE_2 = "scope";
    public static final String EXTRA_SKIP_CONFIRM = "extra_skip_confirm";
    public static final String EXTRA_STATE = "extra_state";
    public static final String EXTRA_STATE_2 = "state";
    public static final String EXTRA_TOKEN_TYPE = "extra_token_type";
    public static final String EXTRA_TOKEN_TYPE_2 = "token_type";
    public static final String EXTRA_TYPE = "sns_type";
    public static final String EXTRA_UPDATE = "extra_update";
    public static final String EXTRA_USER_ID = "extra_user_id";
    public static final String EXTRA_USER_NAME = "extra_user_name";
    public static final String EXTRA_USE_SYSTEM_ACCOUNT_LOGIN = "extra_use_system_account_login";
    public static final String EXTRA_USE_SYSTEM_BROWSER_LOGIN = "extra_use_system_browser_login";
    public static final String FEATURE_DEV_DEVICEID = "FEATURE_DEV_DEVICEID";
    public static final String FEATURE_NOT_USE_SYSTEM_ACCOUNT_LOGIN = "FEATURE_NOT_USE_SYSTEM_ACCOUNT_LOGIN";
    public static final String FEATURE_SHUIDI = "FEATURE_SHUIDI";
    public static final String OAUTH2_API_HOST;
    public static final String OAUTH2_API_URL_BASE;
    public static final String OAUTH2_HOST;
    public static final String OPEN_API_PATH_OPEN_ID = "/user/openidV2";
    public static final String OPEN_API_PATH_PHONE = "/user/phone";
    public static final String OPEN_API_PATH_PROFILE = "/user/profile";
    public static final String OPEN_API_PATH_RELATION = "/user/relation";
    public static final int PLATFORM_DEV = 0;
    public static final int PLATFORM_SHUIDI = 1;
    public static final int SCOPE_ACCESS_MI_ROUTER = 1000;
    public static final int SCOPE_EMAIL = 6;
    public static final int SCOPE_MI_CLOUD_CONTACT = 2000;
    public static final int SCOPE_MI_CLOUD_GALLERY = 11000;
    public static final int SCOPE_MODIFY_PROFILE = 5;
    public static final int SCOPE_OPEN_ID = 3;
    public static final int SCOPE_PHONE = 4;
    public static final int SCOPE_PROFILE = 1;
    public static final int SCOPE_RELATION = 2;
    public static final int SCOPE_SAVE_DATA_TO_MI_CLOUD = 12001;
    private static final boolean USE_PREVIEW;
    @Deprecated
    public static final int VERSION_MAJOR = 1;
    @Deprecated
    public static final int VERSION_MINOR = 90;

    static {
        boolean exists = new File("/data/system/oauth_staging_preview").exists();
        USE_PREVIEW = exists;
        OAUTH2_HOST = exists ? "http://account.preview.n.xiaomi.net" : "https://account.xiaomi.com";
        OAUTH2_API_URL_BASE = exists ? "http://open.account.preview.n.xiaomi.net" : "https://open.account.xiaomi.com";
        OAUTH2_API_HOST = exists ? "open.account.preview.n.xiaomi.net" : "open.account.xiaomi.com";
    }
}
