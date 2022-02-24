package com.ifengyu.intercom.lite.c.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.ui.widget.view.NumberPickerView;
import com.qmuiteam.qmui.c.e;
import com.qmuiteam.qmui.c.h;
import com.qmuiteam.qmui.util.i;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* compiled from: PickerDialogBuilder.java */
/* loaded from: classes2.dex */
public class f extends com.ifengyu.intercom.lite.c.a.a<f> {
    private c A;
    private NumberPickerView t;
    private NumberPickerView u;
    private String[] v;
    private String[][] w;
    private int x;
    private int y;
    private c z;

    /* compiled from: PickerDialogBuilder.java */
    /* loaded from: classes2.dex */
    class a implements NumberPickerView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.qmuiteam.qmui.widget.dialog.b f5361a;

        a(com.qmuiteam.qmui.widget.dialog.b bVar) {
            this.f5361a = bVar;
        }

        @Override // com.ifengyu.intercom.ui.widget.view.NumberPickerView.d
        public void a(NumberPickerView numberPickerView, int i, int i2) {
            if (i2 < f.this.w.length) {
                f.this.u.a(f.this.w[i2]);
            }
            if (f.this.z != null) {
                f.this.z.a(this.f5361a, numberPickerView, i, i2);
            }
        }
    }

    /* compiled from: PickerDialogBuilder.java */
    /* loaded from: classes2.dex */
    class b implements NumberPickerView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.qmuiteam.qmui.widget.dialog.b f5363a;

        b(com.qmuiteam.qmui.widget.dialog.b bVar) {
            this.f5363a = bVar;
        }

        @Override // com.ifengyu.intercom.ui.widget.view.NumberPickerView.d
        public void a(NumberPickerView numberPickerView, int i, int i2) {
            if (f.this.A != null) {
                f.this.A.a(this.f5363a, numberPickerView, i, i2);
            }
        }
    }

    /* compiled from: PickerDialogBuilder.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(com.qmuiteam.qmui.widget.dialog.b bVar, NumberPickerView numberPickerView, int i, int i2);
    }

    public f(Context context) {
        super(context);
    }

    public f e(int i) {
        this.y = i;
        return this;
    }

    public String f() {
        return this.u.getContentByCurrValue();
    }

    public int g() {
        return this.u.getValue();
    }

    public f a(String[] strArr) {
        this.v = strArr;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    public View c(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogView qMUIDialogView, Context context) {
        if (!b()) {
            return null;
        }
        QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
        qMUISpanTouchFixTextView.setId(R.id.qmui_bottom_sheet_title);
        qMUISpanTouchFixTextView.setText(this.f7534c);
        qMUISpanTouchFixTextView.a(0, 0, 1, i.a(context, (int) R.attr.qmui_skin_support_bottom_sheet_separator_color));
        i.a(qMUISpanTouchFixTextView, (int) R.attr.qmui_bottom_sheet_title_style);
        h e = h.e();
        e.d(i.e(context, R.attr.qmui_skin_support_bottom_sheet_title_text_color));
        e.b(i.e(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
        e.a(qMUISpanTouchFixTextView, e);
        e.d();
        return qMUISpanTouchFixTextView;
    }

    public f d(int i) {
        this.x = i;
        return this;
    }

    public int e() {
        return this.t.getValue();
    }

    public f a(String[][] strArr) {
        this.w = strArr;
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    protected View a(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogView qMUIDialogView, Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.picker_dialog_layout, (ViewGroup) qMUIDialogView, false);
        this.t = (NumberPickerView) inflate.findViewById(R.id.np_first);
        this.u = (NumberPickerView) inflate.findViewById(R.id.np_second);
        this.t.setContentTextTypeface(p.f5325c);
        this.t.setHintTextTypeface(p.f5325c);
        this.u.setContentTextTypeface(p.f5325c);
        this.u.setHintTextTypeface(p.f5325c);
        this.t.setOnValueChangedListener(new a(bVar));
        this.u.setOnValueChangedListener(new b(bVar));
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.c.a.a, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    public void a(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        super.a(bVar, qMUIDialogRootLayout, context);
        String[] strArr = this.v;
        if (strArr != null && strArr.length > 0) {
            this.t.a(strArr);
            int i = this.x;
            if (i < this.v.length) {
                this.t.setValue(i);
                int i2 = this.x;
                String[][] strArr2 = this.w;
                if (i2 < strArr2.length) {
                    String[] strArr3 = strArr2[i2];
                    this.u.a(strArr3);
                    int i3 = this.y;
                    if (i3 < strArr3.length) {
                        this.u.setValue(i3);
                        return;
                    }
                    return;
                }
                this.u.a(strArr2[0]);
                return;
            }
            this.t.setValue(0);
        }
    }
}
