package com.sina.weibo.sdk.api.share;

import android.content.Context;
import com.sina.weibo.sdk.api.CmdObject;
import com.sina.weibo.sdk.api.VoiceObject;
import com.sina.weibo.sdk.api.b;
import com.sina.weibo.sdk.b.a;
import com.sina.weibo.sdk.utils.c;

/* compiled from: VersionCheckHandler */
public class g {
    private static final String a = g.class.getName();

    public boolean a(Context context, a aVar, com.sina.weibo.sdk.api.a aVar2) {
        if (aVar == null || !aVar.c()) {
            return false;
        }
        c.a(a, "WeiboMessage WeiboInfo package : " + aVar.a());
        c.a(a, "WeiboMessage WeiboInfo supportApi : " + aVar.b());
        if (aVar.b() < 10351 && aVar2.a != null && (aVar2.a instanceof VoiceObject)) {
            aVar2.a = null;
        }
        if (aVar.b() < 10352 && aVar2.a != null && (aVar2.a instanceof CmdObject)) {
            aVar2.a = null;
        }
        return true;
    }

    public boolean a(Context context, a aVar, b bVar) {
        if (aVar == null || !aVar.c()) {
            return false;
        }
        c.a(a, "WeiboMultiMessage WeiboInfo package : " + aVar.a());
        c.a(a, "WeiboMultiMessage WeiboInfo supportApi : " + aVar.b());
        if (aVar.b() < 10351) {
            return false;
        }
        if (aVar.b() < 10352 && bVar.c != null && (bVar.c instanceof CmdObject)) {
            bVar.c = null;
        }
        return true;
    }
}
