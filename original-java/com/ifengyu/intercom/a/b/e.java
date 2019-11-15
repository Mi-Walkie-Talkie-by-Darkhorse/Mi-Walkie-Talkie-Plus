package com.ifengyu.intercom.a.b;

import android.content.SharedPreferences.Editor;
import com.google.gson.Gson;
import com.ifengyu.im.account.UserInfo;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.LoginResult;
import com.ifengyu.intercom.bean.User;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import okhttp3.Response;

/* compiled from: LoginCallback */
public abstract class e extends b<LoginResult> {
    /* renamed from: a */
    public LoginResult b(Response response, int i) throws Exception {
        LoginResult loginResult = (LoginResult) new Gson().fromJson(response.body().string(), LoginResult.class);
        if (loginResult.errno != 0) {
            return null;
        }
        a(loginResult.data);
        return loginResult;
    }

    private void a(User user) {
        Editor edit = w.b().edit();
        edit.putString(AuthorizeActivityBase.KEY_USERID, user.userid);
        edit.putString("nickname", user.nickname);
        edit.putString("avatar", user.avatar);
        edit.putString("username", user.username);
        edit.putString(UserInfo.TYPE_PHONE, user.phone);
        edit.putString("email", user.email);
        edit.putString("gender", user.gender);
        edit.putString("key", user.key);
        edit.putInt("user_expires_in", user.expires_in);
        edit.apply();
    }
}
