package com.ifengyu.intercom.p216ui.fragment;

import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.activity.UserImprovePlanActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.login.LoginActivity;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.span.QMUITouchableSpan;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* renamed from: com.ifengyu.intercom.ui.fragment.y1 */
/* loaded from: classes2.dex */
public class UserAuthPermissionFragment extends BaseFragment {

    /* renamed from: A */
    private QMUISpanTouchFixTextView f15386A;

    /* renamed from: B */
    private AppCompatCheckBox f15387B;

    /* renamed from: C */
    private View f15388C;

    /* renamed from: z */
    private QMUISpanTouchFixTextView f15389z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserAuthPermissionFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.y1$a */
    /* loaded from: classes2.dex */
    public class C4639a extends QMUITouchableSpan {
        C4639a(UserAuthPermissionFragment userAuthPermissionFragment, View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11978a(1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserAuthPermissionFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.y1$b */
    /* loaded from: classes2.dex */
    public class C4640b extends QMUITouchableSpan {
        C4640b(UserAuthPermissionFragment userAuthPermissionFragment, View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11978a(2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserAuthPermissionFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.y1$c */
    /* loaded from: classes2.dex */
    public class C4641c extends QMUITouchableSpan {
        C4641c(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UserImprovePlanActivity.start(UserAuthPermissionFragment.this.getContext());
        }
    }

    /* renamed from: g3 */
    private void m9811g3() {
        MiTalkClientUtil.m11188r0(true);
        startActivity(LoginActivity.m9767N(getContext()));
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    /* renamed from: h3 */
    private SpannableString m9810h3() {
        String m8603o = UIUtils.m8603o(R.string.user_improve_join_prefix);
        String m8603o2 = UIUtils.m8603o(R.string.user_improve_plan);
        String m8603o3 = UIUtils.m8603o(R.string.user_improve_join_suffix);
        SpannableString spannableString = new SpannableString(m8603o + m8603o2 + m8603o3);
        C4641c c4641c = new C4641c(this.f15386A, 0, 0, 0, 0);
        c4641c.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4641c.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        c4641c.m7630j(true);
        spannableString.setSpan(c4641c, m8603o.length(), m8603o.length() + m8603o2.length(), 17);
        return spannableString;
    }

    /* renamed from: i3 */
    private SpannableString m9809i3() {
        String m8603o = UIUtils.m8603o(R.string.user_privacy_agree_prefix);
        String m8603o2 = UIUtils.m8603o(R.string.user_protocol_click);
        String m8603o3 = UIUtils.m8603o(R.string.privacy_center_space);
        String m8603o4 = UIUtils.m8603o(R.string.privacy_agreement_click);
        String str = m8603o + m8603o2 + m8603o3 + m8603o4;
        SpannableString spannableString = new SpannableString(str);
        C4639a c4639a = new C4639a(this, this.f15389z, 0, 0, 0, 0);
        c4639a.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4639a.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4639a, m8603o.length(), m8603o.length() + m8603o2.length(), 17);
        C4640b c4640b = new C4640b(this, this.f15389z, 0, 0, 0, 0);
        c4640b.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4640b.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4640b, str.length() - m8603o4.length(), str.length(), 17);
        return spannableString;
    }

    /* renamed from: j3 */
    private void m9808j3() {
        this.f15389z = (QMUISpanTouchFixTextView) this.f15388C.findViewById(R.id.tvReadAndAgreeUserPrivacy);
        this.f15386A = (QMUISpanTouchFixTextView) this.f15388C.findViewById(R.id.tvJoinUserImprovePlan);
        this.f15387B = (AppCompatCheckBox) this.f15388C.findViewById(R.id.cbImprove);
        QMUIRoundButton qMUIRoundButton = (QMUIRoundButton) this.f15388C.findViewById(R.id.btnAgree);
        QMUIRoundButton qMUIRoundButton2 = (QMUIRoundButton) this.f15388C.findViewById(R.id.btnExit);
        qMUIRoundButton.setChangeAlphaWhenPress(true);
        qMUIRoundButton2.setChangeAlphaWhenPress(true);
        this.f15389z.setMovementMethodDefault();
        this.f15389z.setText(m9809i3());
        this.f15386A.setMovementMethodDefault();
        this.f15386A.setText(m9810h3());
        this.f15387B.setOnCheckedChangeListener(C4539m1.f15239a);
        qMUIRoundButton.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.l1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserAuthPermissionFragment.this.m9805m3(view);
            }
        });
        qMUIRoundButton2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.k1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserAuthPermissionFragment.this.m9803o3(view);
            }
        });
        MiTalkiApp.m14296h().m14299e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m9805m3(View view) {
        m9811g3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m9803o3(View view) {
        MiTalkClientUtil.m11178w0(false);
        getActivity().finish();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        this.f15388C = LayoutInflater.from(getContext()).inflate(R.layout.fragment_user_auth_permission, (ViewGroup) null);
        m9808j3();
        return this.f15388C;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        AppCompatCheckBox appCompatCheckBox = this.f15387B;
        if (appCompatCheckBox != null) {
            appCompatCheckBox.setChecked(MiTalkClientUtil.m11220b0());
        }
    }
}
