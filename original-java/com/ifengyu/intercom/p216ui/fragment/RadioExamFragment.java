package com.ifengyu.intercom.p216ui.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.activity.ExamQuestionBankActivity;
import com.ifengyu.intercom.p216ui.activity.WebViewActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.RadioExamFragment */
/* loaded from: classes2.dex */
public class RadioExamFragment extends BaseFragment {
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public /* synthetic */ void m10034i3(View view) {
        mo8048o2();
    }

    /* renamed from: j3 */
    public static RadioExamFragment m10033j3() {
        Bundle bundle = new Bundle();
        RadioExamFragment radioExamFragment = new RadioExamFragment();
        radioExamFragment.setArguments(bundle);
        return radioExamFragment;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_radio_exam, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10036g3();
        return inflate;
    }

    /* renamed from: g3 */
    protected void m10036g3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.radio_exam);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RadioExamFragment.this.m10034i3(view);
            }
        });
    }

    @OnClick({R.id.ll_radio_examination, R.id.ll_radio_question_bank})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.ll_radio_examination /* 2131296940 */:
                Intent intent = new Intent(getContext(), WebViewActivity.class);
                intent.setAction("com.ifengyu.intercom.action.EXAM_IFNO_QUERY");
                startActivity(intent);
                return;
            case R.id.ll_radio_question_bank /* 2131296941 */:
                startActivity(new Intent(getContext(), ExamQuestionBankActivity.class));
                return;
            default:
                return;
        }
    }
}
