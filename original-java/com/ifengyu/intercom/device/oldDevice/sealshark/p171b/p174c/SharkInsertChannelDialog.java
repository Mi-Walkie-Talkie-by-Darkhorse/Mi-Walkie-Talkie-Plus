package com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p174c;

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
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog;
import com.ifengyu.library.utils.UIUtils;
import com.tencent.connect.common.Constants;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a */
/* loaded from: classes2.dex */
public class SharkInsertChannelDialog extends BaseDialog {

    /* renamed from: o */
    private static final String[] f13189o = {"7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "1", "2", "3", "0", "0", "OK"};

    /* renamed from: p */
    private static final String[] f13190p = {"0", "", "5", "", "", "0", "", "5"};

    /* renamed from: a */
    private Activity f13191a;

    /* renamed from: b */
    private InterfaceC3666k f13192b;

    /* renamed from: c */
    private EditText f13193c;

    /* renamed from: d */
    private EditText f13194d;

    /* renamed from: e */
    private EditText f13195e;

    /* renamed from: f */
    private EditText f13196f;

    /* renamed from: g */
    private EditText f13197g;

    /* renamed from: h */
    private EditText f13198h;

    /* renamed from: i */
    private EditText f13199i;

    /* renamed from: j */
    private C3664i f13200j;

    /* renamed from: k */
    private String f13201k;

    /* renamed from: l */
    private int f13202l;

    /* renamed from: m */
    private LayoutInflater f13203m;

    /* renamed from: n */
    private TextWatcher f13204n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$a */
    /* loaded from: classes2.dex */
    public class ActionMode$CallbackC3656a implements ActionMode.Callback {
        ActionMode$CallbackC3656a(SharkInsertChannelDialog sharkInsertChannelDialog) {
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
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$b */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3657b implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3657b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText1 has Focus");
                SharkInsertChannelDialog.this.f13200j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$c */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3658c implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3658c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText2 has Focus");
                SharkInsertChannelDialog.this.f13200j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$d */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3659d implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3659d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText3 has Focus");
                SharkInsertChannelDialog.this.f13200j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$e */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3660e implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3660e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText4 has Focus");
                SharkInsertChannelDialog.this.f13200j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$f */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3661f implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3661f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText5 has Focus");
                SharkInsertChannelDialog.this.f13200j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$g */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3662g implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3662g() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText6 has Focus");
                SharkInsertChannelDialog.this.f13200j.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$h */
    /* loaded from: classes2.dex */
    class C3663h implements TextWatcher {
        C3663h() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C4161y.m11054a("InsertChannelDialog", "afterTextChanged:" + ((Object) editable));
            if (editable.toString().length() == 1) {
                if (SharkInsertChannelDialog.this.f13193c.isFocused()) {
                    SharkInsertChannelDialog.this.f13193c.setFocusable(false);
                    SharkInsertChannelDialog.this.f13193c.setFocusableInTouchMode(false);
                    SharkInsertChannelDialog.this.f13193c.clearFocus();
                    SharkInsertChannelDialog.this.f13194d.setFocusable(true);
                    SharkInsertChannelDialog.this.f13194d.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13194d.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13194d.isFocused()) {
                    SharkInsertChannelDialog.this.f13194d.setFocusable(false);
                    SharkInsertChannelDialog.this.f13194d.setFocusableInTouchMode(false);
                    SharkInsertChannelDialog.this.f13194d.clearFocus();
                    SharkInsertChannelDialog.this.f13195e.setFocusable(true);
                    SharkInsertChannelDialog.this.f13195e.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13195e.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13195e.isFocused()) {
                    SharkInsertChannelDialog.this.f13195e.setFocusable(false);
                    SharkInsertChannelDialog.this.f13195e.setFocusableInTouchMode(false);
                    SharkInsertChannelDialog.this.f13195e.clearFocus();
                    SharkInsertChannelDialog.this.f13196f.setFocusable(true);
                    SharkInsertChannelDialog.this.f13196f.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13196f.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13196f.isFocused()) {
                    SharkInsertChannelDialog.this.f13196f.setFocusable(false);
                    SharkInsertChannelDialog.this.f13196f.setFocusableInTouchMode(false);
                    SharkInsertChannelDialog.this.f13196f.clearFocus();
                    SharkInsertChannelDialog.this.f13197g.setFocusable(true);
                    SharkInsertChannelDialog.this.f13197g.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13197g.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13197g.isFocused()) {
                    SharkInsertChannelDialog.this.f13197g.setFocusable(false);
                    SharkInsertChannelDialog.this.f13197g.setFocusableInTouchMode(false);
                    SharkInsertChannelDialog.this.f13197g.clearFocus();
                    SharkInsertChannelDialog.this.f13198h.setFocusable(true);
                    SharkInsertChannelDialog.this.f13198h.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13198h.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13198h.isFocused()) {
                    SharkInsertChannelDialog.this.f13198h.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(SharkInsertChannelDialog.this.f13193c.getText().toString()) || TextUtils.isEmpty(SharkInsertChannelDialog.this.f13194d.getText().toString()) || TextUtils.isEmpty(SharkInsertChannelDialog.this.f13195e.getText().toString()) || TextUtils.isEmpty(SharkInsertChannelDialog.this.f13196f.getText().toString()) || TextUtils.isEmpty(SharkInsertChannelDialog.this.f13197g.getText().toString()) || TextUtils.isEmpty(SharkInsertChannelDialog.this.f13198h.getText().toString())) {
                SharkInsertChannelDialog.this.f13199i.setText("");
                return;
            }
            SharkInsertChannelDialog.this.f13199i.setText(SharkInsertChannelDialog.f13190p[Integer.parseInt(SharkInsertChannelDialog.this.f13198h.getText().toString())]);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C4161y.m11054a("InsertChannelDialog", "beforeTextChanged:s:" + ((Object) charSequence) + " start:" + i + " count:" + i2 + " after:" + i3);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C4161y.m11054a("InsertChannelDialog", "onTextChanged:s:" + ((Object) charSequence) + " start:" + i + " before:" + i2 + " count:" + i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$i */
    /* loaded from: classes2.dex */
    public class C3664i extends BaseAdapter {
        C3664i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (SharkInsertChannelDialog.f13189o == null || SharkInsertChannelDialog.f13189o.length <= 0) {
                return 0;
            }
            return SharkInsertChannelDialog.f13189o.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (SharkInsertChannelDialog.f13189o == null || SharkInsertChannelDialog.f13189o.length <= 0) {
                return null;
            }
            return SharkInsertChannelDialog.f13189o[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) SharkInsertChannelDialog.this.f13203m.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) SharkInsertChannelDialog.this.f13203m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(SharkInsertChannelDialog.f13189o[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) SharkInsertChannelDialog.this.f13203m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_choose_number));
                textView2.setText(SharkInsertChannelDialog.f13189o[i]);
                if (SharkInsertChannelDialog.this.f13193c.isFocused()) {
                    if (i != 3 && i != 6) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SharkInsertChannelDialog.this.f13194d.isFocused()) {
                    if (!TextUtils.isEmpty(SharkInsertChannelDialog.this.f13193c.getText().toString())) {
                        if (SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1")) {
                            if (i != 3) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (i != 8 && i != 3) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SharkInsertChannelDialog.this.f13195e.isFocused()) {
                    if (!TextUtils.isEmpty(SharkInsertChannelDialog.this.f13193c.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13194d.getText().toString())) {
                        if (SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1")) {
                            if (i != 0 && i != 1 && i != 3 && i != 4 && i != 5) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (!SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") || !SharkInsertChannelDialog.this.f13193c.getText().toString().equals("4")) {
                            SharkInsertChannelDialog.this.f13194d.getText().toString().equals("3");
                        } else if (i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SharkInsertChannelDialog.this.f13196f.isFocused()) {
                    if (!TextUtils.isEmpty(SharkInsertChannelDialog.this.f13193c.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13194d.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13195e.getText().toString())) {
                        if (((SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SharkInsertChannelDialog.this.f13193c.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals("0"))) && i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SharkInsertChannelDialog.this.f13197g.isFocused()) {
                    if (!TextUtils.isEmpty(SharkInsertChannelDialog.this.f13193c.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13194d.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13195e.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13196f.getText().toString())) {
                        if (((SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SharkInsertChannelDialog.this.f13193c.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals("0"))) && i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SharkInsertChannelDialog.this.f13198h.isFocusable()) {
                    if (!TextUtils.isEmpty(SharkInsertChannelDialog.this.f13193c.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13194d.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13195e.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13196f.getText().toString()) && !TextUtils.isEmpty(SharkInsertChannelDialog.this.f13197g.getText().toString())) {
                        if ((SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SharkInsertChannelDialog.this.f13193c.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals("0"))) {
                            if (i != 10) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (i != 10 && i != 7 && i != 4 && i != 0) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                }
                return textView2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$j */
    /* loaded from: classes2.dex */
    public class C3665j implements AdapterView.OnItemClickListener {
        C3665j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (SharkInsertChannelDialog.this.f13198h.isFocused()) {
                    if (SharkInsertChannelDialog.this.f13198h.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(SharkInsertChannelDialog.this.f13196f.getText());
                        int selectionStart = Selection.getSelectionStart(SharkInsertChannelDialog.this.f13196f.getText());
                        int selectionStart2 = SharkInsertChannelDialog.this.f13198h.getSelectionStart();
                        if (selectionStart2 > 0) {
                            SharkInsertChannelDialog.this.f13198h.getText().delete(selectionStart2 - 1, selectionStart2);
                            return;
                        } else if (selectionEnd - selectionStart > 0) {
                            SharkInsertChannelDialog.this.f13198h.getText().delete(selectionStart, selectionEnd);
                            return;
                        } else {
                            return;
                        }
                    }
                    SharkInsertChannelDialog.this.f13197g.setText("");
                    SharkInsertChannelDialog.this.f13198h.clearFocus();
                    SharkInsertChannelDialog.this.f13197g.setFocusable(true);
                    SharkInsertChannelDialog.this.f13197g.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13197g.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13197g.isFocused()) {
                    SharkInsertChannelDialog.this.f13196f.setText("");
                    SharkInsertChannelDialog.this.f13197g.clearFocus();
                    SharkInsertChannelDialog.this.f13196f.setFocusable(true);
                    SharkInsertChannelDialog.this.f13196f.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13196f.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13196f.isFocused()) {
                    SharkInsertChannelDialog.this.f13195e.setText("");
                    SharkInsertChannelDialog.this.f13196f.clearFocus();
                    SharkInsertChannelDialog.this.f13195e.setFocusable(true);
                    SharkInsertChannelDialog.this.f13195e.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13195e.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13195e.isFocused()) {
                    SharkInsertChannelDialog.this.f13194d.setText("");
                    SharkInsertChannelDialog.this.f13195e.clearFocus();
                    SharkInsertChannelDialog.this.f13194d.setFocusable(true);
                    SharkInsertChannelDialog.this.f13194d.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13194d.requestFocus();
                } else if (SharkInsertChannelDialog.this.f13194d.isFocused()) {
                    SharkInsertChannelDialog.this.f13193c.setText("");
                    SharkInsertChannelDialog.this.f13194d.clearFocus();
                    SharkInsertChannelDialog.this.f13193c.setFocusable(true);
                    SharkInsertChannelDialog.this.f13193c.setFocusableInTouchMode(true);
                    SharkInsertChannelDialog.this.f13193c.requestFocus();
                }
            } else if (i != 11) {
                if (SharkInsertChannelDialog.this.f13193c.isFocused()) {
                    if (i != 3 && i != 6) {
                        return;
                    }
                } else if (SharkInsertChannelDialog.this.f13194d.isFocused()) {
                    if (TextUtils.isEmpty(SharkInsertChannelDialog.this.f13193c.getText().toString())) {
                        return;
                    }
                    if (SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (i != 8 && i != 3) {
                        return;
                    }
                } else if (SharkInsertChannelDialog.this.f13195e.isFocused()) {
                    if (MethodsUtils.m11278v(SharkInsertChannelDialog.this.f13193c, SharkInsertChannelDialog.this.f13194d)) {
                        return;
                    }
                    if (SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1")) {
                        if (i != 0 && i != 1 && i != 3 && i != 4 && i != 5) {
                            return;
                        }
                    } else if (!SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") || !SharkInsertChannelDialog.this.f13193c.getText().toString().equals("4")) {
                        SharkInsertChannelDialog.this.f13194d.getText().toString().equals("3");
                    } else if (i != 10) {
                        return;
                    }
                } else if (SharkInsertChannelDialog.this.f13196f.isFocused()) {
                    if (MethodsUtils.m11278v(SharkInsertChannelDialog.this.f13193c, SharkInsertChannelDialog.this.f13194d, SharkInsertChannelDialog.this.f13195e)) {
                        return;
                    }
                    if (((SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SharkInsertChannelDialog.this.f13193c.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (SharkInsertChannelDialog.this.f13197g.isFocused()) {
                    if (MethodsUtils.m11278v(SharkInsertChannelDialog.this.f13193c, SharkInsertChannelDialog.this.f13194d, SharkInsertChannelDialog.this.f13195e, SharkInsertChannelDialog.this.f13196f)) {
                        return;
                    }
                    if (((SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SharkInsertChannelDialog.this.f13193c.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (SharkInsertChannelDialog.this.f13198h.isFocused()) {
                    if (MethodsUtils.m11278v(SharkInsertChannelDialog.this.f13193c, SharkInsertChannelDialog.this.f13194d, SharkInsertChannelDialog.this.f13195e, SharkInsertChannelDialog.this.f13196f, SharkInsertChannelDialog.this.f13197g)) {
                        return;
                    }
                    if ((SharkInsertChannelDialog.this.f13193c.getText().toString().equals("1") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SharkInsertChannelDialog.this.f13193c.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13194d.getText().toString().equals("4") && SharkInsertChannelDialog.this.f13195e.getText().toString().equals("0"))) {
                        if (i != 10) {
                            return;
                        }
                    } else if (i != 10 && i != 7 && i != 4 && i != 0) {
                        return;
                    }
                }
                if (SharkInsertChannelDialog.this.f13193c.isFocused()) {
                    SharkInsertChannelDialog.this.f13193c.setText(SharkInsertChannelDialog.f13189o[i]);
                } else if (SharkInsertChannelDialog.this.f13194d.isFocused()) {
                    SharkInsertChannelDialog.this.f13194d.setText(SharkInsertChannelDialog.f13189o[i]);
                } else if (SharkInsertChannelDialog.this.f13195e.isFocused()) {
                    SharkInsertChannelDialog.this.f13195e.setText(SharkInsertChannelDialog.f13189o[i]);
                } else if (SharkInsertChannelDialog.this.f13196f.isFocused()) {
                    SharkInsertChannelDialog.this.f13196f.setText(SharkInsertChannelDialog.f13189o[i]);
                } else if (SharkInsertChannelDialog.this.f13197g.isFocused()) {
                    SharkInsertChannelDialog.this.f13197g.setText(SharkInsertChannelDialog.f13189o[i]);
                } else if (SharkInsertChannelDialog.this.f13198h.isFocused() && SharkInsertChannelDialog.this.f13198h.getText().length() == 0) {
                    SharkInsertChannelDialog.this.f13198h.setText(SharkInsertChannelDialog.f13189o[i]);
                }
            } else {
                StringBuilder sb = new StringBuilder();
                String obj = SharkInsertChannelDialog.this.f13193c.getText().toString();
                String obj2 = SharkInsertChannelDialog.this.f13194d.getText().toString();
                String obj3 = SharkInsertChannelDialog.this.f13195e.getText().toString();
                String obj4 = SharkInsertChannelDialog.this.f13196f.getText().toString();
                String obj5 = SharkInsertChannelDialog.this.f13197g.getText().toString();
                String obj6 = SharkInsertChannelDialog.this.f13198h.getText().toString();
                String obj7 = SharkInsertChannelDialog.this.f13199i.getText().toString();
                if (MethodsUtils.m11278v(SharkInsertChannelDialog.this.f13193c, SharkInsertChannelDialog.this.f13194d, SharkInsertChannelDialog.this.f13195e, SharkInsertChannelDialog.this.f13196f, SharkInsertChannelDialog.this.f13197g, SharkInsertChannelDialog.this.f13198h)) {
                    return;
                }
                sb.append(obj);
                sb.append(obj2);
                sb.append(obj3);
                sb.append(".");
                sb.append(obj4);
                sb.append(obj5);
                sb.append(obj6);
                sb.append(obj7);
                String sb2 = sb.toString();
                int m11291i = MethodsUtils.m11291i(sb2);
                C4161y.m11054a("InsertChannelDialog", "freq:" + m11291i);
                if ((m11291i < 144000000 || m11291i > 148000000) && (m11291i < 430000000 || m11291i > 440000000)) {
                    return;
                }
                if (TextUtils.isEmpty(SharkInsertChannelDialog.this.f13201k)) {
                    if (SharkInsertChannelDialog.this.f13192b != null) {
                        SharkInsertChannelDialog.this.f13192b.mo12703b(sb2);
                    }
                } else if (SharkInsertChannelDialog.this.f13192b != null) {
                    SharkInsertChannelDialog.this.f13192b.mo12704a(sb2);
                }
                SharkInsertChannelDialog.this.dismiss();
            }
        }
    }

    /* compiled from: SharkInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.c.a$k */
    /* loaded from: classes2.dex */
    public interface InterfaceC3666k {
        /* renamed from: a */
        void mo12704a(String str);

        /* renamed from: b */
        void mo12703b(String str);
    }

    public SharkInsertChannelDialog(Activity activity, String str, int i) {
        super(activity);
        this.f13204n = new C3663h();
        this.f13191a = activity;
        this.f13203m = LayoutInflater.from(activity);
        this.f13201k = str;
        this.f13202l = i;
        String[] strArr = f13189o;
        strArr[strArr.length - 1] = this.f13191a.getString(R.string.common_select);
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: c */
    protected boolean mo8931c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        super.mo8735d(i);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_shark_input_custom_channel);
        m9037g(this.f13191a);
        m12923u();
    }

    @Override // android.app.Dialog
    public void show() {
        int m11291i;
        super.show();
        if (!TextUtils.isEmpty(this.f13201k)) {
            String replace = this.f13201k.replace(".", "");
            String str = this.f13201k;
            if (str != null && (((m11291i = MethodsUtils.m11291i(str)) < 430000000 && m11291i >= 400000000) || (m11291i > 440000000 && m11291i <= 470000000))) {
                replace = null;
            }
            if (replace != null && replace.length() == 7) {
                char[] charArray = replace.toCharArray();
                this.f13193c.setText(String.valueOf(charArray[0]));
                this.f13194d.setText(String.valueOf(charArray[1]));
                this.f13195e.setText(String.valueOf(charArray[2]));
                this.f13196f.setText(String.valueOf(charArray[3]));
                this.f13197g.setText(String.valueOf(charArray[4]));
                this.f13198h.setText(String.valueOf(charArray[5]));
                this.f13199i.setText(String.valueOf(charArray[6]));
                this.f13198h.setFocusable(true);
                this.f13198h.setFocusableInTouchMode(true);
                this.f13198h.requestFocus();
                this.f13198h.setSelection(1);
            } else {
                this.f13193c.setFocusable(true);
                this.f13193c.setFocusableInTouchMode(true);
                this.f13193c.requestFocus();
            }
        } else {
            this.f13193c.setFocusable(true);
            this.f13193c.setFocusableInTouchMode(true);
            this.f13193c.requestFocus();
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    /* renamed from: u */
    public void m12923u() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        int i = this.f13202l;
        if (i == 1) {
            textView.setText(R.string.emission_frequency);
        } else if (i == 2) {
            textView.setText(R.string.receive_frequency);
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        C3664i c3664i = new C3664i();
        this.f13200j = c3664i;
        gridView.setAdapter((ListAdapter) c3664i);
        gridView.setOnItemClickListener(new C3665j());
        this.f13193c = (EditText) findViewById(R.id.et_input_num_1);
        this.f13194d = (EditText) findViewById(R.id.et_input_num_2);
        this.f13195e = (EditText) findViewById(R.id.et_input_num_3);
        this.f13196f = (EditText) findViewById(R.id.et_input_num_4);
        this.f13197g = (EditText) findViewById(R.id.et_input_num_5);
        this.f13198h = (EditText) findViewById(R.id.et_input_num_6);
        this.f13199i = (EditText) findViewById(R.id.et_input_num_7);
        this.f13193c.setTextIsSelectable(true);
        this.f13194d.setTextIsSelectable(true);
        this.f13195e.setTextIsSelectable(true);
        this.f13196f.setTextIsSelectable(true);
        this.f13197g.setTextIsSelectable(true);
        this.f13198h.setTextIsSelectable(true);
        this.f13193c.setOnLongClickListener(null);
        this.f13194d.setOnClickListener(null);
        this.f13193c.setFocusable(false);
        this.f13193c.setFocusableInTouchMode(false);
        this.f13194d.setFocusable(false);
        this.f13194d.setFocusableInTouchMode(false);
        this.f13195e.setFocusable(false);
        this.f13195e.setFocusableInTouchMode(false);
        this.f13196f.setFocusable(false);
        this.f13196f.setFocusableInTouchMode(false);
        this.f13197g.setFocusable(false);
        this.f13197g.setFocusableInTouchMode(false);
        this.f13198h.setFocusable(false);
        this.f13198h.setFocusableInTouchMode(false);
        this.f13199i.setFocusable(false);
        this.f13199i.setFocusableInTouchMode(false);
        this.f13199i.setKeyListener(null);
        this.f13193c.addTextChangedListener(this.f13204n);
        this.f13194d.addTextChangedListener(this.f13204n);
        this.f13195e.addTextChangedListener(this.f13204n);
        this.f13196f.addTextChangedListener(this.f13204n);
        this.f13197g.addTextChangedListener(this.f13204n);
        this.f13198h.addTextChangedListener(this.f13204n);
        this.f13197g.setCustomSelectionActionModeCallback(new ActionMode$CallbackC3656a(this));
        this.f13193c.setOnFocusChangeListener(new View$OnFocusChangeListenerC3657b());
        this.f13194d.setOnFocusChangeListener(new View$OnFocusChangeListenerC3658c());
        this.f13195e.setOnFocusChangeListener(new View$OnFocusChangeListenerC3659d());
        this.f13196f.setOnFocusChangeListener(new View$OnFocusChangeListenerC3660e());
        this.f13197g.setOnFocusChangeListener(new View$OnFocusChangeListenerC3661f());
        this.f13198h.setOnFocusChangeListener(new View$OnFocusChangeListenerC3662g());
    }

    /* renamed from: v */
    public void m12922v(InterfaceC3666k interfaceC3666k) {
        this.f13192b = interfaceC3666k;
    }
}
