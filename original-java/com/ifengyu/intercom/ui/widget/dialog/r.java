package com.ifengyu.intercom.ui.widget.dialog;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus.OnHolderListener;

/* compiled from: ListHolder */
public class r implements OnItemClickListener, n {
    private final int a = -1;
    private int b = -1;
    private ListView c;
    private OnHolderListener d;
    /* access modifiers changed from: private */
    public OnKeyListener e;
    private View f;
    private View g;

    public void a(View view) {
        if (view != null) {
            this.c.addHeaderView(view);
            this.f = view;
        }
    }

    public void b(View view) {
        if (view != null) {
            this.c.addFooterView(view);
            this.g = view;
        }
    }

    public void a(BaseAdapter baseAdapter) {
        this.c.setAdapter(baseAdapter);
    }

    public void a(int i) {
        this.b = i;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.dialog_content_frame_list, viewGroup, false);
        if (this.b != -1) {
            inflate.findViewById(R.id.dialog_custom_container).setBackgroundResource(this.b);
        }
        this.c = (ListView) inflate.findViewById(R.id.dialog_list);
        this.c.setOnItemClickListener(this);
        this.c.setOnKeyListener(new OnKeyListener() {
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (r.this.e != null) {
                    return r.this.e.onKey(view, i, keyEvent);
                }
                throw new NullPointerException("keyListener should not be null");
            }
        });
        return inflate;
    }

    public void setOnItemClickListener(OnHolderListener onHolderListener) {
        this.d = onHolderListener;
    }

    public void setOnKeyListener(OnKeyListener onKeyListener) {
        this.e = onKeyListener;
    }

    public View a() {
        return this.c;
    }

    public View b() {
        return this.g;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.d != null) {
            OnHolderListener onHolderListener = this.d;
            Object itemAtPosition = adapterView.getItemAtPosition(i);
            if (this.f != null) {
                i--;
            }
            onHolderListener.a(itemAtPosition, view, i);
        }
    }
}
