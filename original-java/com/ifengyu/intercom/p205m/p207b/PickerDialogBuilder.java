package com.ifengyu.intercom.p205m.p207b;

import android.content.Context;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.ifengyu.intercom.p216ui.widget.view.NumberPickerView;
import com.qmuiteam.qmui.p242c.QMUISkinHelper;
import com.qmuiteam.qmui.p242c.QMUISkinValueBuilder;
import com.qmuiteam.qmui.util.QMUIResHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* renamed from: com.ifengyu.intercom.m.b.h */
/* loaded from: classes2.dex */
public class PickerDialogBuilder extends BaseQMUIDialogBuilder<PickerDialogBuilder> {

    /* renamed from: A */
    private InterfaceC4121c f14370A;

    /* renamed from: B */
    private InterfaceC4121c f14371B;

    /* renamed from: u */
    private NumberPickerView f14372u;

    /* renamed from: v */
    private NumberPickerView f14373v;

    /* renamed from: w */
    private String[] f14374w;

    /* renamed from: x */
    private String[][] f14375x;

    /* renamed from: y */
    private int f14376y;

    /* renamed from: z */
    private int f14377z;

    /* compiled from: PickerDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.h$a */
    /* loaded from: classes2.dex */
    class C4119a implements NumberPickerView.InterfaceC4954d {

        /* renamed from: a */
        final /* synthetic */ QMUIDialog f14378a;

        C4119a(QMUIDialog qMUIDialog) {
            this.f14378a = qMUIDialog;
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.NumberPickerView.InterfaceC4954d
        /* renamed from: a */
        public void mo8770a(NumberPickerView numberPickerView, int i, int i2) {
            if (i2 < PickerDialogBuilder.this.f14375x.length) {
                PickerDialogBuilder.this.f14373v.m8816P(PickerDialogBuilder.this.f14375x[i2]);
            }
            if (PickerDialogBuilder.this.f14370A != null) {
                PickerDialogBuilder.this.f14370A.m11412a(this.f14378a, numberPickerView, i, i2);
            }
        }
    }

    /* compiled from: PickerDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.h$b */
    /* loaded from: classes2.dex */
    class C4120b implements NumberPickerView.InterfaceC4954d {

        /* renamed from: a */
        final /* synthetic */ QMUIDialog f14380a;

        C4120b(QMUIDialog qMUIDialog) {
            this.f14380a = qMUIDialog;
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.NumberPickerView.InterfaceC4954d
        /* renamed from: a */
        public void mo8770a(NumberPickerView numberPickerView, int i, int i2) {
            if (PickerDialogBuilder.this.f14371B != null) {
                PickerDialogBuilder.this.f14371B.m11412a(this.f14380a, numberPickerView, i, i2);
            }
        }
    }

    /* compiled from: PickerDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.h$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC4121c {
        /* renamed from: a */
        void m11412a(QMUIDialog qMUIDialog, NumberPickerView numberPickerView, int i, int i2);
    }

    public PickerDialogBuilder(Context context) {
        super(context);
    }

    /* renamed from: I */
    public int m11419I() {
        return this.f14372u.getValue();
    }

    /* renamed from: J */
    public String m11418J() {
        return this.f14373v.getContentByCurrValue();
    }

    /* renamed from: K */
    public int m11417K() {
        return this.f14373v.getValue();
    }

    /* renamed from: L */
    public PickerDialogBuilder m11416L(int i) {
        this.f14376y = i;
        return this;
    }

    /* renamed from: M */
    public PickerDialogBuilder m11415M(String[] strArr) {
        this.f14374w = strArr;
        return this;
    }

    /* renamed from: N */
    public PickerDialogBuilder m11414N(int i) {
        this.f14377z = i;
        return this;
    }

    /* renamed from: O */
    public PickerDialogBuilder m11413O(String[][] strArr) {
        this.f14375x = strArr;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: j */
    public void mo7257j(QMUIDialog qMUIDialog, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        super.mo7257j(qMUIDialog, qMUIDialogRootLayout, context);
        String[] strArr = this.f14374w;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        this.f14372u.m8816P(strArr);
        int i = this.f14376y;
        if (i < this.f14374w.length) {
            this.f14372u.setValue(i);
            int i2 = this.f14376y;
            String[][] strArr2 = this.f14375x;
            if (i2 < strArr2.length) {
                String[] strArr3 = strArr2[i2];
                this.f14373v.m8816P(strArr3);
                int i3 = this.f14377z;
                if (i3 < strArr3.length) {
                    this.f14373v.setValue(i3);
                    return;
                }
                return;
            }
            this.f14373v.m8816P(strArr2[0]);
            return;
        }
        this.f14372u.setValue(0);
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: k */
    protected View mo7246k(QMUIDialog qMUIDialog, QMUIDialogView qMUIDialogView, Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.picker_dialog_layout, (ViewGroup) qMUIDialogView, false);
        this.f14372u = (NumberPickerView) inflate.findViewById(R.id.np_first);
        this.f14373v = (NumberPickerView) inflate.findViewById(R.id.np_second);
        NumberPickerView numberPickerView = this.f14372u;
        Typeface typeface = AppConstants.f13907a;
        numberPickerView.setContentTextTypeface(typeface);
        this.f14372u.setHintTextTypeface(typeface);
        this.f14373v.setContentTextTypeface(typeface);
        this.f14373v.setHintTextTypeface(typeface);
        this.f14372u.setOnValueChangedListener(new C4119a(qMUIDialog));
        this.f14373v.setOnValueChangedListener(new C4120b(qMUIDialog));
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: q */
    public View mo7245q(QMUIDialog qMUIDialog, QMUIDialogView qMUIDialogView, Context context) {
        if (m7293i()) {
            QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
            qMUISpanTouchFixTextView.setId(R.id.qmui_bottom_sheet_title);
            qMUISpanTouchFixTextView.setText(this.f17718c);
            qMUISpanTouchFixTextView.m6960c(0, 0, 1, QMUIResHelper.m7506b(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
            QMUIResHelper.m7507a(qMUISpanTouchFixTextView, R.attr.qmui_bottom_sheet_title_style);
            QMUISkinValueBuilder m7907a = QMUISkinValueBuilder.m7907a();
            m7907a.m7884x(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_title_text_color));
            m7907a.m7900h(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
            QMUISkinHelper.m7943g(qMUISpanTouchFixTextView, m7907a);
            m7907a.m7891q();
            return qMUISpanTouchFixTextView;
        }
        return null;
    }
}
