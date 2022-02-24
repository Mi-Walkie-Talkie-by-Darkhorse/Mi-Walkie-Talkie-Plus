package com.ifengyu.intercom.lite.dialog.list;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.dialog.list.a;
import com.qmuiteam.qmui.c.e;
import com.qmuiteam.qmui.c.h;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.i;
import com.qmuiteam.qmui.util.l;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ItemListBuilder.java */
/* loaded from: classes2.dex */
public class d extends com.ifengyu.intercom.lite.c.a.a<d> {
    protected String A;
    private List<c> t;
    private List<View> u;
    private List<View> v;
    private boolean w;
    private int x;
    private boolean y;
    private c z;

    /* compiled from: ItemListBuilder.java */
    /* loaded from: classes2.dex */
    class a extends LinearLayoutManager {
        a(d dVar, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public RecyclerView.LayoutParams generateDefaultLayoutParams() {
            return new RecyclerView.LayoutParams(-1, -2);
        }
    }

    /* compiled from: ItemListBuilder.java */
    /* loaded from: classes2.dex */
    class b implements a.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.qmuiteam.qmui.widget.dialog.b f5384a;

        b(com.qmuiteam.qmui.widget.dialog.b bVar) {
            this.f5384a = bVar;
        }

        @Override // com.ifengyu.intercom.lite.dialog.list.a.b
        public void a(a.c cVar, int i, c cVar2) {
            if (d.this.z != null) {
                d.this.z.a(this.f5384a, cVar.itemView, i, cVar2.g);
            }
        }
    }

    /* compiled from: ItemListBuilder.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(com.qmuiteam.qmui.widget.dialog.b bVar, View view, int i, String str);
    }

    public d(Context context) {
        this(context, false);
    }

    public d b(String str) {
        this.t.add(new c(str, str));
        return this;
    }

    public d c(String str) {
        if (str != null && str.length() > 0) {
            this.A = str + a().getString(R.string.qmui_tool_fixellipsize);
        }
        return this;
    }

    public d d(int i) {
        this.x = i;
        return this;
    }

    protected boolean e() {
        String str = this.A;
        return (str == null || str.length() == 0) ? false : true;
    }

    public d(Context context, boolean z) {
        super(context);
        this.y = false;
        this.t = new ArrayList();
        this.w = z;
    }

    public d a(c cVar) {
        this.z = cVar;
        return this;
    }

    public d d(boolean z) {
        this.w = z;
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    protected View a(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogView qMUIDialogView, Context context) {
        LinearLayout linearLayout;
        RecyclerView recyclerView = new RecyclerView(context);
        a aVar = new a(this.w, this.y);
        recyclerView.setAdapter(aVar);
        recyclerView.setLayoutManager(new a(this, context));
        recyclerView.addItemDecoration(new b(context));
        List<View> list = this.u;
        LinearLayout linearLayout2 = null;
        int i = 1;
        if (list == null || list.size() <= 0) {
            linearLayout = null;
        } else {
            linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            for (View view : this.u) {
                if (view.getParent() != null) {
                    ((ViewGroup) view.getParent()).removeView(view);
                }
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, -2));
            }
        }
        if (this.v != null && this.u.size() > 0) {
            linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(1);
            for (View view2 : this.v) {
                if (view2.getParent() != null) {
                    ((ViewGroup) view2.getParent()).removeView(view2);
                }
                linearLayout2.addView(view2, new LinearLayout.LayoutParams(-1, -2));
            }
        }
        aVar.a(linearLayout, linearLayout2, this.t);
        aVar.setOnItemClickListener(new b(bVar));
        aVar.a(this.x);
        int i2 = this.x;
        if (linearLayout == null) {
            i = 0;
        }
        recyclerView.scrollToPosition(i2 + i);
        return recyclerView;
    }

    public d c(boolean z) {
        this.y = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    public View c(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogView qMUIDialogView, Context context) {
        if (!b()) {
            return null;
        }
        if (!e()) {
            QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
            qMUISpanTouchFixTextView.setId(R.id.qmui_bottom_sheet_title);
            qMUISpanTouchFixTextView.setText(this.f7534c);
            qMUISpanTouchFixTextView.a(0, 0, context.getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height), i.a(context, (int) R.attr.qmui_skin_support_bottom_sheet_separator_color));
            i.a(qMUISpanTouchFixTextView, (int) R.attr.qmui_bottom_sheet_title_style);
            h e = h.e();
            e.d(i.e(context, R.attr.qmui_skin_support_bottom_sheet_title_text_color));
            e.b(i.e(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
            e.a(qMUISpanTouchFixTextView, e);
            e.d();
            return qMUISpanTouchFixTextView;
        }
        QMUISpanTouchFixTextView qMUISpanTouchFixTextView2 = new QMUISpanTouchFixTextView(context);
        qMUISpanTouchFixTextView2.setId(R.id.qmui_bottom_sheet_title);
        qMUISpanTouchFixTextView2.setText(this.f7534c);
        i.a(qMUISpanTouchFixTextView2, (int) R.attr.qmui_bottom_sheet_title_style);
        qMUISpanTouchFixTextView2.setPadding(qMUISpanTouchFixTextView2.getPaddingLeft(), qMUISpanTouchFixTextView2.getPaddingTop(), qMUISpanTouchFixTextView2.getPaddingRight(), 0);
        QMUISpanTouchFixTextView qMUISpanTouchFixTextView3 = new QMUISpanTouchFixTextView(context);
        qMUISpanTouchFixTextView3.setId(l.a());
        qMUISpanTouchFixTextView3.setText(this.A);
        i.a(qMUISpanTouchFixTextView3, (int) R.attr.qmui_bottom_sheet_title_style);
        qMUISpanTouchFixTextView3.setTextColor(context.getColor(R.color.lite_dialog_subtitle_color));
        qMUISpanTouchFixTextView3.setTextSize(0, com.qmuiteam.qmui.util.d.a(context, 13));
        qMUISpanTouchFixTextView3.setPadding(qMUISpanTouchFixTextView3.getPaddingLeft(), 0, qMUISpanTouchFixTextView3.getPaddingRight(), qMUISpanTouchFixTextView3.getPaddingBottom());
        QMUILinearLayout qMUILinearLayout = new QMUILinearLayout(context);
        qMUILinearLayout.a(0, 0, context.getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height), i.a(context, (int) R.attr.qmui_skin_support_bottom_sheet_separator_color));
        qMUILinearLayout.setOrientation(1);
        qMUILinearLayout.addView(qMUISpanTouchFixTextView2, new LinearLayout.LayoutParams(-1, -2));
        qMUILinearLayout.addView(qMUISpanTouchFixTextView3, new LinearLayout.LayoutParams(-1, -2));
        return qMUILinearLayout;
    }
}
