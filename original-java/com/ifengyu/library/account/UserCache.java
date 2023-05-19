package com.ifengyu.library.account;

import android.text.TextUtils;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.utils.C4974p;
import com.ifengyu.library.utils.SerializeUtils;

/* loaded from: classes2.dex */
public class UserCache {
    public static final String KEY_LOGIN_INFO = "new_user_info";
    public static final String SP_LOGIN = "sp_login";
    private static String account;
    private static UserInfo userInfo;

    public static void clear() {
        C4974p.m8629c(SP_LOGIN).m8631a();
        userInfo = null;
        account = null;
    }

    public static void clearPhone() {
        UserInfo userInfo2 = userInfo;
        userInfo2.phone = null;
        saveUserInfo(userInfo2);
    }

    public static String getAccount() {
        String str = account;
        if (str != null) {
            return str;
        }
        if (getUserInfo() != null) {
            return String.valueOf(getUserInfo().userId);
        }
        return null;
    }

    public static UserInfo getUserInfo() {
        return userInfo;
    }

    public static void init() {
        int i;
        String m8627e = C4974p.m8629c(SP_LOGIN).m8627e(KEY_LOGIN_INFO, "");
        if (TextUtils.isEmpty(m8627e)) {
            return;
        }
        UserInfo userInfo2 = (UserInfo) SerializeUtils.m8623a(m8627e);
        userInfo = userInfo2;
        if (userInfo2 == null || (i = userInfo2.userId) <= 0) {
            return;
        }
        account = String.valueOf(i);
    }

    public static void saveUserInfo(UserInfo userInfo2) {
        String m8622b;
        if (userInfo2 == null || (m8622b = SerializeUtils.m8622b(userInfo2)) == null) {
            return;
        }
        C4974p.m8629c(SP_LOGIN).m8625g(KEY_LOGIN_INFO, m8622b);
        userInfo = userInfo2;
        int i = userInfo2.userId;
        if (i > 0) {
            account = String.valueOf(i);
        }
    }

    public static void setAvatar(String str) {
        UserInfo userInfo2 = userInfo;
        userInfo2.avatar = str;
        saveUserInfo(userInfo2);
    }

    public static void setEmail(String str) {
        UserInfo userInfo2 = userInfo;
        userInfo2.email = str;
        saveUserInfo(userInfo2);
    }

    public static void setGender(int i) {
        UserInfo userInfo2 = userInfo;
        userInfo2.gender = i;
        saveUserInfo(userInfo2);
    }

    public static void setNickname(String str) {
        UserInfo userInfo2 = userInfo;
        userInfo2.nickname = str;
        saveUserInfo(userInfo2);
    }

    public static void setPhone(String str) {
        UserInfo userInfo2 = userInfo;
        userInfo2.phone = str;
        saveUserInfo(userInfo2);
    }

    public static void setTokens(UserInfo.Tokens tokens) {
        UserInfo userInfo2 = userInfo;
        UserInfo.Tokens tokens2 = userInfo2.tokens;
        tokens2.accessToken = tokens.accessToken;
        tokens2.refreshToken = tokens.refreshToken;
        saveUserInfo(userInfo2);
    }
}
