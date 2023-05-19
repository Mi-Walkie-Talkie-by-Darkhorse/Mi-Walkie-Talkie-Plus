package com.ifengyu.intercom.p216ui.talk.entity;

import com.ifengyu.talk.message.msgBody.MemberChangeBodyItem;

/* renamed from: com.ifengyu.intercom.ui.talk.entity.CreateCodeAdapterEntity */
/* loaded from: classes2.dex */
public class CreateCodeAdapterEntity {
    public static final int TYPE_LOADING = 2;
    public static final int TYPE_MEMBER = 1;
    private MemberChangeBodyItem memberInfo;
    private int type;

    public CreateCodeAdapterEntity(int i, MemberChangeBodyItem memberChangeBodyItem) {
        this.type = i;
        this.memberInfo = memberChangeBodyItem;
    }

    public MemberChangeBodyItem getMemberInfo() {
        return this.memberInfo;
    }

    public int getType() {
        return this.type;
    }

    public void setMemberInfo(MemberChangeBodyItem memberChangeBodyItem) {
        this.memberInfo = memberChangeBodyItem;
    }

    public void setType(int i) {
        this.type = i;
    }
}
