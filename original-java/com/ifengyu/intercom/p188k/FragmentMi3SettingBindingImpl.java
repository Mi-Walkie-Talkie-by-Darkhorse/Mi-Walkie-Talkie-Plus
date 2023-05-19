package com.ifengyu.intercom.p188k;

import android.support.p022v4.media.session.PlaybackStateCompat;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.p040h.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3.models.Mi3ChannelState;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.intercom.p216ui.widget.view.QMUIWindowInsetLinearLayout;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.r */
/* loaded from: classes2.dex */
public class FragmentMi3SettingBindingImpl extends FragmentMi3SettingBinding {
    @Nullable

    /* renamed from: Z */
    private static final ViewDataBinding.C0603g f14023Z = null;
    @Nullable

    /* renamed from: b0 */
    private static final SparseIntArray f14024b0;
    @NonNull

    /* renamed from: W */
    private final QMUIWindowInsetLinearLayout f14025W;

    /* renamed from: X */
    private View$OnClickListenerC3942a f14026X;

    /* renamed from: Y */
    private long f14027Y;

    /* compiled from: FragmentMi3SettingBindingImpl.java */
    /* renamed from: com.ifengyu.intercom.k.r$a */
    /* loaded from: classes2.dex */
    public static class View$OnClickListenerC3942a implements View.OnClickListener {

        /* renamed from: a */
        private View.OnClickListener f14028a;

        /* renamed from: a */
        public View$OnClickListenerC3942a m11960a(View.OnClickListener onClickListener) {
            this.f14028a = onClickListener;
            if (onClickListener == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f14028a.onClick(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f14024b0 = sparseIntArray;
        sparseIntArray.put(R.id.topBar, 22);
        sparseIntArray.put(R.id.ch1Line, 23);
        sparseIntArray.put(R.id.ch2Line, 24);
    }

    public FragmentMi3SettingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 25, f14023Z, f14024b0));
    }

    /* renamed from: H */
    private boolean m11961H(MutableLiveData<Mi3ChannelState> mutableLiveData, int i) {
        if (i == 0) {
            synchronized (this) {
                this.f14027Y |= 1;
            }
            return true;
        }
        return false;
    }

    @Override // com.ifengyu.intercom.p188k.FragmentMi3SettingBinding
    /* renamed from: F */
    public void mo11963F(@Nullable Mi3ViewModel mi3ViewModel) {
        this.f14018V = mi3ViewModel;
        synchronized (this) {
            this.f14027Y |= 4;
        }
        m22972b(2);
        super.m22985z();
    }

    /* renamed from: G */
    public void m11962G() {
        synchronized (this) {
            this.f14027Y = 8L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        long j;
        View$OnClickListenerC3942a view$OnClickListenerC3942a;
        String str;
        String str2;
        String str3;
        String str4;
        ChannelModel channelModel;
        boolean z;
        String str5;
        String str6;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        ChannelModel channelModel2;
        ChannelModel channelModel3;
        String str7;
        boolean z2;
        String str8;
        String str9;
        String str10;
        String str11;
        boolean z3;
        synchronized (this) {
            j = this.f14027Y;
            this.f14027Y = 0L;
        }
        View.OnClickListener onClickListener = this.f14017U;
        Mi3ViewModel mi3ViewModel = this.f14018V;
        if ((j & 10) == 0 || onClickListener == null) {
            view$OnClickListenerC3942a = null;
        } else {
            View$OnClickListenerC3942a view$OnClickListenerC3942a2 = this.f14026X;
            if (view$OnClickListenerC3942a2 == null) {
                view$OnClickListenerC3942a2 = new View$OnClickListenerC3942a();
                this.f14026X = view$OnClickListenerC3942a2;
            }
            view$OnClickListenerC3942a = view$OnClickListenerC3942a2.m11960a(onClickListener);
        }
        int i6 = ((j & 13) > 0L ? 1 : ((j & 13) == 0L ? 0 : -1));
        if (i6 != 0) {
            MutableLiveData<Mi3ChannelState> m11464t = mi3ViewModel != null ? mi3ViewModel.m11464t() : null;
            m23008D(0, m11464t);
            Mi3ChannelState value = m11464t != null ? m11464t.getValue() : null;
            if (value != null) {
                channelModel3 = value.getCh2Model();
                channelModel2 = value.getCh1Model();
            } else {
                channelModel2 = null;
                channelModel3 = null;
            }
            if (channelModel3 != null) {
                str4 = channelModel3.getDisplaySendFreq();
                str7 = channelModel3.getDisplayName();
                z2 = channelModel3.getIsCustomCh();
                str8 = channelModel3.getDisplayReceiveFreq();
            } else {
                str4 = null;
                str7 = null;
                z2 = false;
                str8 = null;
            }
            if (i6 != 0) {
                j |= z2 ? 128L : 64L;
            }
            boolean z4 = channelModel3 == null;
            boolean z5 = channelModel3 != null;
            boolean z6 = channelModel2 != null;
            if ((j & 13) != 0) {
                j = z4 ? j | 512 : j | 256;
            }
            if ((j & 13) != 0) {
                j |= z5 ? PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID : PlaybackStateCompat.ACTION_PREPARE;
            }
            if ((j & 13) != 0) {
                j |= z6 ? 32L : 16L;
            }
            if (channelModel2 != null) {
                str9 = channelModel2.getDisplaySendFreq();
                str10 = channelModel2.getDisplayReceiveFreq();
                str11 = channelModel2.getDisplayName();
                z3 = channelModel2.getIsCustomCh();
            } else {
                str9 = null;
                str10 = null;
                str11 = null;
                z3 = false;
            }
            if ((j & 13) != 0) {
                j |= z3 ? 2048L : 1024L;
            }
            int i7 = z2 ? 0 : 8;
            i = z5 ? 0 : 8;
            str3 = str7;
            i2 = i7;
            str6 = str8;
            i3 = z6 ? 0 : 8;
            str2 = str10;
            str5 = str11;
            i4 = z3 ? 0 : 8;
            z = z4;
            String str12 = str9;
            channelModel = channelModel2;
            str = str12;
        } else {
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            channelModel = null;
            z = false;
            str5 = null;
            str6 = null;
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        boolean z7 = (256 & j) != 0 && channelModel == null;
        int i8 = ((j & 13) > 0L ? 1 : ((j & 13) == 0L ? 0 : -1));
        if (i8 != 0) {
            boolean z8 = z ? true : z7;
            if (i8 != 0) {
                j |= z8 ? PlaybackStateCompat.ACTION_PLAY_FROM_URI : 4096L;
            }
            i5 = z8 ? 0 : 8;
        } else {
            i5 = 0;
        }
        if ((10 & j) != 0) {
            this.f14019w.setOnClickListener(view$OnClickListenerC3942a);
            this.f14020x.setOnClickListener(view$OnClickListenerC3942a);
            this.f14001E.setOnClickListener(view$OnClickListenerC3942a);
            this.f14008L.setOnClickListener(view$OnClickListenerC3942a);
            this.f14009M.setOnClickListener(view$OnClickListenerC3942a);
            this.f14010N.setOnClickListener(view$OnClickListenerC3942a);
            this.f14011O.setOnClickListener(view$OnClickListenerC3942a);
            this.f14012P.setOnClickListener(view$OnClickListenerC3942a);
            this.f14013Q.setOnClickListener(view$OnClickListenerC3942a);
            this.f14014R.setOnClickListener(view$OnClickListenerC3942a);
            this.f14015S.setOnClickListener(view$OnClickListenerC3942a);
        }
        if ((j & 13) != 0) {
            this.f14019w.setVisibility(i5);
            this.f14020x.setVisibility(i3);
            TextViewBindingAdapter.m22963b(this.f14022z, str5);
            TextViewBindingAdapter.m22963b(this.f13997A, str2);
            int i9 = i4;
            this.f13998B.setVisibility(i9);
            TextViewBindingAdapter.m22963b(this.f13999C, str);
            this.f13999C.setVisibility(i9);
            this.f14000D.setVisibility(i9);
            this.f14001E.setVisibility(i);
            TextViewBindingAdapter.m22963b(this.f14003G, str3);
            TextViewBindingAdapter.m22963b(this.f14004H, str6);
            int i10 = i2;
            this.f14005I.setVisibility(i10);
            TextViewBindingAdapter.m22963b(this.f14006J, str4);
            this.f14006J.setVisibility(i10);
            this.f14007K.setVisibility(i10);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f14027Y != 0;
        }
    }

    @Override // com.ifengyu.intercom.p188k.FragmentMi3SettingBinding
    public void setClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f14017U = onClickListener;
        synchronized (this) {
            this.f14027Y |= 2;
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
        return m11961H((MutableLiveData) obj, i2);
    }

    private FragmentMi3SettingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (FrameLayout) objArr[13], (ConstraintLayout) objArr[1], (View) objArr[23], (TextView) objArr[2], (TextView) objArr[4], (TextView) objArr[3], (TextView) objArr[6], (TextView) objArr[5], (ConstraintLayout) objArr[7], (View) objArr[24], (TextView) objArr[8], (TextView) objArr[10], (TextView) objArr[9], (TextView) objArr[12], (TextView) objArr[11], (ItemView) objArr[20], (ItemView) objArr[14], (ItemView) objArr[17], (ItemView) objArr[15], (ItemView) objArr[18], (ItemView) objArr[16], (TextView) objArr[21], (ItemView) objArr[19], (QMUITopBarLayout) objArr[22]);
        this.f14027Y = -1L;
        this.f14019w.setTag(null);
        this.f14020x.setTag(null);
        this.f14022z.setTag(null);
        this.f13997A.setTag(null);
        this.f13998B.setTag(null);
        this.f13999C.setTag(null);
        this.f14000D.setTag(null);
        this.f14001E.setTag(null);
        this.f14003G.setTag(null);
        this.f14004H.setTag(null);
        this.f14005I.setTag(null);
        this.f14006J.setTag(null);
        this.f14007K.setTag(null);
        this.f14008L.setTag(null);
        this.f14009M.setTag(null);
        this.f14010N.setTag(null);
        this.f14011O.setTag(null);
        this.f14012P.setTag(null);
        this.f14013Q.setTag(null);
        this.f14014R.setTag(null);
        this.f14015S.setTag(null);
        QMUIWindowInsetLinearLayout qMUIWindowInsetLinearLayout = (QMUIWindowInsetLinearLayout) objArr[0];
        this.f14025W = qMUIWindowInsetLinearLayout;
        qMUIWindowInsetLinearLayout.setTag(null);
        m23010B(view);
        m11962G();
    }
}
