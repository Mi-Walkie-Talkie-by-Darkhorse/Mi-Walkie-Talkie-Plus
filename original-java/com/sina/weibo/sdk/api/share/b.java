package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.b.a;

/* compiled from: BaseRequest */
public abstract class b extends a {
    /* access modifiers changed from: 0000 */
    public abstract boolean a(Context context, a aVar, g gVar);

    public void a(Bundle bundle) {
        bundle.putInt("_weibo_command_type", a());
        bundle.putString("_weibo_transaction", this.a);
    }
}
