package com.ifengyu.intercom.p216ui.widget.dialog;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.dialog.DialogPlus;
import java.util.Objects;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.p */
/* loaded from: classes2.dex */
public class ListHolder implements HolderAdapter, AdapterView.OnItemClickListener {

    /* renamed from: a */
    private int f16003a = -1;

    /* renamed from: b */
    private ListView f16004b;

    /* renamed from: c */
    private DialogPlus.OnHolderListener f16005c;

    /* renamed from: d */
    private View.OnKeyListener f16006d;

    /* renamed from: e */
    private View f16007e;

    /* renamed from: f */
    private View f16008f;

    /* compiled from: ListHolder.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.p$a */
    /* loaded from: classes2.dex */
    class View$OnKeyListenerC4928a implements View.OnKeyListener {
        View$OnKeyListenerC4928a() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            Objects.requireNonNull(ListHolder.this.f16006d, "keyListener should not be null");
            return ListHolder.this.f16006d.onKey(view, i, keyEvent);
        }
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: a */
    public View mo8910a() {
        return this.f16004b;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.HolderAdapter
    /* renamed from: b */
    public void mo8933b(BaseAdapter baseAdapter) {
        this.f16004b.setAdapter((ListAdapter) baseAdapter);
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: c */
    public void mo8909c(int i) {
        this.f16003a = i;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: d */
    public void mo8908d(View view) {
        if (view == null) {
            return;
        }
        this.f16004b.addFooterView(view);
        this.f16008f = view;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: e */
    public View mo8907e(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.dialog_content_frame_list, viewGroup, false);
        if (this.f16003a != -1) {
            inflate.findViewById(R.id.dialog_custom_container).setBackgroundResource(this.f16003a);
        }
        ListView listView = (ListView) inflate.findViewById(R.id.dialog_list);
        this.f16004b = listView;
        listView.setOnItemClickListener(this);
        this.f16004b.setOnKeyListener(new View$OnKeyListenerC4928a());
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: f */
    public void mo8906f(View view) {
        if (view == null) {
            return;
        }
        this.f16004b.addHeaderView(view);
        this.f16007e = view;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: g */
    public View mo8905g() {
        return this.f16008f;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        DialogPlus.OnHolderListener onHolderListener = this.f16005c;
        if (onHolderListener == null) {
            return;
        }
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (this.f16007e != null) {
            i--;
        }
        onHolderListener.mo9065a(itemAtPosition, view, i);
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.HolderAdapter
    public void setOnItemClickListener(DialogPlus.OnHolderListener onHolderListener) {
        this.f16005c = onHolderListener;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.HolderAdapter, com.ifengyu.intercom.p216ui.widget.dialog.Holder
    public void setOnKeyListener(View.OnKeyListener onKeyListener) {
        this.f16006d = onKeyListener;
    }
}
