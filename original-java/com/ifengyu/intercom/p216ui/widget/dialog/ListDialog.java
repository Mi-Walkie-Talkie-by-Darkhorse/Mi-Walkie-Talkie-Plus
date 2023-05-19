package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.widget.view.MyListView;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.o */
/* loaded from: classes2.dex */
public class ListDialog extends BaseDialog {

    /* renamed from: a */
    private CharSequence[] f15992a;

    /* renamed from: b */
    private InterfaceC4927c f15993b;

    /* renamed from: c */
    private LayoutInflater f15994c;

    /* renamed from: d */
    private Activity f15995d;

    /* renamed from: e */
    private MyListView f15996e;

    /* renamed from: f */
    private TextView f15997f;

    /* renamed from: g */
    private CharSequence f15998g;

    /* renamed from: h */
    private int f15999h;

    /* renamed from: i */
    private boolean f16000i;

    /* compiled from: ListDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.o$a */
    /* loaded from: classes2.dex */
    class C4925a implements AdapterView.OnItemClickListener {
        C4925a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ListDialog.this.f15993b.onClick(ListDialog.this, i);
            ListDialog.this.dismiss();
        }
    }

    /* compiled from: ListDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.o$b */
    /* loaded from: classes2.dex */
    class C4926b extends BaseAdapter {
        C4926b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (ListDialog.this.f15992a != null) {
                return ListDialog.this.f15992a.length;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView = (TextView) ListDialog.this.f15994c.inflate(R.layout.dialog_list_item, (ViewGroup) null).findViewById(R.id.dialog_item_text);
            textView.setHeight((int) MethodsUtils.m11292h(52.0f));
            textView.setText(ListDialog.this.f15992a[i]);
            if (i == getCount() - 1) {
                textView.setBackgroundResource(R.drawable.dialog_neutral_btn_bg);
            }
            return textView;
        }
    }

    /* compiled from: ListDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.o$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC4927c {
        void onClick(DialogInterface dialogInterface, int i);
    }

    public ListDialog(Activity activity) {
        super(activity);
        this.f15999h = -1;
        this.f15995d = activity;
    }

    /* renamed from: k */
    public ListDialog m8937k(boolean z) {
        this.f16000i = z;
        return this;
    }

    /* renamed from: l */
    public ListDialog m8936l(int i) {
        this.f15999h = i;
        return this;
    }

    /* renamed from: m */
    public ListDialog m8935m(CharSequence charSequence) {
        this.f15998g = charSequence;
        return this;
    }

    /* renamed from: n */
    public ListDialog m8934n(CharSequence[] charSequenceArr, InterfaceC4927c interfaceC4927c) {
        this.f15992a = charSequenceArr;
        this.f15993b = interfaceC4927c;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_list_layout);
        m9037g(this.f15995d);
        this.f15997f = (TextView) findViewById(R.id.dialog_list_title);
        this.f15996e = (MyListView) findViewById(R.id.dialog_listview);
        this.f15994c = (LayoutInflater) this.f15995d.getSystemService("layout_inflater");
        CharSequence charSequence = this.f15998g;
        if (charSequence != null) {
            this.f15997f.setText(charSequence);
        }
        int i = this.f15999h;
        if (i != -1) {
            this.f15997f.setText(UIUtils.m8603o(i));
        }
        if (this.f15993b != null) {
            this.f15996e.setOnItemClickListener(new C4925a());
        }
        this.f15996e.setAdapter((ListAdapter) new C4926b());
    }

    @Override // android.app.Dialog
    public void show() {
        setCanceledOnTouchOutside(this.f16000i);
        super.show();
    }
}
