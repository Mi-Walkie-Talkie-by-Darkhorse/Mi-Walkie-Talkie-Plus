package com.ifengyu.talk.p235e;

import com.ifengyu.talk.http.entity.TempMember;
import java.util.Comparator;

/* renamed from: com.ifengyu.talk.e.b */
/* loaded from: classes2.dex */
public class TempMemberComparator implements Comparator<TempMember> {

    /* renamed from: a */
    private final String f16587a;

    public TempMemberComparator(String str) {
        this.f16587a = str;
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(TempMember tempMember, TempMember tempMember2) {
        if (tempMember == null || tempMember2 == null) {
            return 0;
        }
        if (tempMember.getAccount().equals(this.f16587a)) {
            return -1;
        }
        if (tempMember2.getAccount().equals(this.f16587a)) {
            return 1;
        }
        return Long.compare(tempMember.getJoinTime(), tempMember2.getJoinTime());
    }
}
