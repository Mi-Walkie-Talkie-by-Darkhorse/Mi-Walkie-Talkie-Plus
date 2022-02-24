package com.ifengyu.intercom.ui.widget.dialog;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus;

/* compiled from: ListHolder.java */
/* loaded from: classes2.dex */
public class r implements n, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    private int f6995a = -1;

    /* renamed from: b  reason: collision with root package name */
    private ListView f6996b;

    /* renamed from: c  reason: collision with root package name */
    private DialogPlus.OnHolderListener f6997c;
    private View.OnKeyListener d;
    private View e;
    private View f;

    /* compiled from: ListHolder.java */
    /* loaded from: classes2.dex */
    class a implements View.OnKeyListener {
        a() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (r.this.d != null) {
                return r.this.d.onKey(view, i, keyEvent);
            }
            throw new NullPointerException("keyListener should not be null");
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public void b(View view) {
        if (view != null) {
            this.f6996b.addHeaderView(view);
            this.e = view;
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        DialogPlus.OnHolderListener onHolderListener = this.f6997c;
        if (onHolderListener != null) {
            Object itemAtPosition = adapterView.getItemAtPosition(i);
            if (this.e != null) {
                i--;
            }
            onHolderListener.a(itemAtPosition, view, i);
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.n
    public void setOnItemClickListener(DialogPlus.OnHolderListener onHolderListener) {
        this.f6997c = onHolderListener;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public void setOnKeyListener(View.OnKeyListener onKeyListener) {
        this.d = onKeyListener;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public void a(View view) {
        if (view != null) {
            this.f6996b.addFooterView(view);
            this.f = view;
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public View b() {
        return this.f;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.n
    public void a(BaseAdapter baseAdapter) {
        this.f6996b.setAdapter((ListAdapter) baseAdapter);
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public void a(int i) {
        this.f6995a = i;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.dialog_content_frame_list, viewGroup, false);
        if (this.f6995a != -1) {
            inflate.findViewById(R.id.dialog_custom_container).setBackgroundResource(this.f6995a);
        }
        ListView listView = (ListView) inflate.findViewById(R.id.dialog_list);
        this.f6996b = listView;
        listView.setOnItemClickListener(this);
        this.f6996b.setOnKeyListener(new a());
        return inflate;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public View a() {
        return this.f6996b;
    }
}
