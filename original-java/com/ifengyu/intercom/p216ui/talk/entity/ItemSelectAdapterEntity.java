package com.ifengyu.intercom.p216ui.talk.entity;

/* renamed from: com.ifengyu.intercom.ui.talk.entity.ItemSelectAdapterEntity */
/* loaded from: classes2.dex */
public class ItemSelectAdapterEntity<T> extends ItemAdapterEntity<T> {
    private boolean check;
    private boolean enable;

    public ItemSelectAdapterEntity(int i, T t) {
        super(i, t);
        this.enable = true;
    }

    public boolean isCheck() {
        return this.check;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setCheck(boolean z) {
        this.check = z;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }
}
