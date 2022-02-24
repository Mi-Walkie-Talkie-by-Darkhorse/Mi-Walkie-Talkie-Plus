package com.ifengyu.intercom.g.d;

import com.google.gson.Gson;
import com.ifengyu.intercom.bean.Message;
import okhttp3.Response;

/* compiled from: MessageCallback.java */
/* loaded from: classes2.dex */
public abstract class g extends b<Message> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public Message a(Response response, int i) throws Exception {
        return (Message) new Gson().fromJson(response.body().string(), (Class<Object>) Message.class);
    }
}
