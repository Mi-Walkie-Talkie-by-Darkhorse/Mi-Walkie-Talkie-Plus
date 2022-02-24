package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.tencent.connect.common.Constants;

/* compiled from: InsertChannelDialog400To470.java */
/* loaded from: classes2.dex */
public class p extends d {
    private static final String[] o = {"7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "1", "2", "3", "0", "0", "OK"};
    private static final String[] p = {"0", "2", "5", "7", "", "0", "2", "5", "7", ""};
    private static final String[] q = {"0", "", "5", "", "", "0", "", "5"};

    /* renamed from: a  reason: collision with root package name */
    private Activity f6977a;

    /* renamed from: b  reason: collision with root package name */
    private k f6978b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f6979c;
    private EditText d;
    private EditText e;
    private EditText f;
    private EditText g;
    private EditText h;
    private EditText i;
    private i j;
    private String k;
    private int l;
    private LayoutInflater m;
    private TextWatcher n = new h();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class a implements ActionMode.Callback {
        a() {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText1 has Focus");
                p.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText2 has Focus");
                p.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class d implements View.OnFocusChangeListener {
        d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText3 has Focus");
                p.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class e implements View.OnFocusChangeListener {
        e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText4 has Focus");
                p.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class f implements View.OnFocusChangeListener {
        f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText5 has Focus");
                p.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class g implements View.OnFocusChangeListener {
        g() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText6 has Focus");
                p.this.j.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    class h implements TextWatcher {
        h() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            z.a("InsertChannelDialog", "afterTextChanged:" + ((Object) editable));
            if (editable.toString().length() == 1) {
                if (p.this.f6979c.isFocused()) {
                    p.this.f6979c.setFocusable(false);
                    p.this.f6979c.setFocusableInTouchMode(false);
                    p.this.f6979c.clearFocus();
                    p.this.d.setFocusable(true);
                    p.this.d.setFocusableInTouchMode(true);
                    p.this.d.requestFocus();
                } else if (p.this.d.isFocused()) {
                    p.this.d.setFocusable(false);
                    p.this.d.setFocusableInTouchMode(false);
                    p.this.d.clearFocus();
                    p.this.e.setFocusable(true);
                    p.this.e.setFocusableInTouchMode(true);
                    p.this.e.requestFocus();
                } else if (p.this.e.isFocused()) {
                    p.this.e.setFocusable(false);
                    p.this.e.setFocusableInTouchMode(false);
                    p.this.e.clearFocus();
                    p.this.f.setFocusable(true);
                    p.this.f.setFocusableInTouchMode(true);
                    p.this.f.requestFocus();
                } else if (p.this.f.isFocused()) {
                    p.this.f.setFocusable(false);
                    p.this.f.setFocusableInTouchMode(false);
                    p.this.f.clearFocus();
                    p.this.g.setFocusable(true);
                    p.this.g.setFocusableInTouchMode(true);
                    p.this.g.requestFocus();
                } else if (p.this.g.isFocused()) {
                    p.this.g.setFocusable(false);
                    p.this.g.setFocusableInTouchMode(false);
                    p.this.g.clearFocus();
                    p.this.h.setFocusable(true);
                    p.this.h.setFocusableInTouchMode(true);
                    p.this.h.requestFocus();
                } else if (p.this.h.isFocused()) {
                    p.this.h.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(p.this.f6979c.getText().toString()) || TextUtils.isEmpty(p.this.d.getText().toString()) || TextUtils.isEmpty(p.this.e.getText().toString()) || TextUtils.isEmpty(p.this.f.getText().toString()) || TextUtils.isEmpty(p.this.g.getText().toString()) || TextUtils.isEmpty(p.this.h.getText().toString())) {
                p.this.i.setText("");
                return;
            }
            p.this.i.setText(p.q[Integer.parseInt(p.this.h.getText().toString())]);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            z.a("InsertChannelDialog", "beforeTextChanged:s:" + ((Object) charSequence) + " start:" + i + " count:" + i2 + " after:" + i3);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            z.a("InsertChannelDialog", "onTextChanged:s:" + ((Object) charSequence) + " start:" + i + " before:" + i2 + " count:" + i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class i extends BaseAdapter {
        i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (p.o == null || p.o.length <= 0) {
                return 0;
            }
            return p.o.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (p.o == null || p.o.length <= 0) {
                return null;
            }
            return p.o[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) p.this.m.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) p.this.m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(p.o[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) p.this.m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(k0.a((int) R.color.channel_settting_choose_number));
                textView2.setText(p.o[i]);
                if (p.this.f6979c.isFocused()) {
                    if (!(i == 3 || i == 6)) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (p.this.d.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f6979c.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (p.this.f6979c.getText().toString().equals("1")) {
                        if (i != 3) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                        }
                    } else if (i == 1 || i == 2) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (p.this.e.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f6979c.getText().toString()) || TextUtils.isEmpty(p.this.d.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (!p.this.d.getText().toString().equals("4") || !p.this.f6979c.getText().toString().equals("1")) {
                        if (!p.this.d.getText().toString().equals("7") || !p.this.f6979c.getText().toString().equals("4")) {
                            p.this.d.getText().toString().equals("3");
                        } else if (i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (p.this.f.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f6979c.getText().toString()) || TextUtils.isEmpty(p.this.d.getText().toString()) || TextUtils.isEmpty(p.this.e.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (((p.this.f6979c.getText().toString().equals("1") && p.this.d.getText().toString().equals("4") && p.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (p.this.f6979c.getText().toString().equals("4") && p.this.d.getText().toString().equals("7") && p.this.e.getText().toString().equals("0"))) && i != 10) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (p.this.g.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f6979c.getText().toString()) || TextUtils.isEmpty(p.this.d.getText().toString()) || TextUtils.isEmpty(p.this.e.getText().toString()) || TextUtils.isEmpty(p.this.f.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (((p.this.f6979c.getText().toString().equals("1") && p.this.d.getText().toString().equals("4") && p.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (p.this.f6979c.getText().toString().equals("4") && p.this.d.getText().toString().equals("7") && p.this.e.getText().toString().equals("0"))) && i != 10) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (p.this.h.isFocusable()) {
                    if (TextUtils.isEmpty(p.this.f6979c.getText().toString()) || TextUtils.isEmpty(p.this.d.getText().toString()) || TextUtils.isEmpty(p.this.e.getText().toString()) || TextUtils.isEmpty(p.this.f.getText().toString()) || TextUtils.isEmpty(p.this.g.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if ((!p.this.f6979c.getText().toString().equals("1") || !p.this.d.getText().toString().equals("4") || !p.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!p.this.f6979c.getText().toString().equals("4") || !p.this.d.getText().toString().equals("7") || !p.this.e.getText().toString().equals("0"))) {
                        if (!(i == 10 || i == 7 || i == 4 || i == 0)) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                        }
                    } else if (i != 10) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                }
                return textView2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public class j implements AdapterView.OnItemClickListener {
        private j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (p.this.h.isFocused()) {
                    if (p.this.h.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(p.this.f.getText());
                        int selectionStart = Selection.getSelectionStart(p.this.f.getText());
                        int selectionStart2 = p.this.h.getSelectionStart();
                        if (selectionStart2 > 0) {
                            p.this.h.getText().delete(selectionStart2 - 1, selectionStart2);
                        } else if (selectionEnd - selectionStart > 0) {
                            p.this.h.getText().delete(selectionStart, selectionEnd);
                        }
                    } else {
                        p.this.g.setText("");
                        p.this.h.clearFocus();
                        p.this.g.setFocusable(true);
                        p.this.g.setFocusableInTouchMode(true);
                        p.this.g.requestFocus();
                    }
                } else if (p.this.g.isFocused()) {
                    p.this.f.setText("");
                    p.this.g.clearFocus();
                    p.this.f.setFocusable(true);
                    p.this.f.setFocusableInTouchMode(true);
                    p.this.f.requestFocus();
                } else if (p.this.f.isFocused()) {
                    p.this.e.setText("");
                    p.this.f.clearFocus();
                    p.this.e.setFocusable(true);
                    p.this.e.setFocusableInTouchMode(true);
                    p.this.e.requestFocus();
                } else if (p.this.e.isFocused()) {
                    p.this.d.setText("");
                    p.this.e.clearFocus();
                    p.this.d.setFocusable(true);
                    p.this.d.setFocusableInTouchMode(true);
                    p.this.d.requestFocus();
                } else if (p.this.d.isFocused()) {
                    p.this.f6979c.setText("");
                    p.this.d.clearFocus();
                    p.this.f6979c.setFocusable(true);
                    p.this.f6979c.setFocusableInTouchMode(true);
                    p.this.f6979c.requestFocus();
                }
            } else if (i == 11) {
                StringBuilder sb = new StringBuilder();
                String obj = p.this.f6979c.getText().toString();
                String obj2 = p.this.d.getText().toString();
                String obj3 = p.this.e.getText().toString();
                String obj4 = p.this.f.getText().toString();
                String obj5 = p.this.g.getText().toString();
                String obj6 = p.this.h.getText().toString();
                String obj7 = p.this.i.getText().toString();
                if (!c0.a(p.this.f6979c, p.this.d, p.this.e, p.this.f, p.this.g, p.this.h)) {
                    sb.append(obj);
                    sb.append(obj2);
                    sb.append(obj3);
                    sb.append(".");
                    sb.append(obj4);
                    sb.append(obj5);
                    sb.append(obj6);
                    sb.append(obj7);
                    String sb2 = sb.toString();
                    int c2 = c0.c(sb2);
                    z.a("InsertChannelDialog", "freq:" + c2);
                    if ((c2 >= 144000000 && c2 <= 148000000) || (c2 >= 400000000 && c2 <= 470000000)) {
                        if (TextUtils.isEmpty(p.this.k)) {
                            if (p.this.f6978b != null) {
                                p.this.f6978b.b(sb2);
                            }
                        } else if (p.this.f6978b != null) {
                            p.this.f6978b.a(sb2);
                        }
                        p.this.dismiss();
                    }
                }
            } else {
                if (p.this.f6979c.isFocused()) {
                    if (!(i == 3 || i == 6)) {
                        return;
                    }
                } else if (p.this.d.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f6979c.getText().toString())) {
                        return;
                    }
                    if (p.this.f6979c.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (i == 1 || i == 2) {
                        return;
                    }
                } else if (p.this.e.isFocused()) {
                    if (c0.a(p.this.f6979c, p.this.d)) {
                        return;
                    }
                    if (!p.this.d.getText().toString().equals("4") || !p.this.f6979c.getText().toString().equals("1")) {
                        if (!p.this.d.getText().toString().equals("7") || !p.this.f6979c.getText().toString().equals("4")) {
                            p.this.d.getText().toString().equals("3");
                        } else if (i != 10) {
                            return;
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        return;
                    }
                } else if (p.this.f.isFocused()) {
                    if (c0.a(p.this.f6979c, p.this.d, p.this.e)) {
                        return;
                    }
                    if (((p.this.f6979c.getText().toString().equals("1") && p.this.d.getText().toString().equals("4") && p.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (p.this.f6979c.getText().toString().equals("4") && p.this.d.getText().toString().equals("7") && p.this.e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (p.this.g.isFocused()) {
                    if (c0.a(p.this.f6979c, p.this.d, p.this.e, p.this.f)) {
                        return;
                    }
                    if (((p.this.f6979c.getText().toString().equals("1") && p.this.d.getText().toString().equals("4") && p.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (p.this.f6979c.getText().toString().equals("4") && p.this.d.getText().toString().equals("7") && p.this.e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (p.this.h.isFocused()) {
                    if (c0.a(p.this.f6979c, p.this.d, p.this.e, p.this.f, p.this.g)) {
                        return;
                    }
                    if ((!p.this.f6979c.getText().toString().equals("1") || !p.this.d.getText().toString().equals("4") || !p.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!p.this.f6979c.getText().toString().equals("4") || !p.this.d.getText().toString().equals("7") || !p.this.e.getText().toString().equals("0"))) {
                        if (!(i == 10 || i == 7 || i == 4 || i == 0)) {
                            return;
                        }
                    } else if (i != 10) {
                        return;
                    }
                }
                if (p.this.f6979c.isFocused()) {
                    p.this.f6979c.setText(p.o[i]);
                } else if (p.this.d.isFocused()) {
                    p.this.d.setText(p.o[i]);
                } else if (p.this.e.isFocused()) {
                    p.this.e.setText(p.o[i]);
                } else if (p.this.f.isFocused()) {
                    p.this.f.setText(p.o[i]);
                } else if (p.this.g.isFocused()) {
                    p.this.g.setText(p.o[i]);
                } else if (p.this.h.isFocused() && p.this.h.getText().length() == 0) {
                    p.this.h.setText(p.o[i]);
                }
            }
        }

        /* synthetic */ j(p pVar, a aVar) {
            this();
        }
    }

    /* compiled from: InsertChannelDialog400To470.java */
    /* loaded from: classes2.dex */
    public interface k {
        void a(String str);

        void b(String str);
    }

    public p(Activity activity, String str, int i2) {
        super(activity);
        this.f6977a = activity;
        this.m = LayoutInflater.from(activity);
        this.k = str;
        this.l = i2;
        String[] strArr = o;
        strArr[strArr.length - 1] = this.f6977a.getString(R.string.common_select);
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_custom_channel_400_470);
        a(this.f6977a);
        b();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (!TextUtils.isEmpty(this.k)) {
            String replace = this.k.replace(".", "");
            if (replace.length() == 7) {
                char[] charArray = replace.toCharArray();
                this.f6979c.setText(String.valueOf(charArray[0]));
                this.d.setText(String.valueOf(charArray[1]));
                this.e.setText(String.valueOf(charArray[2]));
                this.f.setText(String.valueOf(charArray[3]));
                this.g.setText(String.valueOf(charArray[4]));
                this.h.setText(String.valueOf(charArray[5]));
                this.i.setText(String.valueOf(charArray[6]));
                this.h.setFocusable(true);
                this.h.setFocusableInTouchMode(true);
                this.h.requestFocus();
                this.h.setSelection(1);
            }
        } else {
            this.f6979c.setFocusable(true);
            this.f6979c.setFocusableInTouchMode(true);
            this.f6979c.requestFocus();
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    public void a(k kVar) {
        this.f6978b = kVar;
    }

    public void b() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        int i2 = this.l;
        if (i2 == 0) {
            textView.setText(R.string.channel_custom);
        } else if (i2 == 1) {
            textView.setText(R.string.receive_frequency);
        } else if (i2 == 2) {
            textView.setText(R.string.emission_frequency);
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        i iVar = new i();
        this.j = iVar;
        gridView.setAdapter((ListAdapter) iVar);
        gridView.setOnItemClickListener(new j(this, null));
        this.f6979c = (EditText) findViewById(R.id.et_input_num_1);
        this.d = (EditText) findViewById(R.id.et_input_num_2);
        this.e = (EditText) findViewById(R.id.et_input_num_3);
        this.f = (EditText) findViewById(R.id.et_input_num_4);
        this.g = (EditText) findViewById(R.id.et_input_num_5);
        this.h = (EditText) findViewById(R.id.et_input_num_6);
        this.i = (EditText) findViewById(R.id.et_input_num_7);
        this.f6979c.setTextIsSelectable(true);
        this.d.setTextIsSelectable(true);
        this.e.setTextIsSelectable(true);
        this.f.setTextIsSelectable(true);
        this.g.setTextIsSelectable(true);
        this.h.setTextIsSelectable(true);
        this.f6979c.setOnLongClickListener(null);
        this.d.setOnClickListener(null);
        this.f6979c.setFocusable(false);
        this.f6979c.setFocusableInTouchMode(false);
        this.d.setFocusable(false);
        this.d.setFocusableInTouchMode(false);
        this.e.setFocusable(false);
        this.e.setFocusableInTouchMode(false);
        this.f.setFocusable(false);
        this.f.setFocusableInTouchMode(false);
        this.g.setFocusable(false);
        this.g.setFocusableInTouchMode(false);
        this.h.setFocusable(false);
        this.h.setFocusableInTouchMode(false);
        this.i.setFocusable(false);
        this.i.setFocusableInTouchMode(false);
        this.i.setKeyListener(null);
        this.f6979c.addTextChangedListener(this.n);
        this.d.addTextChangedListener(this.n);
        this.e.addTextChangedListener(this.n);
        this.f.addTextChangedListener(this.n);
        this.g.addTextChangedListener(this.n);
        this.h.addTextChangedListener(this.n);
        this.g.setCustomSelectionActionModeCallback(new a());
        this.f6979c.setOnFocusChangeListener(new b());
        this.d.setOnFocusChangeListener(new c());
        this.e.setOnFocusChangeListener(new d());
        this.f.setOnFocusChangeListener(new e());
        this.g.setOnFocusChangeListener(new f());
        this.h.setOnFocusChangeListener(new g());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i2) {
        super.a(i2);
    }
}
