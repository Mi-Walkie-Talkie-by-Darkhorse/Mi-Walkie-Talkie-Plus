package com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p168a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BtEarBean;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.a.a */
/* loaded from: classes2.dex */
public class BtEarAdapter extends RecyclerView.Adapter<C3631a> implements View.OnClickListener {

    /* renamed from: a */
    private Context f13102a;

    /* renamed from: b */
    private ArrayList<Map.Entry<String, BtEarBean>> f13103b;

    /* renamed from: c */
    private InterfaceC3632b f13104c;

    /* renamed from: d */
    private int f13105d = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BtEarAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.a.a$a */
    /* loaded from: classes2.dex */
    public class C3631a extends RecyclerView.AbstractC0849y {

        /* renamed from: a */
        public TextView f13106a;

        /* renamed from: b */
        public ImageView f13107b;

        public C3631a(BtEarAdapter btEarAdapter, View view) {
            super(view);
            this.f13106a = (TextView) view.findViewById(R.id.bt_ear_name);
            this.f13107b = (ImageView) view.findViewById(R.id.item_right_iv);
        }
    }

    /* compiled from: BtEarAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.a.a$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC3632b {
        /* renamed from: h */
        void mo12896h(View view, int i, Map.Entry<String, BtEarBean> entry);
    }

    public BtEarAdapter(Context context, ArrayList<Map.Entry<String, BtEarBean>> arrayList) {
        this.f13102a = context;
        this.f13103b = arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(C3631a c3631a, int i) {
        Map.Entry<String, BtEarBean> entry = this.f13103b.get(i);
        BtEarBean value = entry.getValue();
        if (!TextUtils.isEmpty(value.getDevice().getName())) {
            c3631a.f13106a.setText(value.getDevice().getName());
        } else {
            c3631a.f13106a.setText(entry.getKey());
        }
        if (this.f13105d == i) {
            c3631a.f13107b.setImageResource(R.drawable.bluetooth_icon_connect);
            c3631a.itemView.setClickable(false);
        } else {
            c3631a.f13107b.setImageResource(R.drawable.icon_more_black);
            c3631a.itemView.setClickable(true);
        }
        c3631a.itemView.setTag(c3631a);
        c3631a.itemView.setOnClickListener(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public C3631a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C3631a(this, LayoutInflater.from(this.f13102a).inflate(R.layout.item_scaned_bt_ear, viewGroup, false));
    }

    /* renamed from: g */
    public void m13036g(int i) {
        this.f13105d = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f13103b.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int layoutPosition = ((C3631a) view.getTag()).getLayoutPosition();
        this.f13105d = layoutPosition;
        notifyDataSetChanged();
        Map.Entry<String, BtEarBean> entry = this.f13103b.get(layoutPosition);
        InterfaceC3632b interfaceC3632b = this.f13104c;
        if (interfaceC3632b != null) {
            interfaceC3632b.mo12896h(view, layoutPosition, entry);
        }
    }

    public void setOnItemClickListener(InterfaceC3632b interfaceC3632b) {
        this.f13104c = interfaceC3632b;
    }
}
