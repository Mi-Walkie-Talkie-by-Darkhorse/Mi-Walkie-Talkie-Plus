package com.ifengyu.im.DB.sp;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ifengyu.library.util.i;

public class LoginSp {
    private static LoginSp loginSp = null;
    private final String KEY_B2_TOKEN = "b2Token";
    private final String KEY_LOGIN_ID = "loginId";
    private final String KEY_PUBLIC_ID = "publicId";
    private final String KEY_PUBLIC_KEY = "publicKey";
    private final String KEY_PWD = "pwd";
    private final String fileName = "login.ini";
    SharedPreferences sharedPreferences;

    public class SpLoginIdentity {
        private String b2Token;
        private int loginId;
        private String publicId;
        private String publicKey;
        private String pwd;

        public SpLoginIdentity(String str, int i, String str2, String str3, String str4) {
            this.pwd = str;
            this.loginId = i;
            this.publicId = str2;
            this.publicKey = str3;
            this.b2Token = str4;
        }

        public int getLoginId() {
            return this.loginId;
        }

        public void setLoginId(int i) {
            this.loginId = i;
        }

        public String getPwd() {
            return this.pwd;
        }

        public void setPwd(String str) {
            this.pwd = str;
        }

        public String getPublicId() {
            return this.publicId;
        }

        public void setPublicId(String str) {
            this.publicId = str;
        }

        public String getPublicKey() {
            return this.publicKey;
        }

        public void setPublicKey(String str) {
            this.publicKey = str;
        }

        public String getB2Token() {
            return this.b2Token;
        }

        public void setB2Token(String str) {
            this.b2Token = str;
        }

        public String toString() {
            return "SpLoginIdentity{, pwd='" + this.pwd + '\'' + ", loginId=" + this.loginId + ", publicId='" + this.publicId + '\'' + ", publicKey='" + this.publicKey + '\'' + ", b2Token='" + this.b2Token + '\'' + '}';
        }
    }

    public static LoginSp instance() {
        if (loginSp == null) {
            synchronized (LoginSp.class) {
                loginSp = new LoginSp();
            }
        }
        return loginSp;
    }

    private LoginSp() {
    }

    public void init(Context context) {
        this.sharedPreferences = context.getSharedPreferences("login.ini", 0);
    }

    public void setLoginInfo(String str, int i, String str2, String str3, String str4) {
        Editor edit = this.sharedPreferences.edit();
        edit.putString("pwd", str).putInt("loginId", i).putString("publicId", str2).putString("publicKey", str3).putString("b2Token", str4);
        edit.apply();
    }

    public SpLoginIdentity getLoginIdentity() {
        String string = this.sharedPreferences.getString("pwd", null);
        int i = this.sharedPreferences.getInt("loginId", 0);
        String string2 = this.sharedPreferences.getString("publicId", null);
        String string3 = this.sharedPreferences.getString("publicKey", null);
        String string4 = this.sharedPreferences.getString("b2Token", null);
        if (i == 0) {
            return null;
        }
        if (i.a(string, string2, string3, string4)) {
            return null;
        }
        return new SpLoginIdentity(string, i, string2, string3, string4);
    }
}
