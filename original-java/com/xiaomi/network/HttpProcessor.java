package com.xiaomi.network;

import android.content.Context;
import com.xiaomi.channel.commonutils.network.c;
import java.util.List;

public abstract class HttpProcessor {
    private int a;

    public HttpProcessor(int i) {
        this.a = i;
    }

    public int a() {
        return this.a;
    }

    public boolean a(Context context, String str, List<c> list) {
        return true;
    }

    public abstract String b(Context context, String str, List<c> list);
}
