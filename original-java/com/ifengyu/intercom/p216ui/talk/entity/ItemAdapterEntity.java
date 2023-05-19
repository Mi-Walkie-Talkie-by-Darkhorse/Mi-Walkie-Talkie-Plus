package com.ifengyu.intercom.p216ui.talk.entity;

/* renamed from: com.ifengyu.intercom.ui.talk.entity.ItemAdapterEntity */
/* loaded from: classes2.dex */
public class ItemAdapterEntity<T> {
    public static final int TYPE_CONTACT = 3;
    public static final int TYPE_GROUP = 4;
    public static final int TYPE_SECTION = 1;
    private T data;
    private int type;

    public ItemAdapterEntity(int i, T t) {
        this.type = i;
        this.data = t;
    }

    public T getData() {
        return this.data;
    }

    public int getType() {
        return this.type;
    }

    public void setData(T t) {
        this.data = t;
    }

    public void setType(int i) {
        this.type = i;
    }
}
