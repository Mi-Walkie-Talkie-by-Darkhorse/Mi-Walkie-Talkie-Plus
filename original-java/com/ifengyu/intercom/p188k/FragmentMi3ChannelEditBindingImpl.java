package com.ifengyu.intercom.p188k;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.p040h.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.intercom.p216ui.widget.view.QMUIWindowInsetLinearLayout;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.k.l */
/* loaded from: classes2.dex */
public class FragmentMi3ChannelEditBindingImpl extends FragmentMi3ChannelEditBinding {
    @Nullable

    /* renamed from: N */
    private static final ViewDataBinding.C0603g f13980N = null;
    @Nullable

    /* renamed from: O */
    private static final SparseIntArray f13981O;
    @NonNull

    /* renamed from: K */
    private final QMUIWindowInsetLinearLayout f13982K;

    /* renamed from: L */
    private View$OnClickListenerC3941a f13983L;

    /* renamed from: M */
    private long f13984M;

    /* compiled from: FragmentMi3ChannelEditBindingImpl.java */
    /* renamed from: com.ifengyu.intercom.k.l$a */
    /* loaded from: classes2.dex */
    public static class View$OnClickListenerC3941a implements View.OnClickListener {

        /* renamed from: a */
        private View.OnClickListener f13985a;

        /* renamed from: a */
        public View$OnClickListenerC3941a m11966a(View.OnClickListener onClickListener) {
            this.f13985a = onClickListener;
            if (onClickListener == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f13985a.onClick(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13981O = sparseIntArray;
        sparseIntArray.put(R.id.topBar, 12);
        sparseIntArray.put(R.id.tv_description, 13);
    }

    public FragmentMi3ChannelEditBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 14, f13980N, f13981O));
    }

    /* renamed from: H */
    private boolean m11967H(MutableLiveData<ChannelModel> mutableLiveData, int i) {
        if (i == 0) {
            synchronized (this) {
                this.f13984M |= 1;
            }
            return true;
        }
        return false;
    }

    @Override // com.ifengyu.intercom.p188k.FragmentMi3ChannelEditBinding
    /* renamed from: F */
    public void mo11969F(@Nullable Mi3ViewModel mi3ViewModel) {
        this.f13975J = mi3ViewModel;
        synchronized (this) {
            this.f13984M |= 4;
        }
        m22972b(2);
        super.m22985z();
    }

    /* renamed from: G */
    public void m11968G() {
        synchronized (this) {
            this.f13984M = 8L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        long j;
        View$OnClickListenerC3941a view$OnClickListenerC3941a;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int i;
        int i2;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        boolean z;
        boolean z2;
        synchronized (this) {
            j = this.f13984M;
            this.f13984M = 0L;
        }
        View.OnClickListener onClickListener = this.f13974I;
        Mi3ViewModel mi3ViewModel = this.f13975J;
        String str13 = null;
        if ((j & 10) == 0 || onClickListener == null) {
            view$OnClickListenerC3941a = null;
        } else {
            View$OnClickListenerC3941a view$OnClickListenerC3941a2 = this.f13983L;
            if (view$OnClickListenerC3941a2 == null) {
                view$OnClickListenerC3941a2 = new View$OnClickListenerC3941a();
                this.f13983L = view$OnClickListenerC3941a2;
            }
            view$OnClickListenerC3941a = view$OnClickListenerC3941a2.m11966a(onClickListener);
        }
        int i3 = ((j & 13) > 0L ? 1 : ((j & 13) == 0L ? 0 : -1));
        if (i3 != 0) {
            MutableLiveData<ChannelModel> m11460x = mi3ViewModel != null ? mi3ViewModel.m11460x() : null;
            m23008D(0, m11460x);
            ChannelModel value = m11460x != null ? m11460x.getValue() : null;
            if (value != null) {
                String displayNameSuffix = value.getDisplayNameSuffix();
                z = value.getIsCustomCh();
                str8 = value.getDisplaySendFreq();
                str9 = value.getDisplayName();
                str10 = value.getDisplaySendTone();
                z2 = value.getIsRemoteCh();
                str11 = value.getDisplayReceiveTone();
                str12 = value.getDisplayNamePrefix();
                str13 = value.getDisplayReceiveFreq();
                str7 = displayNameSuffix;
            } else {
                str7 = null;
                str8 = null;
                str9 = null;
                str10 = null;
                str11 = null;
                str12 = null;
                z = false;
                z2 = false;
            }
            if (i3 != 0) {
                j |= z ? 32L : 16L;
            }
            if ((j & 13) != 0) {
                j |= z2 ? 128L : 64L;
            }
            i = z ? 0 : 8;
            str5 = str8;
            i2 = z2 ? 0 : 8;
            str6 = str9;
            str2 = str12;
            str3 = str7;
            str4 = str13;
            str = str10;
            str13 = str11;
        } else {
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            str5 = null;
            str6 = null;
            i = 0;
            i2 = 0;
        }
        if ((10 & j) != 0) {
            this.f13976w.setOnClickListener(view$OnClickListenerC3941a);
            this.f13977x.setOnClickListener(view$OnClickListenerC3941a);
            this.f13979z.setOnClickListener(view$OnClickListenerC3941a);
            this.f13966A.setOnClickListener(view$OnClickListenerC3941a);
            this.f13967B.setOnClickListener(view$OnClickListenerC3941a);
            this.f13968C.setOnClickListener(view$OnClickListenerC3941a);
            this.f13969D.setOnClickListener(view$OnClickListenerC3941a);
        }
        if ((j & 13) != 0) {
            this.f13978y.setVisibility(i);
            this.f13979z.setValueText(str13);
            this.f13966A.setValueText(str);
            this.f13967B.setTitleText(str2);
            this.f13967B.setValueText(str3);
            this.f13968C.setValueText(str4);
            this.f13969D.setValueText(str5);
            TextViewBindingAdapter.m22963b(this.f13970E, str4);
            TextViewBindingAdapter.m22963b(this.f13971F, str6);
            this.f13972G.setVisibility(i2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f13984M != 0;
        }
    }

    @Override // com.ifengyu.intercom.p188k.FragmentMi3ChannelEditBinding
    public void setClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f13974I = onClickListener;
        synchronized (this) {
            this.f13984M |= 2;
        }
        m22972b(1);
        super.m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m11967H((MutableLiveData) obj, i2);
    }

    private FragmentMi3ChannelEditBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (QMUIRoundButton) objArr[10], (QMUIRoundButton) objArr[11], (LinearLayout) objArr[4], (ItemView) objArr[8], (ItemView) objArr[9], (ItemView) objArr[5], (ItemView) objArr[6], (ItemView) objArr[7], (TextView) objArr[3], (TextView) objArr[2], (LinearLayout) objArr[1], (QMUITopBarLayout) objArr[12], (TextView) objArr[13]);
        this.f13984M = -1L;
        this.f13976w.setTag(null);
        this.f13977x.setTag(null);
        this.f13978y.setTag(null);
        this.f13979z.setTag(null);
        this.f13966A.setTag(null);
        this.f13967B.setTag(null);
        this.f13968C.setTag(null);
        this.f13969D.setTag(null);
        QMUIWindowInsetLinearLayout qMUIWindowInsetLinearLayout = (QMUIWindowInsetLinearLayout) objArr[0];
        this.f13982K = qMUIWindowInsetLinearLayout;
        qMUIWindowInsetLinearLayout.setTag(null);
        this.f13970E.setTag(null);
        this.f13971F.setTag(null);
        this.f13972G.setTag(null);
        m23010B(view);
        m11968G();
    }
}
