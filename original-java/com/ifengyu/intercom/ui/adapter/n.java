package com.ifengyu.intercom.ui.adapter;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.lite.e.f;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SelectDeviceAdapter.java */
/* loaded from: classes2.dex */
public class n extends RecyclerView.g<e> {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<Boolean> f6347a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6348b;

    /* renamed from: c  reason: collision with root package name */
    private int f6349c = 0;
    private ConnectionConfiguration d;
    private d e;
    private LayoutInflater f;
    private List<ConnectionConfiguration> g;
    private ConnectionConfiguration h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SelectDeviceAdapter.java */
    /* loaded from: classes2.dex */
    public class a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f6350a;

        a(int i) {
            this.f6350a = i;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                n.this.f6349c++;
            } else {
                n nVar = n.this;
                nVar.f6349c--;
            }
            if (n.this.f6349c == n.this.g.size()) {
                n.this.e.a();
            } else {
                n.this.e.b();
            }
            n.this.f6347a.set(this.f6350a, Boolean.valueOf(z));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SelectDeviceAdapter.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f6352a;

        b(e eVar) {
            this.f6352a = eVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int layoutPosition = this.f6352a.getLayoutPosition();
            if (layoutPosition < n.this.g.size() && n.this.e != null) {
                n.this.e.a(this.f6352a.itemView, layoutPosition, (ConnectionConfiguration) n.this.g.get(layoutPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SelectDeviceAdapter.java */
    /* loaded from: classes2.dex */
    public class c implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f6354a;

        c(e eVar) {
            this.f6354a = eVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int layoutPosition = this.f6354a.getLayoutPosition();
            if (layoutPosition >= n.this.g.size() || n.this.e == null) {
                return true;
            }
            n.this.e.a(this.f6354a.itemView, layoutPosition, (ConnectionConfiguration) n.this.g.get(layoutPosition), false);
            return true;
        }
    }

    /* compiled from: SelectDeviceAdapter.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a();

        void a(View view, int i, ConnectionConfiguration connectionConfiguration);

        void a(View view, int i, ConnectionConfiguration connectionConfiguration, boolean z);

        void b();
    }

    /* compiled from: SelectDeviceAdapter.java */
    /* loaded from: classes2.dex */
    public class e extends RecyclerView.y {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f6356a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f6357b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f6358c;
        public TextView d;
        public ImageView e;
        public AppCompatCheckBox f;

        public e(n nVar, View view) {
            super(view);
            this.f6356a = (LinearLayout) view.findViewById(R.id.bottom_bg);
            this.f6357b = (TextView) view.findViewById(R.id.tv_device_name);
            this.f6358c = (TextView) view.findViewById(R.id.tv_device_selected);
            this.d = (TextView) view.findViewById(R.id.tv_device_type);
            this.e = (ImageView) view.findViewById(R.id.device_type_img);
            this.f = (AppCompatCheckBox) view.findViewById(R.id.right_checkbox);
        }
    }

    public n(Context context, List<ConnectionConfiguration> list, ConnectionConfiguration connectionConfiguration) {
        this.f = LayoutInflater.from(context);
        this.g = list;
        this.h = connectionConfiguration;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        List<ConnectionConfiguration> list = this.g;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void setOnItemClickListener(d dVar) {
        this.e = dVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public e onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new e(this, this.f.inflate(R.layout.item_select_device, viewGroup, false));
    }

    public List<ConnectionConfiguration> a() {
        return this.g;
    }

    /* renamed from: a */
    public void onBindViewHolder(e eVar, int i) {
        String str;
        boolean z;
        String str2;
        ConnectionConfiguration connectionConfiguration = this.g.get(i);
        this.d = connectionConfiguration;
        eVar.f6357b.setText(connectionConfiguration.d());
        if (this.d.c() == 36611) {
            f a2 = f.a(eVar.f6357b.getContext());
            BluetoothDevice e2 = a2.e();
            str = e2 != null ? e2.getAddress() : "";
            z = a2.i();
        } else {
            ConnectionConfiguration connectionConfiguration2 = this.h;
            if (connectionConfiguration2 != null) {
                str = connectionConfiguration2.a();
                z = this.h.f();
            } else {
                str = "";
                z = false;
            }
        }
        boolean equals = this.d.a().equals(str);
        int i2 = R.color.black60;
        if (equals) {
            TextView textView = eVar.f6358c;
            if (z) {
                str2 = MiTalkiApp.b().getString(R.string.have_connected);
            } else {
                str2 = this.g.size() == 1 ? MiTalkiApp.b().getString(R.string.click_to_connect) : MiTalkiApp.b().getString(R.string.click_to_switch);
            }
            textView.setText(str2);
            TextView textView2 = eVar.f6358c;
            if (z) {
                i2 = R.color.select_color;
            }
            textView2.setTextColor(k0.a(i2));
            if (z) {
                eVar.f6356a.setBackground(k0.e().getDrawable(R.drawable.equipment_btn_board_connect));
            } else {
                eVar.f6356a.setBackground(k0.e().getDrawable(R.drawable.equipment_btn_board_normal));
            }
        } else {
            eVar.f6358c.setText(this.g.size() == 1 ? MiTalkiApp.b().getString(R.string.click_to_connect) : MiTalkiApp.b().getString(R.string.click_to_switch));
            eVar.f6358c.setTextColor(k0.a((int) R.color.black60));
            eVar.f6356a.setBackground(k0.e().getDrawable(R.drawable.equipment_btn_board_normal));
        }
        int c2 = this.d.c();
        if (c2 == 1) {
            eVar.d.setText(R.string.device_dolphin_name);
            eVar.e.setImageResource(R.drawable.equipment_img_dolphin);
        } else if (c2 == 36611) {
            eVar.d.setText(String.format("SN: %s", this.d.a().replace(Constants.COLON_SEPARATOR, "").substring(6).toUpperCase()));
            eVar.e.setImageResource(this.d.b() == 0 ? R.drawable.lite_device_img_white : R.drawable.lite_device_img_black);
        } else if (c2 == 4) {
            eVar.d.setText(String.format("SN: %s", this.d.a().replace(Constants.COLON_SEPARATOR, "").substring(6).toUpperCase()));
            eVar.e.setImageResource(R.drawable.equipment_img_shark);
        } else if (c2 == 5) {
            eVar.d.setText(String.format("SN: %s", this.d.a().replace(Constants.COLON_SEPARATOR, "").substring(6).toUpperCase()));
            if (this.d.b() == 1) {
                eVar.e.setImageResource(R.drawable.equipment_img_seal_blue);
            } else {
                eVar.e.setImageResource(R.drawable.equipment_img_seal_white);
            }
        }
        if (this.f6348b) {
            eVar.e.setVisibility(8);
            eVar.f.setVisibility(0);
            eVar.itemView.setClickable(false);
            eVar.itemView.setOnClickListener(null);
            eVar.itemView.setOnLongClickListener(null);
            eVar.f.setOnCheckedChangeListener(null);
            eVar.f.setChecked(this.f6347a.get(i).booleanValue());
            eVar.f.setOnCheckedChangeListener(new a(i));
            return;
        }
        eVar.e.setVisibility(0);
        eVar.f.setVisibility(8);
        eVar.itemView.setClickable(true);
        eVar.itemView.setOnClickListener(new b(eVar));
        eVar.itemView.setOnLongClickListener(new c(eVar));
        eVar.f.setOnCheckedChangeListener(null);
    }

    public void a(ConnectionConfiguration connectionConfiguration) {
        this.h = connectionConfiguration;
    }

    public void a(ArrayList<Boolean> arrayList) {
        this.f6347a = arrayList;
    }

    public void a(boolean z) {
        this.f6348b = z;
        this.f6349c = 0;
    }
}
