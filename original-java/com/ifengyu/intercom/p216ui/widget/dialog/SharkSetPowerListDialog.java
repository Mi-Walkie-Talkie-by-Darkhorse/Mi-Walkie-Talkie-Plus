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

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.u */
/* loaded from: classes2.dex */
public class SharkSetPowerListDialog extends BaseDialog {

    /* renamed from: a */
    private CharSequence[] f16029a;

    /* renamed from: b */
    private InterfaceC4933c f16030b;

    /* renamed from: c */
    private LayoutInflater f16031c;

    /* renamed from: d */
    private Activity f16032d;

    /* renamed from: e */
    private MyListView f16033e;

    /* renamed from: f */
    private TextView f16034f;

    /* renamed from: g */
    private CharSequence f16035g;

    /* renamed from: h */
    private int f16036h;

    /* renamed from: i */
    private boolean f16037i;

    /* renamed from: j */
    private int f16038j;

    /* compiled from: SharkSetPowerListDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.u$a */
    /* loaded from: classes2.dex */
    class C4931a implements AdapterView.OnItemClickListener {
        C4931a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SharkSetPowerListDialog.this.f16030b.onClick(SharkSetPowerListDialog.this, i);
            SharkSetPowerListDialog.this.dismiss();
        }
    }

    /* compiled from: SharkSetPowerListDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.u$b */
    /* loaded from: classes2.dex */
    class C4932b extends BaseAdapter {
        C4932b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (SharkSetPowerListDialog.this.f16029a != null) {
                return SharkSetPowerListDialog.this.f16029a.length;
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
            TextView textView = (TextView) SharkSetPowerListDialog.this.f16031c.inflate(R.layout.dialog_list_item, (ViewGroup) null).findViewById(R.id.dialog_item_text);
            textView.setHeight((int) MethodsUtils.m11292h(52.0f));
            textView.setText(SharkSetPowerListDialog.this.f16029a[i]);
            if (SharkSetPowerListDialog.this.f16038j == 1) {
                if (i == 0) {
                    textView.setTextColor(SharkSetPowerListDialog.this.f16032d.getResources().getColor(R.color.select_color));
                }
            } else if (SharkSetPowerListDialog.this.f16038j == 2 && i == 1) {
                textView.setTextColor(SharkSetPowerListDialog.this.f16032d.getResources().getColor(R.color.select_color));
            }
            if (i == getCount() - 1) {
                textView.setBackgroundResource(R.drawable.dialog_neutral_btn_bg);
            }
            return textView;
        }
    }

    /* compiled from: SharkSetPowerListDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.u$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC4933c {
        void onClick(DialogInterface dialogInterface, int i);
    }

    public SharkSetPowerListDialog(Activity activity, int i) {
        super(activity);
        this.f16036h = -1;
        this.f16032d = activity;
        this.f16038j = i;
    }

    /* renamed from: m */
    public SharkSetPowerListDialog m8917m(boolean z) {
        this.f16037i = z;
        return this;
    }

    /* renamed from: n */
    public SharkSetPowerListDialog m8916n(int i) {
        this.f16036h = i;
        return this;
    }

    /* renamed from: o */
    public SharkSetPowerListDialog m8915o(CharSequence[] charSequenceArr, InterfaceC4933c interfaceC4933c) {
        this.f16029a = charSequenceArr;
        this.f16030b = interfaceC4933c;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_list_layout);
        m9037g(this.f16032d);
        this.f16034f = (TextView) findViewById(R.id.dialog_list_title);
        this.f16033e = (MyListView) findViewById(R.id.dialog_listview);
        this.f16031c = (LayoutInflater) this.f16032d.getSystemService("layout_inflater");
        CharSequence charSequence = this.f16035g;
        if (charSequence != null) {
            this.f16034f.setText(charSequence);
        }
        if (this.f16036h != -1) {
            this.f16034f.setText(UIUtils.m8606l().getString(this.f16036h));
        }
        if (this.f16030b != null) {
            this.f16033e.setOnItemClickListener(new C4931a());
        }
        this.f16033e.setAdapter((ListAdapter) new C4932b());
    }

    @Override // android.app.Dialog
    public void show() {
        setCanceledOnTouchOutside(this.f16037i);
        super.show();
    }
}
