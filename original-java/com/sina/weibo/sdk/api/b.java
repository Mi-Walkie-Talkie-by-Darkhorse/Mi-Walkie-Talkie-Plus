package com.sina.weibo.sdk.api;

import android.os.Bundle;
import com.sina.weibo.sdk.utils.c;

/* compiled from: WeiboMultiMessage */
public final class b {
    public static int e = 1;
    public static int f = 2;
    public TextObject a;
    public ImageObject b;
    public BaseMediaObject c;
    public int d;

    public Bundle a(Bundle bundle) {
        if (this.a != null) {
            bundle.putParcelable("_weibo_message_text", this.a);
            bundle.putString("_weibo_message_text_extra", this.a.b());
        }
        if (this.b != null) {
            bundle.putParcelable("_weibo_message_image", this.b);
            bundle.putString("_weibo_message_image_extra", this.b.b());
        }
        if (this.c != null) {
            bundle.putParcelable("_weibo_message_media", this.c);
            bundle.putString("_weibo_message_media_extra", this.c.b());
        }
        return bundle;
    }

    public b b(Bundle bundle) {
        this.a = (TextObject) bundle.getParcelable("_weibo_message_text");
        if (this.a != null) {
            this.a.a(bundle.getString("_weibo_message_text_extra"));
        }
        this.b = (ImageObject) bundle.getParcelable("_weibo_message_image");
        if (this.b != null) {
            this.b.a(bundle.getString("_weibo_message_image_extra"));
        }
        this.c = (BaseMediaObject) bundle.getParcelable("_weibo_message_media");
        if (this.c != null) {
            this.c.a(bundle.getString("_weibo_message_media_extra"));
        }
        return this;
    }

    public boolean a() {
        if (this.a != null && !this.a.a()) {
            c.c("WeiboMultiMessage", "checkArgs fail, textObject is invalid");
            return false;
        } else if (this.b != null && !this.b.a()) {
            c.c("WeiboMultiMessage", "checkArgs fail, imageObject is invalid");
            return false;
        } else if (this.c != null && !this.c.a()) {
            c.c("WeiboMultiMessage", "checkArgs fail, mediaObject is invalid");
            return false;
        } else if (this.a != null || this.b != null || this.c != null) {
            return true;
        } else {
            c.c("WeiboMultiMessage", "checkArgs fail, textObject and imageObject and mediaObject is null");
            return false;
        }
    }

    public int b() {
        return this.d;
    }
}
