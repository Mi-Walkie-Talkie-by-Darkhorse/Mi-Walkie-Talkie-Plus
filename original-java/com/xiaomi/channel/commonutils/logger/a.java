package com.xiaomi.channel.commonutils.logger;

import android.util.Log;
import com.ifengyu.im.account.UserInfo;

public class a implements LoggerInterface {
    private String a = UserInfo.TYPE_XIAOMI;

    public void log(String str) {
        Log.v(this.a, str);
    }

    public void log(String str, Throwable th) {
        Log.v(this.a, str, th);
    }

    public void setTag(String str) {
        this.a = str;
    }
}
