package com.ifengyu.intercom.p189l.p198b.p201c;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;

/* renamed from: com.ifengyu.intercom.l.b.c.j1 */
/* loaded from: classes2.dex */
public class ChannelTypeTabAdapter extends FragmentStateAdapter {

    /* renamed from: i */
    private final Fragment[] f14167i;

    public ChannelTypeTabAdapter(@NonNull Fragment fragment, Fragment[] fragmentArr) {
        super(fragment);
        this.f14167i = fragmentArr;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @NonNull
    /* renamed from: g */
    public Fragment mo10625g(int i) {
        return this.f14167i[i];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f14167i.length;
    }

    public ChannelTypeTabAdapter(@NonNull FragmentActivity fragmentActivity, Fragment[] fragmentArr) {
        super(fragmentActivity);
        this.f14167i = fragmentArr;
    }
}
