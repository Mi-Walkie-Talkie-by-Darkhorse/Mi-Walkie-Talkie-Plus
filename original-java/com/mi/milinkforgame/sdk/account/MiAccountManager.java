package com.mi.milinkforgame.sdk.account;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.session.SessionManager;
import java.io.UnsupportedEncodingException;
import java.util.Random;

public class MiAccountManager {
    private static final String PREF_B2_SECURITY = "game_b2Security";
    private static final String PREF_B2_TOKEN = "game_b2Token";
    private static final String PREF_FILE_NAME = "game_milink_account";
    private static final String PREF_G_ID = "game_gid";
    private static final String PREF_KEY_ID = "game_keyId";
    private static final String PREF_PRIVATE_KEY = "game_privateKey";
    private static final String PREF_PUBLIC_KEY = "game_publicKey";
    private static final String PREF_USER_ID = "game_userId";
    private static final String TAG = "MiAccountManager";
    private static MiAccountManager sInstance;
    private volatile String mB2Security;
    private volatile String mB2Token;
    private volatile String mGid;
    private volatile String mKeyId;
    private long mMiLinkLoginTime = 0;
    private volatile String mOldB2Security;
    private volatile String mOldB2Token;
    private volatile String mPrivateKey;
    private volatile String mPublicKey;
    private volatile String mUserId;

    private MiAccountManager() {
        loadAccount();
    }

    public static synchronized MiAccountManager getInstance() {
        MiAccountManager miAccountManager;
        synchronized (MiAccountManager.class) {
            if (sInstance == null) {
                sInstance = new MiAccountManager();
            }
            miAccountManager = sInstance;
        }
        return miAccountManager;
    }

    public String getUserId() {
        return this.mUserId;
    }

    public void logoff() {
        this.mUserId = "";
        this.mPublicKey = "";
        this.mPrivateKey = "";
        this.mB2Token = "";
        this.mB2Security = "";
        this.mOldB2Token = "";
        this.mOldB2Security = "";
        this.mMiLinkLoginTime = 0;
        saveAccount();
    }

    public void logoffMiLink() {
        this.mB2Token = "";
        this.mB2Security = "";
        this.mOldB2Token = "";
        this.mOldB2Security = "";
        this.mMiLinkLoginTime = 0;
        saveAccount();
    }

    private void saveAccount() {
        Editor edit = Global.getContext().getSharedPreferences(PREF_FILE_NAME, 0).edit();
        edit.putString(PREF_USER_ID, this.mUserId == null ? "" : this.mUserId);
        edit.putString(PREF_PUBLIC_KEY, this.mPublicKey == null ? "" : this.mPublicKey);
        edit.putString(PREF_KEY_ID, this.mKeyId == null ? "" : this.mKeyId);
        edit.putString(PREF_PRIVATE_KEY, this.mPrivateKey == null ? "" : this.mPrivateKey);
        edit.putString(PREF_B2_TOKEN, this.mB2Token == null ? "" : this.mB2Token);
        edit.putString(PREF_B2_SECURITY, this.mB2Security == null ? "" : this.mB2Security);
        edit.putString(PREF_G_ID, this.mGid == null ? "" : this.mGid);
        edit.commit();
    }

    private void loadAccount() {
        SharedPreferences sharedPreferences = Global.getContext().getSharedPreferences(PREF_FILE_NAME, 0);
        this.mUserId = sharedPreferences.getString(PREF_USER_ID, "");
        this.mPublicKey = sharedPreferences.getString(PREF_PUBLIC_KEY, "");
        this.mKeyId = sharedPreferences.getString(PREF_KEY_ID, "");
        this.mPrivateKey = sharedPreferences.getString(PREF_PRIVATE_KEY, "");
        this.mB2Token = sharedPreferences.getString(PREF_B2_TOKEN, "");
        this.mB2Security = sharedPreferences.getString(PREF_B2_SECURITY, "");
        this.mGid = sharedPreferences.getString(PREF_G_ID, "");
    }

    public void generateSSecurity() {
        StringBuilder sb = new StringBuilder(16);
        Random random = new Random();
        for (int i = 0; i < 16; i++) {
            sb.append((char) (random.nextInt(25) + 97));
        }
        this.mPrivateKey = sb.toString();
    }

    public synchronized String getB2TokenStr() {
        return this.mB2Token;
    }

    public synchronized byte[] getB2Token() {
        byte[] bArr;
        MiLinkLog.v(TAG, "getB2Token() : " + this.mB2Token);
        try {
            bArr = this.mB2Token.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bArr = null;
        }
        return bArr;
    }

    public synchronized byte[] getB2Security() {
        byte[] bArr;
        MiLinkLog.v(TAG, "getB2Security()");
        try {
            bArr = this.mB2Security.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bArr = null;
        }
        return bArr;
    }

    public synchronized String getPublicKeyStr() {
        return this.mPublicKey;
    }

    public String getKeyIdStr() {
        return this.mKeyId;
    }

    public byte[] getKeyId() {
        try {
            return this.mKeyId.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public synchronized byte[] getPrivateKey() {
        byte[] bArr;
        MiLinkLog.v(TAG, "mPrivateKey:" + this.mPrivateKey);
        try {
            bArr = this.mPrivateKey.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bArr = null;
        }
        return bArr;
    }

    public synchronized String getPrivateKeyStr() {
        return this.mPrivateKey;
    }

    public byte[] getB2SecurityByB2Token(byte[] bArr) {
        MiLinkLog.v(TAG, "getB2SecurityByB2Token()");
        try {
            String str = new String(bArr, "UTF-8");
            if (str.equals(this.mB2Token)) {
                return this.mB2Security.getBytes("UTF-8");
            }
            if (str.equals(this.mOldB2Token)) {
                return this.mOldB2Security.getBytes("UTF-8");
            }
            return null;
        } catch (UnsupportedEncodingException e) {
        }
    }

    public void login(String str, String str2, String str3, String str4, boolean z) {
        int i = -1;
        String str5 = TAG;
        StringBuilder append = new StringBuilder().append("login start, gid=").append(str).append(", b2Token.length=").append(str2 != null ? str2.length() : -1).append(", publicKey.length=");
        if (str3 != null) {
            i = str3.length();
        }
        MiLinkLog.v(str5, append.append(i).append(", keyId=").append(str4).append("forceLogin:").append(z).toString());
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            MiLinkLog.v(TAG, "login but some argument is empty,return");
            return;
        }
        this.mKeyId = str4;
        this.mB2Token = str2;
        this.mPublicKey = str3;
        this.mGid = str;
        saveAccount();
        SessionManager.getInstance().login();
    }

    public void loginMiLink(String str, String str2, String str3) {
        int i = -1;
        String str4 = TAG;
        StringBuilder append = new StringBuilder().append("loginMiLink start, appUserId:").append(str).append(",b2Token.length=").append(str2 != null ? str2.length() : -1).append(", b2Security.length=");
        if (str3 != null) {
            i = str3.length();
        }
        MiLinkLog.v(str4, append.append(i).toString());
        this.mUserId = str;
        if (str2 != null && str2.length() > 0 && str3 != null && str3.length() > 0) {
            if (!TextUtils.isEmpty(this.mB2Token)) {
                this.mOldB2Token = this.mB2Token;
                this.mOldB2Security = this.mB2Security;
            }
            synchronized (this) {
                this.mB2Token = str2;
                this.mB2Security = str3;
            }
            this.mMiLinkLoginTime = System.currentTimeMillis();
            MiLinkLog.v(TAG, "loginMiLink end, milinkHasLogined()=" + milinkHasLogined());
            saveAccount();
        }
    }

    public synchronized boolean appHasLogined() {
        return !TextUtils.isEmpty(this.mPublicKey);
    }

    public synchronized boolean milinkHasLogined() {
        return !TextUtils.isEmpty(this.mB2Security);
    }

    public synchronized String getGId() {
        return this.mGid;
    }
}
