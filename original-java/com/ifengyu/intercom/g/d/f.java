package com.ifengyu.intercom.g.d;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.ifengyu.intercom.bean.LoginResult;
import com.ifengyu.intercom.bean.User;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.account.a;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import okhttp3.Response;
import org.osmdroid.tileprovider.modules.DatabaseFileArchive;

/* compiled from: LoginCallback.java */
/* loaded from: classes2.dex */
public abstract class f extends b<LoginResult> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public LoginResult a(Response response, int i) throws Exception {
        String string = response.body().string();
        z.a("LoginCallback", string);
        LoginResult loginResult = (LoginResult) new Gson().fromJson(string, (Class<Object>) LoginResult.class);
        if (loginResult.errno == 0) {
            a(loginResult.data);
        }
        return loginResult;
    }

    private void a(User user) {
        SharedPreferences.Editor edit = d0.R().edit();
        edit.putString(AuthorizeActivityBase.KEY_USERID, user.userid);
        edit.putString("nickname", user.nickname);
        edit.putString("avatar", user.avatar);
        edit.putString("username", user.username);
        edit.putString("phone", user.phone);
        edit.putString("email", user.email);
        edit.putString("gender", user.gender);
        edit.putString(DatabaseFileArchive.COLUMN_KEY, user.key);
        edit.putInt("user_expires_in", user.expires_in);
        edit.apply();
        UserInfo userInfo = new UserInfo();
        userInfo.f7179a = user.userid;
        userInfo.f7180b = user.nickname;
        userInfo.f7181c = user.avatar;
        userInfo.d = user.phone;
        userInfo.e = 0;
        userInfo.f = user.email;
        userInfo.g = user.gender;
        userInfo.h = user.key;
        userInfo.i = user.expires_in;
        userInfo.j = 0;
        userInfo.k = 0;
        a.a(userInfo);
    }
}
