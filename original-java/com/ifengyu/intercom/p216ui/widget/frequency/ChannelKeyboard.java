package com.ifengyu.intercom.p216ui.widget.frequency;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUILangHelper;
import com.tencent.connect.common.Constants;
import java.util.Arrays;

/* renamed from: com.ifengyu.intercom.ui.widget.frequency.ChannelKeyboard */
/* loaded from: classes2.dex */
public class ChannelKeyboard extends LinearLayout {

    /* renamed from: j */
    private static final int f16050j = Color.parseColor("#333333");

    /* renamed from: k */
    private static final int f16051k = Color.parseColor("#DDDDDD");

    /* renamed from: l */
    private static final String[] f16052l = {"1", "2", "3", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "删除", "0", "确定"};

    /* renamed from: m */
    private static final int[] f16053m = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 11};

    /* renamed from: a */
    private C4937a f16054a;

    /* renamed from: b */
    private TextView[] f16055b;

    /* renamed from: c */
    private int[] f16056c;

    /* renamed from: d */
    private int[] f16057d;

    /* renamed from: e */
    private int f16058e;

    /* renamed from: f */
    private InterfaceC4939b f16059f;

    /* renamed from: g */
    private InterfaceC4940c f16060g;

    /* renamed from: h */
    private TextView f16061h;

    /* renamed from: i */
    private TextView f16062i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.ui.widget.frequency.ChannelKeyboard$a */
    /* loaded from: classes2.dex */
    public class C4937a extends BaseAdapter {

        /* renamed from: a */
        private final String[] f16063a;

        /* renamed from: b */
        private final LayoutInflater f16064b;

        /* renamed from: c */
        private boolean[] f16065c;

        /* renamed from: com.ifengyu.intercom.ui.widget.frequency.ChannelKeyboard$a$a */
        /* loaded from: classes2.dex */
        public class C4938a {

            /* renamed from: a */
            TextView f16067a;

            /* renamed from: b */
            ImageView f16068b;

            public C4938a(C4937a c4937a) {
            }
        }

        public C4937a(Context context, String[] strArr) {
            this.f16063a = strArr;
            this.f16064b = LayoutInflater.from(context);
            this.f16065c = new boolean[strArr.length];
        }

        @Override // android.widget.Adapter
        /* renamed from: a */
        public String getItem(int i) {
            return this.f16063a[i];
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            String[] strArr = this.f16063a;
            if (strArr == null) {
                return 0;
            }
            return strArr.length;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C4938a c4938a;
            if (view == null) {
                view = this.f16064b.inflate(R.layout.keyboard_item, (ViewGroup) null);
                c4938a = new C4938a(this);
                c4938a.f16067a = (TextView) view.findViewById(R.id.tv_key);
                c4938a.f16068b = (ImageView) view.findViewById(R.id.imgDelete);
                view.setTag(c4938a);
            } else {
                c4938a = (C4938a) view.getTag();
            }
            boolean[] zArr = this.f16065c;
            ChannelKeyboard channelKeyboard = ChannelKeyboard.this;
            zArr[i] = channelKeyboard.m8893j(channelKeyboard.f16058e + 1, ChannelKeyboard.this.f16056c, ChannelKeyboard.f16053m[i]);
            c4938a.f16067a.setText(this.f16063a[i]);
            if (i == 9) {
                c4938a.f16068b.setVisibility(0);
                c4938a.f16067a.setVisibility(8);
            } else if (i == 11) {
                c4938a.f16067a.setText(UIUtils.m8603o(R.string.common_ok));
                c4938a.f16067a.setTextSize(0, UIUtils.m8594x(16.0f));
                c4938a.f16067a.setVisibility(0);
                c4938a.f16068b.setVisibility(8);
            } else {
                c4938a.f16067a.setVisibility(0);
                c4938a.f16068b.setVisibility(8);
            }
            if (this.f16065c[i]) {
                c4938a.f16067a.setTextColor(ChannelKeyboard.f16050j);
            } else {
                c4938a.f16067a.setTextColor(ChannelKeyboard.f16051k);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return this.f16065c[i];
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.frequency.ChannelKeyboard$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC4939b {
        /* renamed from: a */
        void mo8885a(ChannelKeyboard channelKeyboard, int i);
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.frequency.ChannelKeyboard$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC4940c {
        /* renamed from: a */
        void mo8878a(int i, int[] iArr, int i2);

        /* renamed from: b */
        boolean mo8877b(int i, int[] iArr, int i2);
    }

    public ChannelKeyboard(Context context) {
        this(context, null);
    }

    /* renamed from: f */
    private TextView[] m8897f(View view) {
        return new TextView[]{(TextView) view.findViewById(R.id.tv_num1), (TextView) view.findViewById(R.id.tv_num2), (TextView) view.findViewById(R.id.tv_num3), (TextView) view.findViewById(R.id.tv_num4), (TextView) view.findViewById(R.id.tv_num5), (TextView) view.findViewById(R.id.tv_num6), (TextView) view.findViewById(R.id.tv_num7)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m8896g(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == 11) {
            if (this.f16059f != null) {
                int i2 = this.f16058e + 1;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    i3 = (int) (i3 + (this.f16056c[i4] * Math.pow(10.0d, (i2 - 1) - i4)));
                }
                this.f16059f.mo8885a(this, (int) (i3 * Math.pow(10.0d, 9 - QMUILangHelper.m7535e(i3))));
            }
        } else if (i == 9) {
            int i5 = this.f16058e;
            if (i5 >= 0) {
                TextView[] textViewArr = this.f16055b;
                if (i5 < textViewArr.length) {
                    textViewArr[i5].setText("");
                    int[] iArr = this.f16056c;
                    int i6 = this.f16058e;
                    iArr[i6] = -1;
                    this.f16058e = i6 - 1;
                    this.f16054a.notifyDataSetChanged();
                }
            }
        } else {
            int i7 = this.f16058e;
            if (i7 >= -1) {
                TextView[] textViewArr2 = this.f16055b;
                if (i7 < textViewArr2.length - 1) {
                    int i8 = i7 + 1;
                    this.f16058e = i8;
                    textViewArr2[i8].setText(f16052l[i]);
                    this.f16056c[this.f16058e] = f16053m[i];
                    this.f16054a.notifyDataSetChanged();
                }
            }
        }
        m8891l(this.f16058e, this.f16056c, f16053m[i]);
    }

    /* renamed from: h */
    private void m8895h(Context context, AttributeSet attributeSet, int i) {
        TextView[] textViewArr;
        setOrientation(1);
        LayoutInflater.from(context).inflate(R.layout.channel_keyboard_layout, (ViewGroup) this, true);
        this.f16061h = (TextView) findViewById(R.id.tv_title);
        this.f16062i = (TextView) findViewById(R.id.tv_freq_range);
        this.f16061h.setTypeface(Typeface.defaultFromStyle(1));
        this.f16055b = m8897f(this);
        GridView gridView = (GridView) findViewById(R.id.gv_keybord);
        int i2 = 0;
        while (true) {
            textViewArr = this.f16055b;
            if (i2 >= textViewArr.length) {
                break;
            }
            TextView textView = textViewArr[i2];
            textView.setTypeface(AppConstants.f13909c);
            int[] iArr = this.f16057d;
            if (iArr != null && iArr.length == this.f16055b.length) {
                textView.setText(String.valueOf(iArr[i2]));
                this.f16056c[i2] = this.f16057d[i2];
            }
            i2++;
        }
        int[] iArr2 = this.f16057d;
        if (iArr2 != null && iArr2.length == textViewArr.length) {
            this.f16058e = textViewArr.length - 1;
        }
        C4937a c4937a = new C4937a(context, f16052l);
        this.f16054a = c4937a;
        gridView.setAdapter((ListAdapter) c4937a);
        gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ifengyu.intercom.ui.widget.frequency.a
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i3, long j) {
                ChannelKeyboard.this.m8896g(adapterView, view, i3, j);
            }
        });
    }

    /* renamed from: i */
    private void m8894i() {
        int[] iArr = new int[7];
        this.f16056c = iArr;
        Arrays.fill(iArr, -1);
    }

    /* renamed from: j */
    protected boolean m8893j(int i, int[] iArr, int i2) {
        InterfaceC4940c interfaceC4940c = this.f16060g;
        if (interfaceC4940c != null) {
            return interfaceC4940c.mo8877b(i, iArr, i2);
        }
        return true;
    }

    /* renamed from: l */
    protected void m8891l(int i, int[] iArr, int i2) {
        InterfaceC4940c interfaceC4940c = this.f16060g;
        if (interfaceC4940c != null) {
            interfaceC4940c.mo8878a(i, iArr, i2);
        }
    }

    /* renamed from: m */
    public ChannelKeyboard m8890m(InterfaceC4939b interfaceC4939b) {
        this.f16059f = interfaceC4939b;
        return this;
    }

    /* renamed from: n */
    public ChannelKeyboard m8889n(InterfaceC4940c interfaceC4940c) {
        this.f16060g = interfaceC4940c;
        return this;
    }

    /* renamed from: o */
    public ChannelKeyboard m8888o(String str) {
        this.f16062i.setText(str);
        return this;
    }

    /* renamed from: p */
    public ChannelKeyboard m8887p(String str) {
        this.f16061h.setText(str);
        return this;
    }

    public ChannelKeyboard(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public ChannelKeyboard(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16058e = -1;
        m8894i();
        m8895h(context, attributeSet, i);
    }
}
