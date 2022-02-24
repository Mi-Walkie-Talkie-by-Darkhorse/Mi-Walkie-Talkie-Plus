package com.ifengyu.intercom.ui.setting.shark;

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

/* compiled from: SharkInsertChannelDialog.java */
/* loaded from: classes2.dex */
public class a extends com.ifengyu.intercom.ui.widget.dialog.d {
    private static final String[] o = {"7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "1", "2", "3", "0", "0", "OK"};
    private static final String[] p = {"0", "2", "5", "7", "", "0", "2", "5", "7", ""};
    private static final String[] q = {"0", "", "5", "", "", "0", "", "5"};

    /* renamed from: a  reason: collision with root package name */
    private Activity f6851a;

    /* renamed from: b  reason: collision with root package name */
    private k f6852b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f6853c;
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
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.setting.shark.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class ActionMode$CallbackC0186a implements ActionMode.Callback {
        ActionMode$CallbackC0186a() {
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
    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText1 has Focus");
                a.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText2 has Focus");
                a.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class d implements View.OnFocusChangeListener {
        d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText3 has Focus");
                a.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class e implements View.OnFocusChangeListener {
        e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText4 has Focus");
                a.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class f implements View.OnFocusChangeListener {
        f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText5 has Focus");
                a.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class g implements View.OnFocusChangeListener {
        g() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText6 has Focus");
                a.this.j.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    class h implements TextWatcher {
        h() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            z.a("InsertChannelDialog", "afterTextChanged:" + ((Object) editable));
            if (editable.toString().length() == 1) {
                if (a.this.f6853c.isFocused()) {
                    a.this.f6853c.setFocusable(false);
                    a.this.f6853c.setFocusableInTouchMode(false);
                    a.this.f6853c.clearFocus();
                    a.this.d.setFocusable(true);
                    a.this.d.setFocusableInTouchMode(true);
                    a.this.d.requestFocus();
                } else if (a.this.d.isFocused()) {
                    a.this.d.setFocusable(false);
                    a.this.d.setFocusableInTouchMode(false);
                    a.this.d.clearFocus();
                    a.this.e.setFocusable(true);
                    a.this.e.setFocusableInTouchMode(true);
                    a.this.e.requestFocus();
                } else if (a.this.e.isFocused()) {
                    a.this.e.setFocusable(false);
                    a.this.e.setFocusableInTouchMode(false);
                    a.this.e.clearFocus();
                    a.this.f.setFocusable(true);
                    a.this.f.setFocusableInTouchMode(true);
                    a.this.f.requestFocus();
                } else if (a.this.f.isFocused()) {
                    a.this.f.setFocusable(false);
                    a.this.f.setFocusableInTouchMode(false);
                    a.this.f.clearFocus();
                    a.this.g.setFocusable(true);
                    a.this.g.setFocusableInTouchMode(true);
                    a.this.g.requestFocus();
                } else if (a.this.g.isFocused()) {
                    a.this.g.setFocusable(false);
                    a.this.g.setFocusableInTouchMode(false);
                    a.this.g.clearFocus();
                    a.this.h.setFocusable(true);
                    a.this.h.setFocusableInTouchMode(true);
                    a.this.h.requestFocus();
                } else if (a.this.h.isFocused()) {
                    a.this.h.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(a.this.f6853c.getText().toString()) || TextUtils.isEmpty(a.this.d.getText().toString()) || TextUtils.isEmpty(a.this.e.getText().toString()) || TextUtils.isEmpty(a.this.f.getText().toString()) || TextUtils.isEmpty(a.this.g.getText().toString()) || TextUtils.isEmpty(a.this.h.getText().toString())) {
                a.this.i.setText("");
                return;
            }
            a.this.i.setText(a.q[Integer.parseInt(a.this.h.getText().toString())]);
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
    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class i extends BaseAdapter {
        i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (a.o == null || a.o.length <= 0) {
                return 0;
            }
            return a.o.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (a.o == null || a.o.length <= 0) {
                return null;
            }
            return a.o[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) a.this.m.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) a.this.m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(a.o[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) a.this.m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(k0.a((int) R.color.channel_settting_choose_number));
                textView2.setText(a.o[i]);
                if (a.this.f6853c.isFocused()) {
                    if (!(i == 3 || i == 6)) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (a.this.d.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f6853c.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (a.this.f6853c.getText().toString().equals("1")) {
                        if (i != 3) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                        }
                    } else if (!(i == 8 || i == 3)) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (a.this.e.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f6853c.getText().toString()) || TextUtils.isEmpty(a.this.d.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (!a.this.d.getText().toString().equals("4") || !a.this.f6853c.getText().toString().equals("1")) {
                        if (!a.this.d.getText().toString().equals("4") || !a.this.f6853c.getText().toString().equals("4")) {
                            a.this.d.getText().toString().equals("3");
                        } else if (i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (a.this.f.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f6853c.getText().toString()) || TextUtils.isEmpty(a.this.d.getText().toString()) || TextUtils.isEmpty(a.this.e.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (((a.this.f6853c.getText().toString().equals("1") && a.this.d.getText().toString().equals("4") && a.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (a.this.f6853c.getText().toString().equals("4") && a.this.d.getText().toString().equals("4") && a.this.e.getText().toString().equals("0"))) && i != 10) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (a.this.g.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f6853c.getText().toString()) || TextUtils.isEmpty(a.this.d.getText().toString()) || TextUtils.isEmpty(a.this.e.getText().toString()) || TextUtils.isEmpty(a.this.f.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (((a.this.f6853c.getText().toString().equals("1") && a.this.d.getText().toString().equals("4") && a.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (a.this.f6853c.getText().toString().equals("4") && a.this.d.getText().toString().equals("4") && a.this.e.getText().toString().equals("0"))) && i != 10) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (a.this.h.isFocusable()) {
                    if (TextUtils.isEmpty(a.this.f6853c.getText().toString()) || TextUtils.isEmpty(a.this.d.getText().toString()) || TextUtils.isEmpty(a.this.e.getText().toString()) || TextUtils.isEmpty(a.this.f.getText().toString()) || TextUtils.isEmpty(a.this.g.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if ((!a.this.f6853c.getText().toString().equals("1") || !a.this.d.getText().toString().equals("4") || !a.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!a.this.f6853c.getText().toString().equals("4") || !a.this.d.getText().toString().equals("4") || !a.this.e.getText().toString().equals("0"))) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class j implements AdapterView.OnItemClickListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (a.this.h.isFocused()) {
                    if (a.this.h.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(a.this.f.getText());
                        int selectionStart = Selection.getSelectionStart(a.this.f.getText());
                        int selectionStart2 = a.this.h.getSelectionStart();
                        if (selectionStart2 > 0) {
                            a.this.h.getText().delete(selectionStart2 - 1, selectionStart2);
                        } else if (selectionEnd - selectionStart > 0) {
                            a.this.h.getText().delete(selectionStart, selectionEnd);
                        }
                    } else {
                        a.this.g.setText("");
                        a.this.h.clearFocus();
                        a.this.g.setFocusable(true);
                        a.this.g.setFocusableInTouchMode(true);
                        a.this.g.requestFocus();
                    }
                } else if (a.this.g.isFocused()) {
                    a.this.f.setText("");
                    a.this.g.clearFocus();
                    a.this.f.setFocusable(true);
                    a.this.f.setFocusableInTouchMode(true);
                    a.this.f.requestFocus();
                } else if (a.this.f.isFocused()) {
                    a.this.e.setText("");
                    a.this.f.clearFocus();
                    a.this.e.setFocusable(true);
                    a.this.e.setFocusableInTouchMode(true);
                    a.this.e.requestFocus();
                } else if (a.this.e.isFocused()) {
                    a.this.d.setText("");
                    a.this.e.clearFocus();
                    a.this.d.setFocusable(true);
                    a.this.d.setFocusableInTouchMode(true);
                    a.this.d.requestFocus();
                } else if (a.this.d.isFocused()) {
                    a.this.f6853c.setText("");
                    a.this.d.clearFocus();
                    a.this.f6853c.setFocusable(true);
                    a.this.f6853c.setFocusableInTouchMode(true);
                    a.this.f6853c.requestFocus();
                }
            } else if (i == 11) {
                StringBuilder sb = new StringBuilder();
                String obj = a.this.f6853c.getText().toString();
                String obj2 = a.this.d.getText().toString();
                String obj3 = a.this.e.getText().toString();
                String obj4 = a.this.f.getText().toString();
                String obj5 = a.this.g.getText().toString();
                String obj6 = a.this.h.getText().toString();
                String obj7 = a.this.i.getText().toString();
                if (!c0.a(a.this.f6853c, a.this.d, a.this.e, a.this.f, a.this.g, a.this.h)) {
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
                    if ((c2 >= 144000000 && c2 <= 148000000) || (c2 >= 430000000 && c2 <= 440000000)) {
                        if (TextUtils.isEmpty(a.this.k)) {
                            if (a.this.f6852b != null) {
                                a.this.f6852b.b(sb2);
                            }
                        } else if (a.this.f6852b != null) {
                            a.this.f6852b.a(sb2);
                        }
                        a.this.dismiss();
                    }
                }
            } else {
                if (a.this.f6853c.isFocused()) {
                    if (!(i == 3 || i == 6)) {
                        return;
                    }
                } else if (a.this.d.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f6853c.getText().toString())) {
                        return;
                    }
                    if (a.this.f6853c.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (!(i == 8 || i == 3)) {
                        return;
                    }
                } else if (a.this.e.isFocused()) {
                    if (c0.a(a.this.f6853c, a.this.d)) {
                        return;
                    }
                    if (!a.this.d.getText().toString().equals("4") || !a.this.f6853c.getText().toString().equals("1")) {
                        if (!a.this.d.getText().toString().equals("4") || !a.this.f6853c.getText().toString().equals("4")) {
                            a.this.d.getText().toString().equals("3");
                        } else if (i != 10) {
                            return;
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        return;
                    }
                } else if (a.this.f.isFocused()) {
                    if (c0.a(a.this.f6853c, a.this.d, a.this.e)) {
                        return;
                    }
                    if (((a.this.f6853c.getText().toString().equals("1") && a.this.d.getText().toString().equals("4") && a.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (a.this.f6853c.getText().toString().equals("4") && a.this.d.getText().toString().equals("4") && a.this.e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (a.this.g.isFocused()) {
                    if (c0.a(a.this.f6853c, a.this.d, a.this.e, a.this.f)) {
                        return;
                    }
                    if (((a.this.f6853c.getText().toString().equals("1") && a.this.d.getText().toString().equals("4") && a.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (a.this.f6853c.getText().toString().equals("4") && a.this.d.getText().toString().equals("4") && a.this.e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (a.this.h.isFocused()) {
                    if (c0.a(a.this.f6853c, a.this.d, a.this.e, a.this.f, a.this.g)) {
                        return;
                    }
                    if ((!a.this.f6853c.getText().toString().equals("1") || !a.this.d.getText().toString().equals("4") || !a.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!a.this.f6853c.getText().toString().equals("4") || !a.this.d.getText().toString().equals("4") || !a.this.e.getText().toString().equals("0"))) {
                        if (!(i == 10 || i == 7 || i == 4 || i == 0)) {
                            return;
                        }
                    } else if (i != 10) {
                        return;
                    }
                }
                if (a.this.f6853c.isFocused()) {
                    a.this.f6853c.setText(a.o[i]);
                } else if (a.this.d.isFocused()) {
                    a.this.d.setText(a.o[i]);
                } else if (a.this.e.isFocused()) {
                    a.this.e.setText(a.o[i]);
                } else if (a.this.f.isFocused()) {
                    a.this.f.setText(a.o[i]);
                } else if (a.this.g.isFocused()) {
                    a.this.g.setText(a.o[i]);
                } else if (a.this.h.isFocused() && a.this.h.getText().length() == 0) {
                    a.this.h.setText(a.o[i]);
                }
            }
        }
    }

    /* compiled from: SharkInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public interface k {
        void a(String str);

        void b(String str);
    }

    public a(Activity activity, String str, int i2) {
        super(activity);
        this.f6851a = activity;
        this.m = LayoutInflater.from(activity);
        this.k = str;
        this.l = i2;
        String[] strArr = o;
        strArr[strArr.length - 1] = this.f6851a.getString(R.string.common_select);
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_shark_input_custom_channel);
        a(this.f6851a);
        b();
    }

    @Override // android.app.Dialog
    public void show() {
        int c2;
        super.show();
        if (!TextUtils.isEmpty(this.k)) {
            String replace = this.k.replace(".", "");
            String str = this.k;
            if (str != null && (((c2 = c0.c(str)) < 430000000 && c2 >= 400000000) || (c2 > 440000000 && c2 <= 470000000))) {
                replace = null;
            }
            if (replace == null || replace.length() != 7) {
                this.f6853c.setFocusable(true);
                this.f6853c.setFocusableInTouchMode(true);
                this.f6853c.requestFocus();
            } else {
                char[] charArray = replace.toCharArray();
                this.f6853c.setText(String.valueOf(charArray[0]));
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
            this.f6853c.setFocusable(true);
            this.f6853c.setFocusableInTouchMode(true);
            this.f6853c.requestFocus();
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    public void a(k kVar) {
        this.f6852b = kVar;
    }

    public void b() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        int i2 = this.l;
        if (i2 == 1) {
            textView.setText(R.string.emission_frequency);
        } else if (i2 == 2) {
            textView.setText(R.string.receive_frequency);
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        i iVar = new i();
        this.j = iVar;
        gridView.setAdapter((ListAdapter) iVar);
        gridView.setOnItemClickListener(new j());
        this.f6853c = (EditText) findViewById(R.id.et_input_num_1);
        this.d = (EditText) findViewById(R.id.et_input_num_2);
        this.e = (EditText) findViewById(R.id.et_input_num_3);
        this.f = (EditText) findViewById(R.id.et_input_num_4);
        this.g = (EditText) findViewById(R.id.et_input_num_5);
        this.h = (EditText) findViewById(R.id.et_input_num_6);
        this.i = (EditText) findViewById(R.id.et_input_num_7);
        this.f6853c.setTextIsSelectable(true);
        this.d.setTextIsSelectable(true);
        this.e.setTextIsSelectable(true);
        this.f.setTextIsSelectable(true);
        this.g.setTextIsSelectable(true);
        this.h.setTextIsSelectable(true);
        this.f6853c.setOnLongClickListener(null);
        this.d.setOnClickListener(null);
        this.f6853c.setFocusable(false);
        this.f6853c.setFocusableInTouchMode(false);
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
        this.f6853c.addTextChangedListener(this.n);
        this.d.addTextChangedListener(this.n);
        this.e.addTextChangedListener(this.n);
        this.f.addTextChangedListener(this.n);
        this.g.addTextChangedListener(this.n);
        this.h.addTextChangedListener(this.n);
        this.g.setCustomSelectionActionModeCallback(new ActionMode$CallbackC0186a());
        this.f6853c.setOnFocusChangeListener(new b());
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
