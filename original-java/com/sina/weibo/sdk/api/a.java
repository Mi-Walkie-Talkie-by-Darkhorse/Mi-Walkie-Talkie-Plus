package com.sina.weibo.sdk.api;

import android.os.Bundle;
import com.sina.weibo.sdk.utils.c;

/* compiled from: WeiboMessage */
public final class a {
    public BaseMediaObject a;

    public Bundle a(Bundle bundle) {
        if (this.a != null) {
            bundle.putParcelable("_weibo_message_media", this.a);
            bundle.putString("_weibo_message_media_extra", this.a.b());
        }
        return bundle;
    }

    public boolean a() {
        if (this.a == null) {
            c.c("Weibo.WeiboMessage", "checkArgs fail, mediaObject is null");
            return false;
        } else if (this.a == null || this.a.a()) {
            return true;
        } else {
            c.c("Weibo.WeiboMessage", "checkArgs fail, mediaObject is invalid");
            return false;
        }
    }
}
