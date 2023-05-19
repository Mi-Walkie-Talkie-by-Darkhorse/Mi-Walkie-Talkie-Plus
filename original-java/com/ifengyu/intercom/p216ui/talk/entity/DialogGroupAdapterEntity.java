package com.ifengyu.intercom.p216ui.talk.entity;

import com.shanlitech.p245et.model.Member;

/* renamed from: com.ifengyu.intercom.ui.talk.entity.DialogGroupAdapterEntity */
/* loaded from: classes2.dex */
public class DialogGroupAdapterEntity {
    public static final int STATE_IN_GROUP = 1;
    public static final int STATE_LOADING = 2;
    private Member member;
    private int state;

    public DialogGroupAdapterEntity(int i, Member member) {
        this.state = i;
        this.member = member;
    }

    public Member getMember() {
        return this.member;
    }

    public int getState() {
        return this.state;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public void setState(int i) {
        this.state = i;
    }
}
