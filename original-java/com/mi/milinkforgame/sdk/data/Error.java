package com.mi.milinkforgame.sdk.data;

import android.util.SparseArray;

public final class Error {
    @Deprecated
    public static final int ACCOUNT_IS_NULL = 538;
    public static final String BUSY_ERROR_MESSAGE = "网络繁忙，请稍后重试";
    public static final int CHECK_SESSION_NEW_SUCCESS = 552;
    public static final int CHECK_SESSION_OLD_FAIL = 553;
    public static final int CHECK_SESSION_OLD_SUCCESS = 551;
    @Deprecated
    public static final int CONNECT_EXCEPTION_ERROR = 534;
    public static final int CONNECT_FAIL = 516;
    public static final int CONNECT_TIME_OUT = 513;
    public static final String DEF_ERROR_MESSAGE = "操作失败，请稍后重试";
    @Deprecated
    public static final int DNS_ANALYZE_TIMEOUT = 537;
    public static final int DNS_FAIL = 521;
    public static final int E_REG_ALREADY_REGISTERED = 135;
    public static final int E_REG_BIND_ERROR = 133;
    public static final int E_REG_BIND_MAILBOX_FAILED = 139;
    public static final int E_REG_BUSY = 125;
    public static final int E_REG_BUSY_GET_IMG = 123;
    public static final int E_REG_BUSY_VERIFY_IMG = 124;
    public static final int E_REG_DIRTY_ACCOUNT = 122;
    public static final int E_REG_DOWNLOAD_MSG_FAILED = 114;
    public static final int E_REG_GET_MSG_FAILED = 118;
    public static final int E_REG_HAS_REGISTERED_RECENTLY = 120;
    public static final int E_REG_ILLEGAL_MAILBOX = 140;
    public static final int E_REG_MAX_DOWNMSG_LIMITED = 131;
    public static final int E_REG_MAX_LIMITED = 115;
    public static final int E_REG_MAX_MSG_LIMITED = 130;
    public static final int E_REG_MAX_RETRY_LIMITED = 132;
    public static final int E_REG_NETWORK_ERROR = 121;
    public static final int E_REG_NOT_IN_WHITELIST = 137;
    public static final int E_REG_PROTOCOL = 200;
    public static final int E_REG_REGISTERED_ERROR = 136;
    public static final int E_REG_SEND_AUTHMAIL_FAILED = 138;
    public static final int E_REG_SESSION_ERROR = 113;
    public static final int E_REG_SESSION_GET_FAILED = 117;
    public static final int E_REG_SESSION_INIT_ERROR = 112;
    public static final int E_REG_UNBIND_ERROR = 134;
    public static final int E_REG_UNSAFE_PASSWORD = 126;
    public static final int E_REG_WRONG_DEVICE = 129;
    public static final int E_REG_WRONG_LANGUAGE = 128;
    public static final int E_REG_WRONG_PHONE = 111;
    public static final int E_REG_WRONG_REGION = 127;
    public static final int E_REG_WRONG_SESSION_STATE = 119;
    public static final int E_REG_WRONG_TOKEN = 116;
    public static final int E_WTSDK_A1_DECRYPT = 270;
    public static final int E_WTSDK_A1_INVALID = 272;
    public static final int E_WTSDK_DECRYPT = 258;
    public static final int E_WTSDK_DNS = 263;
    public static final int E_WTSDK_ENCODING = 269;
    public static final int E_WTSDK_FATAL_EXCEPTION = 512;
    public static final int E_WTSDK_INVALID_NAME = 264;
    public static final int E_WTSDK_IS_BUSY = 511;
    public static final int E_WTSDK_NO_KEY = 260;
    public static final int E_WTSDK_NO_REG_LEN = 266;
    public static final int E_WTSDK_NO_RET = 256;
    public static final int E_WTSDK_NO_TGT = 262;
    public static final int E_WTSDK_NO_UIN = 259;
    public static final int E_WTSDK_OPENDB_FAIL = 278;
    public static final int E_WTSDK_PENDING = 257;
    public static final int E_WTSDK_PK_LEN = 265;
    public static final int E_WTSDK_PUSH_RECONNECT = 356;
    public static final int E_WTSDK_PUSH_REG = 267;
    public static final int E_WTSDK_SUCCESS_BUT_NULL_A2 = 510;
    public static final int E_WTSDK_SYSTEM = 268;
    public static final int E_WTSDK_TLV_DECRYPT = 271;
    public static final int E_WTSDK_TLV_VERIFY = 261;
    public static final int E_WT_A2_EXPIRED = 15;
    public static final int E_WT_ACCOUNT_IN_BLACKLIST = 33;
    public static final int E_WT_ACCOUNT_IS_DENIED = 40;
    public static final int E_WT_ACCOUNT_IS_DENIED_FOR_STAFF = 113;
    public static final int E_WT_ACCOUNT_IS_FROZEN = 32;
    public static final int E_WT_ACCOUNT_IS_LOCKED = 42;
    public static final int E_WT_ACCOUNT_IS_NOT_TENPAY = 43;
    public static final int E_WT_ACCOUNT_NOT_EXIST = 18;
    public static final int E_WT_ACCOUNT_SERVICE_EXPIRED = 41;
    public static final int E_WT_CLIENTCLG_FAILED = 3;
    public static final int E_WT_EXPIRED_ERROR = 16;
    public static final int E_WT_ILLEGAL_ACCOUNT_NAME = 5;
    public static final int E_WT_ILLEGAL_APPID = 8;
    public static final int E_WT_ILLEGAL_SIG_REQUEST = 11;
    public static final int E_WT_INFO_LACK = 6;
    public static final int E_WT_LOGIN_NOT_ALLOWED = 7;
    public static final int E_WT_LOGIN_PACKAGE_ERROR = 9;
    public static final int E_WT_LOGIN_TOO_OFTEN = 10;
    public static final int E_WT_NEED_ACCOUNT_NAME = 12;
    public static final int E_WT_NEED_SMS_VERIFYCODE = 160;
    public static final int E_WT_NEED_VERIFYCODE = 2;
    public static final int E_WT_NO_PERMISSION_FOR_SIGS = 48;
    public static final int E_WT_SERVER_INNER_TIMEOUT = 154;
    public static final int E_WT_SMS_REQUEST_FAILED = 162;
    public static final int E_WT_SMS_TOO_OFTEN = 161;
    public static final int E_WT_SMS_VERIFY_FAILED = 163;
    public static final int E_WT_TENPAY_DENIED = 44;
    public static final int E_WT_WRONG_PASSWORD = 1;
    public static final int E_WT_WRONG_VERIFY_CODE = 4;
    public static final int E_WT_WTLOGIN_ACCOUNT_NAME_ERROR = 130;
    public static final int E_WT_WTLOGIN_CLIENTCLG_DENIED = 133;
    public static final int E_WT_WTLOGIN_DBSERVER_ERROR = 131;
    public static final int E_WT_WTLOGIN_NOT_ALLOWED = 64;
    public static final int E_WT_WTLOGIN_OPENSYSTEM_ERROR = 134;
    public static final int E_WT_WTLOGIN_OTHERERROR = 14;
    public static final int E_WT_WTLOGIN_PTLOGIN_ERROR = 132;
    public static final int E_WT_WTLOGIN_SECURITY_CENTER_ERROR = 128;
    public static final int E_WT_WTLOGIN_SESSION_ERROR = 129;
    @Deprecated
    public static final int ILLEGALARGUMENT_EXCEPTION_ERROR = 536;
    public static final int IO_EXCEPTION_ERROR = 535;
    public static final int IP_ADDRESS_NOT_VALID = 558;
    public static final int IP_ADDRESS_NULL = 557;
    @Deprecated
    public static final int LOGIN_NOPWD_INDB = 529;
    public static final int MNS_ASYNC_TIMEOUT = 528;
    public static final int MNS_BACKUP_IP_SESSION = 545;
    public static final int MNS_BUSI_BUFFER_NONE = 539;
    public static final int MNS_CANNOTSEND_INBG = 531;
    public static final int MNS_CDN_IP_SESSION = 546;
    public static final int MNS_CMD_RESTRICT_RESERVE1 = 4031;
    public static final int MNS_CMD_RESTRICT_RESERVE10 = 4040;
    public static final int MNS_CODE_ACC_INVALID_SESSIONHASH = 1053;
    public static final int MNS_CODE_ACC_NO_ROUTE = 2103;
    public static final int MNS_CODE_B2_DECRYPT_ERROR = 1052;
    public static final int MNS_CODE_DIS_STAT_BEGIN = 2400;
    public static final int MNS_CODE_DIS_STAT_END = 2499;
    public static final int MNS_CODE_LOGIN_3GSVR_BUSY = 1902;
    public static final int MNS_CODE_LOGIN_A2_CHANGED = 1907;
    public static final int MNS_CODE_LOGIN_A2_EXPIRED = 1906;
    public static final int MNS_CODE_LOGIN_A2_ILLEGAL = 1903;
    public static final int MNS_CODE_LOGIN_B2_EXPIRED = 1910;
    public static final int MNS_CODE_LOGIN_CREATEUIDFAIL = 1909;
    public static final int MNS_CODE_LOGIN_ILLIGAL_APPID = 1912;
    public static final int MNS_CODE_LOGIN_NOTOKEN = 1908;
    public static final int MNS_CODE_LOGIN_PTLOGIN_BUSY = 1901;
    public static final int MNS_CODE_LOGIN_QUA_ALPHA_FORBIDDEN = 1915;
    public static final int MNS_CODE_LOGIN_SID_EXPIRED = 1905;
    public static final int MNS_CODE_LOGIN_SID_ILLEGAL = 1904;
    public static final int MNS_CODE_SUCCESS = 0;
    public static final int MNS_DIAGNOSIS_INSTALLED_FIREWALL = 550;
    public static final int MNS_DIAGNOSIS_NEED_AUTHENTIED = 549;
    public static final int MNS_DOMAIN_IP_SESSION = 544;
    public static final int MNS_HEART_BEAT_CONFIG = 548;
    public static final int MNS_HEART_BEAT_PUSH = 547;
    public static final int MNS_INVALID_PARAMS = 522;
    public static final int MNS_LOAD_LIBS_FAILED = 562;
    @Deprecated
    public static final int MNS_LOGGINGIN_ANOTHERUIN = 523;
    @Deprecated
    public static final int MNS_LOGGINGIN_SAMEUIN = 540;
    public static final int MNS_LOGOUT_CLEAR = 582;
    public static final int MNS_MALICIOUS_USER_IP_RESERVE1 = 4011;
    public static final int MNS_MALICIOUS_USER_IP_RESERVE10 = 4020;
    public static final int MNS_MALICIOUS_USER_QQ_RESERVE1 = 4001;
    public static final int MNS_MALICIOUS_USER_QQ_RESERVE10 = 4010;
    public static final int MNS_NEED_WIFI_AUTH = 580;
    @Deprecated
    public static final int MNS_NOTLOGGEDIN = 524;
    public static final int MNS_NOT_LOGIN = 533;
    @Deprecated
    public static final int MNS_NOT_READY = 520;
    public static final int MNS_OPEN_SESSION_FAILED_IN_NETWORK_DISABLED = 570;
    public static final int MNS_OPEN_SESSION_FAILED_PIC_FAILED_IN_BACKGROUND = 565;
    public static final int MNS_OPEN_SESSION_FAILED_PIC_FAILED_IN_FOREGROUND = 564;
    public static final int MNS_OPEN_SESSION_FAILED_PIC_FAILED_IN_POWERSAVING = 566;
    public static final int MNS_OPEN_SESSION_FAILED_PIC_SUC_IN_BACKGROUND = 560;
    public static final int MNS_OPEN_SESSION_FAILED_PIC_SUC_IN_FOREGROUND = 559;
    public static final int MNS_OPEN_SESSION_FAILED_PIC_SUC_IN_POWERSAVING = 561;
    public static final int MNS_OPEN_SESSION_FAILED_WIFI_REDIRECT_IN_BACKGROUND = 568;
    public static final int MNS_OPEN_SESSION_FAILED_WIFI_REDIRECT_IN_FOREGROUND = 567;
    public static final int MNS_OPEN_SESSION_FAILED_WIFI_REDIRECT_IN_POWERSAVING = 569;
    public static final int MNS_OPTI_IP_SESSION = 541;
    public static final int MNS_PACKAGE_ERROR = 526;
    public static final int MNS_PACKAGE_INVALID = 998;
    public static final int MNS_PACKAGE_RECEIVING = 530;
    public static final int MNS_QUA_RESTRICT_RESERVE1 = 4021;
    public static final int MNS_QUA_RESTRICT_RESERVE10 = 4030;
    public static final int MNS_RECENTLY_IP_SESSION = 543;
    public static final int MNS_REDIRECT_IP_SESSION = 542;
    public static final int MNS_REPORT_LOG_FAIL = 581;
    public static final int MNS_SCORE_IP_SESSION = 572;
    public static final int MNS_SCORE_IP_SUCCESS = 571;
    public static final int MNS_SDK_ERROR_CEIL = 999;
    public static final int MNS_SDK_ERROR_FLOOR = 512;
    public static final int MNS_UID_ERROR = 3013;
    public static final int MNS_WTLOGIN_UNHANDLED_ERROR = 525;
    public static final int NETWORK_DISABLE = 519;
    public static final int NETWORK_WAIT_TIMEOUT = 527;
    public static final int NOT_SUPPORT_SHORT_COMMAND = 563;
    public static final int READ_FAIL = 517;
    public static final int READ_TIME_OUT = 515;
    public static final String REG_ERROR_MESSAGE = "注册失败，请稍后重试";
    public static final int SEND_DONE_BUT_NETWORK_BROKEN = 532;
    public static final boolean SHOW_RESULT_CODE = false;
    public static final int SUCCESS = 0;
    public static final String TIMEOUT_ERROR_MESSAGE = "网络超时，请稍后重试";
    public static final int TLV_DECODE_FAIL = 554;
    public static final int TLV_DECOMPRESS_FAIL = 555;
    public static final int TLV_WRONG_DECOMPRESS_LENGTH = 556;
    @Deprecated
    public static final int UPLOADER_OPEN_SESSION_FAILED = 900;
    public static final int WRITE_FAIL = 518;
    public static final int WRITE_TIME_OUT = 514;
    private static SparseArray<String> errMap = new SparseArray<>();
    private static SparseArray<String> regErrMap = new SparseArray<>();

    public static String getErrorMessage(int i) {
        return __getErrorMessage(i);
    }

    public static String getRegErrorMessage(int i) {
        return __getRegErrorMessage(i);
    }

    static {
        errMap.put(0, "成功");
        errMap.put(513, "当前网络不可用，请检查网络设置");
        errMap.put(514, TIMEOUT_ERROR_MESSAGE);
        errMap.put(515, TIMEOUT_ERROR_MESSAGE);
        errMap.put(516, "当前网络不可用，请检查网络设置");
        errMap.put(517, BUSY_ERROR_MESSAGE);
        errMap.put(518, BUSY_ERROR_MESSAGE);
        errMap.put(519, "当前网络不可用，请检查网络设置");
        errMap.put(521, BUSY_ERROR_MESSAGE);
        errMap.put(522, BUSY_ERROR_MESSAGE);
        errMap.put(526, BUSY_ERROR_MESSAGE);
        errMap.put(527, BUSY_ERROR_MESSAGE);
        errMap.put(528, "操作超时，请稍后重试");
        errMap.put(SEND_DONE_BUT_NETWORK_BROKEN, "网络连接不可用，请重新连接");
        errMap.put(1, "密码错误");
        errMap.put(2, "请输入验证码");
        errMap.put(3, "长时间未操作，请重新登录");
        errMap.put(4, "请输入正确验证码");
        errMap.put(5, "请输入正确用户名/密码");
        errMap.put(6, "请输入正确用户名/密码");
        errMap.put(7, "账号异常，请登录QQ安全中心查看详情");
        errMap.put(8, "无法识别的第三方");
        errMap.put(9, BUSY_ERROR_MESSAGE);
        errMap.put(10, BUSY_ERROR_MESSAGE);
        errMap.put(11, BUSY_ERROR_MESSAGE);
        errMap.put(12, "请输入正确用户名/密码");
        errMap.put(14, BUSY_ERROR_MESSAGE);
        errMap.put(15, "密码已过期，请重新登录");
        errMap.put(16, "长时间未操作，请重新登录");
        errMap.put(18, "请输入正确用户名/密码");
        errMap.put(32, "您的帐号长期未登录已经冻结，建议您到http://zc.qq.com 申请一个新号码使用。");
        errMap.put(33, "您的帐号由于存在安全风险，已启用临时登录限制，解除限制后即可正常登录。解除地址：\nhttp://aq.qq.com/xz");
        errMap.put(40, "您的帐号暂被冻结，请点击http://aq.qq.com/007查看详情");
        errMap.put(41, "您的QQ号码服务已到期，\n请尽快点击http://haoma.qq.com/expire/续费。\n固定电话拨打16885886可快捷续费");
        errMap.put(42, "您的帐号已锁定，解锁请查看http://aq.qq.com/mp?id=1&source_id=2040");
        errMap.put(43, "请输入正确用户名/密码");
        errMap.put(44, "请输入正确用户名/密码");
        errMap.put(48, "账号异常，请登录QQ安全中心查看详情");
        errMap.put(113, "账号异常，请登录QQ安全中心查看详情");
        errMap.put(128, "账号异常，请登录QQ安全中心查看详情");
        errMap.put(129, BUSY_ERROR_MESSAGE);
        errMap.put(154, BUSY_ERROR_MESSAGE);
        errMap.put(130, "请输入正确用户名/密码");
        errMap.put(131, "请输入正确用户名/密码");
        errMap.put(132, BUSY_ERROR_MESSAGE);
        errMap.put(133, BUSY_ERROR_MESSAGE);
        errMap.put(134, BUSY_ERROR_MESSAGE);
        errMap.put(160, "请输入短信验证码");
        errMap.put(161, "请输入短信验证码");
        errMap.put(162, "请输入短信验证码");
        errMap.put(163, "请输入短信验证码");
        regErrMap.put(-1000, TIMEOUT_ERROR_MESSAGE);
        regErrMap.put(112, REG_ERROR_MESSAGE);
        regErrMap.put(111, "手机号码错误");
        regErrMap.put(113, REG_ERROR_MESSAGE);
        regErrMap.put(114, "下发短信验证码失败");
        regErrMap.put(115, "达到最大频率限制");
        regErrMap.put(E_REG_WRONG_TOKEN, REG_ERROR_MESSAGE);
        regErrMap.put(E_REG_SESSION_GET_FAILED, REG_ERROR_MESSAGE);
        regErrMap.put(118, "短信验证失败");
        regErrMap.put(119, REG_ERROR_MESSAGE);
        regErrMap.put(120, "该手机号近期注册多次，请更换手机号或过段时间再来");
        regErrMap.put(121, REG_ERROR_MESSAGE);
        regErrMap.put(122, REG_ERROR_MESSAGE);
        regErrMap.put(123, BUSY_ERROR_MESSAGE);
        regErrMap.put(124, BUSY_ERROR_MESSAGE);
        regErrMap.put(125, BUSY_ERROR_MESSAGE);
        regErrMap.put(126, "密码安全系数较低，可尝试用字母、数字、符号的组合");
        regErrMap.put(127, "错误的国家地区");
        regErrMap.put(128, "该语言暂不支持");
        regErrMap.put(130, "达到短信发送最大次数限制");
        regErrMap.put(131, "达到短信验证码最大次数限制");
        regErrMap.put(132, "达到失败重试最大次数");
        regErrMap.put(133, "绑定失败");
        regErrMap.put(134, "解绑失败");
        regErrMap.put(135, "注册失败：已经注册过帐号");
        regErrMap.put(136, REG_ERROR_MESSAGE);
        regErrMap.put(137, "该邮箱安全系数较低，请更换");
        regErrMap.put(138, "发送激活邮件失败");
        regErrMap.put(139, "绑定邮箱失败");
        regErrMap.put(140, "该邮箱安全系数较低，请更换");
        regErrMap.put(200, REG_ERROR_MESSAGE);
        errMap.put(256, BUSY_ERROR_MESSAGE);
        errMap.put(263, BUSY_ERROR_MESSAGE);
        errMap.put(264, "请输入正确用户名/密码");
        errMap.put(E_WTSDK_A1_INVALID, "密码票据丢失或格式错误");
        errMap.put(MNS_CODE_LOGIN_A2_CHANGED, "密码已修改，请重新输入密码");
        errMap.put(4001, "该号码异常，存在安全风险，请定期修改密码");
        errMap.put(MNS_MALICIOUS_USER_IP_RESERVE1, "该网络异常，请一段时间后再试");
        errMap.put(MNS_QUA_RESTRICT_RESERVE1, "该版本异常，请更新到最新版本");
        errMap.put(MNS_CMD_RESTRICT_RESERVE1, "该操作已过期");
        errMap.put(MNS_LOGOUT_CLEAR, "");
    }

    private static String __getErrorMessage(int i) {
        String str = null;
        if (errMap != null) {
            str = (String) errMap.get(i);
        }
        if (i >= 2400 && i < 2499) {
            str = (String) errMap.get(MNS_CODE_DIS_STAT_BEGIN);
        } else if (i >= 4001 && i <= 4010) {
            str = (String) errMap.get(4001);
        } else if (i >= 4011 && i <= 4020) {
            str = (String) errMap.get(MNS_MALICIOUS_USER_IP_RESERVE1);
        } else if (i >= 4021 && i <= 4030) {
            str = (String) errMap.get(MNS_QUA_RESTRICT_RESERVE1);
        } else if (i >= 4031 && i <= 4040) {
            str = (String) errMap.get(MNS_CMD_RESTRICT_RESERVE1);
        }
        return str == null ? DEF_ERROR_MESSAGE : str;
    }

    private static String __getRegErrorMessage(int i) {
        String str = null;
        if (regErrMap != null) {
            str = (String) regErrMap.get(i);
        }
        return str == null ? __getErrorMessage(i) : str;
    }
}
