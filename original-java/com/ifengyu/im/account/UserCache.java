package com.ifengyu.im.account;

import com.ifengyu.library.util.g;
import com.ifengyu.library.util.h;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class UserCache {
    public static final String KEY_LOGIN_INFO = "user_info";
    public static final String SP_LOGIN = "sp_login";
    private UserInfo mUserInfo;
    private Map<String, UserInfo> mUserInfoMap = new ConcurrentHashMap();

    private static final class Holder {
        /* access modifiers changed from: private */
        public static final UserCache INSTANCE = new UserCache();

        private Holder() {
        }
    }

    public static UserCache instance() {
        return Holder.INSTANCE;
    }

    public UserInfo getUserInfo() {
        if (this.mUserInfo == null) {
            this.mUserInfo = (UserInfo) h.a(g.a(SP_LOGIN).b(KEY_LOGIN_INFO));
        }
        return this.mUserInfo;
    }

    public void saveUserInfo(UserInfo userInfo) {
        this.mUserInfo = userInfo;
        g.a(SP_LOGIN).a(KEY_LOGIN_INFO, h.a((Object) userInfo));
    }

    public void setNickname(String str) {
        this.mUserInfo.nickname = str;
        saveUserInfo(this.mUserInfo);
    }

    public void setAvatar(String str) {
        this.mUserInfo.avatar = str;
        saveUserInfo(this.mUserInfo);
    }

    public void setPhone(String str) {
        this.mUserInfo.phone = str;
        this.mUserInfo.phone_isBound = 1;
        saveUserInfo(this.mUserInfo);
    }

    public void clearPhone() {
        this.mUserInfo.phone_isBound = 0;
        this.mUserInfo.phone = null;
        saveUserInfo(this.mUserInfo);
    }

    public void setEmail(String str) {
        this.mUserInfo.email = str;
        saveUserInfo(this.mUserInfo);
    }

    public void setGender(String str) {
        this.mUserInfo.gender = str;
        saveUserInfo(this.mUserInfo);
    }

    public void clear() {
        this.mUserInfo = null;
        g.a(SP_LOGIN).a();
    }
}
