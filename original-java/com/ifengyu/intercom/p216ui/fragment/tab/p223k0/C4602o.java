package com.ifengyu.intercom.p216ui.fragment.tab.p223k0;

import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.talk.models.RecentTalkModel;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.ui.fragment.tab.k0.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C4602o implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C4602o f15337a = new C4602o();

    private /* synthetic */ C4602o() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        RecentTalkModel recentTalkModel = (RecentTalkModel) obj;
        C4161y.m11054a(RecentTalkPresenter.f15346c, "deleteRecentTalk success");
    }
}
