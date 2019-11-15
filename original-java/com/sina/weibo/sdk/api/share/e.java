package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.api.a;
import com.sina.weibo.sdk.b;

/* compiled from: SendMessageToWeiboRequest */
public class e extends b {
    public a b;

    public int a() {
        return 1;
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        bundle.putAll(this.b.a(bundle));
    }

    /* access modifiers changed from: 0000 */
    public final boolean a(Context context, b.a aVar, g gVar) {
        if (this.b == null || aVar == null || !aVar.c()) {
            return false;
        }
        if (gVar == null || gVar.a(context, aVar, this.b)) {
            return this.b.a();
        }
        return false;
    }
}
