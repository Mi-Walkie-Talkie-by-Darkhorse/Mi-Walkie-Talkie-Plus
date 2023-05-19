package com.ifengyu.intercom.dialog.list;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.p242c.QMUISkinHelper;
import com.qmuiteam.qmui.p242c.QMUISkinValueBuilder;
import com.qmuiteam.qmui.util.QMUIDisplayHelper;
import com.qmuiteam.qmui.util.QMUIResHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.ifengyu.intercom.dialog.list.d */
/* loaded from: classes2.dex */
public class ItemListBuilder extends BaseQMUIDialogBuilder<ItemListBuilder> {

    /* renamed from: A */
    private InterfaceC3847c f13686A;

    /* renamed from: B */
    protected String f13687B;

    /* renamed from: u */
    private List<BottomSheetListItemModel> f13688u;

    /* renamed from: v */
    private List<View> f13689v;

    /* renamed from: w */
    private List<View> f13690w;

    /* renamed from: x */
    private boolean f13691x;

    /* renamed from: y */
    private int f13692y;

    /* renamed from: z */
    private boolean f13693z;

    /* compiled from: ItemListBuilder.java */
    /* renamed from: com.ifengyu.intercom.dialog.list.d$a */
    /* loaded from: classes2.dex */
    class C3845a extends LinearLayoutManager {
        C3845a(ItemListBuilder itemListBuilder, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public RecyclerView.LayoutParams generateDefaultLayoutParams() {
            return new RecyclerView.LayoutParams(-1, -2);
        }
    }

    /* compiled from: ItemListBuilder.java */
    /* renamed from: com.ifengyu.intercom.dialog.list.d$b */
    /* loaded from: classes2.dex */
    class C3846b implements BottomSheetListAdapter.InterfaceC3843b {

        /* renamed from: a */
        final /* synthetic */ QMUIDialog f13694a;

        /* renamed from: b */
        final /* synthetic */ BottomSheetListAdapter f13695b;

        C3846b(QMUIDialog qMUIDialog, BottomSheetListAdapter bottomSheetListAdapter) {
            this.f13694a = qMUIDialog;
            this.f13695b = bottomSheetListAdapter;
        }

        @Override // com.ifengyu.intercom.dialog.list.BottomSheetListAdapter.InterfaceC3843b
        /* renamed from: a */
        public void mo12438a(BottomSheetListAdapter.C3844c c3844c, int i, BottomSheetListItemModel bottomSheetListItemModel) {
            if (ItemListBuilder.this.f13686A != null) {
                ItemListBuilder.this.f13686A.mo9161a(this.f13694a, c3844c.itemView, i, bottomSheetListItemModel.f13683h, this.f13695b);
            }
        }
    }

    /* compiled from: ItemListBuilder.java */
    /* renamed from: com.ifengyu.intercom.dialog.list.d$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC3847c {
        /* renamed from: a */
        void mo9161a(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter);
    }

    public ItemListBuilder(Context context) {
        this(context, false);
    }

    /* renamed from: F */
    public ItemListBuilder m12445F(String str) {
        this.f13688u.add(new BottomSheetListItemModel(str, str));
        return this;
    }

    /* renamed from: G */
    protected boolean m12444G() {
        String str = this.f13687B;
        return (str == null || str.length() == 0) ? false : true;
    }

    /* renamed from: H */
    public ItemListBuilder m12443H(int i) {
        this.f13692y = i;
        return this;
    }

    /* renamed from: I */
    public ItemListBuilder m12442I(boolean z) {
        this.f13693z = z;
        return this;
    }

    /* renamed from: J */
    public ItemListBuilder m12441J(boolean z) {
        this.f13691x = z;
        return this;
    }

    /* renamed from: K */
    public ItemListBuilder m12440K(InterfaceC3847c interfaceC3847c) {
        this.f13686A = interfaceC3847c;
        return this;
    }

    /* renamed from: L */
    public ItemListBuilder m12439L(String str) {
        if (str != null && str.length() > 0) {
            this.f13687B = str + m7294h().getString(R.string.qmui_tool_fixellipsize);
        }
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: k */
    protected View mo7246k(QMUIDialog qMUIDialog, QMUIDialogView qMUIDialogView, Context context) {
        LinearLayout linearLayout;
        RecyclerView recyclerView = new RecyclerView(context);
        BottomSheetListAdapter bottomSheetListAdapter = new BottomSheetListAdapter(this.f13691x, this.f13693z);
        recyclerView.setAdapter(bottomSheetListAdapter);
        recyclerView.setLayoutManager(new C3845a(this, context));
        recyclerView.addItemDecoration(new BottomSheetListItemDecoration(context));
        List<View> list = this.f13689v;
        LinearLayout linearLayout2 = null;
        if (list == null || list.size() <= 0) {
            linearLayout = null;
        } else {
            linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            for (View view : this.f13689v) {
                if (view.getParent() != null) {
                    ((ViewGroup) view.getParent()).removeView(view);
                }
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, -2));
            }
        }
        if (this.f13690w != null && this.f13689v.size() > 0) {
            linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(1);
            for (View view2 : this.f13690w) {
                if (view2.getParent() != null) {
                    ((ViewGroup) view2.getParent()).removeView(view2);
                }
                linearLayout2.addView(view2, new LinearLayout.LayoutParams(-1, -2));
            }
        }
        bottomSheetListAdapter.m12447k(linearLayout, linearLayout2, this.f13688u);
        bottomSheetListAdapter.setOnItemClickListener(new C3846b(qMUIDialog, bottomSheetListAdapter));
        bottomSheetListAdapter.m12448j(this.f13692y);
        recyclerView.scrollToPosition(this.f13692y + (linearLayout == null ? 0 : 1));
        return recyclerView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: q */
    public View mo7245q(QMUIDialog qMUIDialog, QMUIDialogView qMUIDialogView, Context context) {
        if (m7293i()) {
            if (!m12444G()) {
                QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
                qMUISpanTouchFixTextView.setId(R.id.qmui_bottom_sheet_title);
                qMUISpanTouchFixTextView.setText(this.f17718c);
                qMUISpanTouchFixTextView.m6960c(0, 0, context.getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height), QMUIResHelper.m7506b(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
                QMUIResHelper.m7507a(qMUISpanTouchFixTextView, R.attr.qmui_bottom_sheet_title_style);
                QMUISkinValueBuilder m7907a = QMUISkinValueBuilder.m7907a();
                m7907a.m7884x(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_title_text_color));
                m7907a.m7900h(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
                QMUISkinHelper.m7943g(qMUISpanTouchFixTextView, m7907a);
                m7907a.m7891q();
                return qMUISpanTouchFixTextView;
            }
            QMUISpanTouchFixTextView qMUISpanTouchFixTextView2 = new QMUISpanTouchFixTextView(context);
            qMUISpanTouchFixTextView2.setId(R.id.qmui_bottom_sheet_title);
            qMUISpanTouchFixTextView2.setText(this.f17718c);
            QMUIResHelper.m7507a(qMUISpanTouchFixTextView2, R.attr.qmui_bottom_sheet_title_style);
            qMUISpanTouchFixTextView2.setPadding(qMUISpanTouchFixTextView2.getPaddingLeft(), qMUISpanTouchFixTextView2.getPaddingTop(), qMUISpanTouchFixTextView2.getPaddingRight(), 0);
            QMUISpanTouchFixTextView qMUISpanTouchFixTextView3 = new QMUISpanTouchFixTextView(context);
            qMUISpanTouchFixTextView3.setId(QMUIViewHelper.m7473b());
            qMUISpanTouchFixTextView3.setText(this.f13687B);
            QMUIResHelper.m7507a(qMUISpanTouchFixTextView3, R.attr.qmui_bottom_sheet_title_style);
            qMUISpanTouchFixTextView3.setTextColor(context.getResources().getColor(R.color.lite_dialog_subtitle_color));
            qMUISpanTouchFixTextView3.setTextSize(0, QMUIDisplayHelper.m7555a(context, 13));
            qMUISpanTouchFixTextView3.setPadding(qMUISpanTouchFixTextView3.getPaddingLeft(), 0, qMUISpanTouchFixTextView3.getPaddingRight(), qMUISpanTouchFixTextView3.getPaddingBottom());
            QMUILinearLayout qMUILinearLayout = new QMUILinearLayout(context);
            qMUILinearLayout.m7868d(0, 0, context.getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height), QMUIResHelper.m7506b(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
            qMUILinearLayout.setOrientation(1);
            qMUILinearLayout.addView(qMUISpanTouchFixTextView2, new LinearLayout.LayoutParams(-1, -2));
            qMUILinearLayout.addView(qMUISpanTouchFixTextView3, new LinearLayout.LayoutParams(-1, -2));
            return qMUILinearLayout;
        }
        return null;
    }

    public ItemListBuilder(Context context, boolean z) {
        super(context);
        this.f13693z = false;
        this.f13688u = new ArrayList();
        this.f13691x = z;
    }
}
