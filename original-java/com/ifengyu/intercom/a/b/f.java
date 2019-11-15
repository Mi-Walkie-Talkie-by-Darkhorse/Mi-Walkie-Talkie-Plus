package com.ifengyu.intercom.a.b;

import com.google.gson.Gson;
import com.ifengyu.intercom.bean.Message;
import okhttp3.Response;

/* compiled from: MessageCallback */
public abstract class f extends b<Message> {
    /* renamed from: a */
    public Message b(Response response, int i) throws Exception {
        return (Message) new Gson().fromJson(response.body().string(), Message.class);
    }
}
