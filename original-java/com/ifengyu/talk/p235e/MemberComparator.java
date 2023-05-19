package com.ifengyu.talk.p235e;

import com.shanlitech.p245et.model.Member;
import java.util.Comparator;

/* renamed from: com.ifengyu.talk.e.a */
/* loaded from: classes2.dex */
public class MemberComparator implements Comparator<Member> {

    /* renamed from: a */
    private final long f16586a;

    public MemberComparator(long j) {
        this.f16586a = j;
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(Member member, Member member2) {
        if (member == null || member2 == null) {
            return 0;
        }
        if (member.getUid() == this.f16586a) {
            return -1;
        }
        if (member2.getUid() == this.f16586a) {
            return 1;
        }
        if (member.getInGroupTimeSecond() == member2.getInGroupTimeSecond()) {
            return Long.compare(member.getUid(), member2.getUid());
        }
        return Integer.compare(member.getInGroupTimeSecond(), member2.getInGroupTimeSecond());
    }
}
