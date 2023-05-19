package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.RadioExamFragment_ViewBinding */
/* loaded from: classes2.dex */
public class RadioExamFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private RadioExamFragment f15163a;

    /* renamed from: b */
    private View f15164b;

    /* renamed from: c */
    private View f15165c;

    /* renamed from: com.ifengyu.intercom.ui.fragment.RadioExamFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C4489a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ RadioExamFragment f15166a;

        C4489a(RadioExamFragment_ViewBinding radioExamFragment_ViewBinding, RadioExamFragment radioExamFragment) {
            this.f15166a = radioExamFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15166a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.RadioExamFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C4490b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ RadioExamFragment f15167a;

        C4490b(RadioExamFragment_ViewBinding radioExamFragment_ViewBinding, RadioExamFragment radioExamFragment) {
            this.f15167a = radioExamFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15167a.onViewClicked(view);
        }
    }

    @UiThread
    public RadioExamFragment_ViewBinding(RadioExamFragment radioExamFragment, View view) {
        this.f15163a = radioExamFragment;
        radioExamFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.ll_radio_examination, "method 'onViewClicked'");
        this.f15164b = findRequiredView;
        findRequiredView.setOnClickListener(new C4489a(this, radioExamFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.ll_radio_question_bank, "method 'onViewClicked'");
        this.f15165c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4490b(this, radioExamFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RadioExamFragment radioExamFragment = this.f15163a;
        if (radioExamFragment != null) {
            this.f15163a = null;
            radioExamFragment.mTopbar = null;
            this.f15164b.setOnClickListener(null);
            this.f15164b = null;
            this.f15165c.setOnClickListener(null);
            this.f15165c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
