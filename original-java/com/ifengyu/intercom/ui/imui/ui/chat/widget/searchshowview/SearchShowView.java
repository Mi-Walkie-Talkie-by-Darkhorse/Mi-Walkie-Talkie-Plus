package com.ifengyu.intercom.ui.imui.ui.chat.widget.searchshowview;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.ifengyu.intercom.R;
import java.util.HashMap;

public class SearchShowView extends LinearLayout {
    private int disPlayWidth;
    /* access modifiers changed from: private */
    public boolean mChangedNull;
    /* access modifiers changed from: private */
    public EditText mEt;
    /* access modifiers changed from: private */
    public HorizontalScrollView mHs;
    private ImageView mLeftEditIv;
    /* access modifiers changed from: private */
    public IconRemoveListener mListener;
    /* access modifiers changed from: private */
    public LinearLayout mLlContainer;
    private View mRootView;
    /* access modifiers changed from: private */
    public TextWatcher mTextWatcher;
    /* access modifiers changed from: private */
    public View markedChild;
    /* access modifiers changed from: private */
    public int num;
    /* access modifiers changed from: private */
    public HashMap<String, View> views;

    public interface IconRemoveListener {
        void onIconRemoved(View view, String str);
    }

    public SearchShowView(Context context) {
        this(context, null);
    }

    public SearchShowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchShowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.views = new HashMap<>();
        this.num = 0;
        initView(context);
    }

    private void initView(Context context) {
        this.disPlayWidth = getResources().getDisplayMetrics().widthPixels;
        this.mRootView = View.inflate(context, R.layout.search_show_view, this);
        this.mLlContainer = (LinearLayout) this.mRootView.findViewById(R.id.search_show_view_container);
        this.mHs = (HorizontalScrollView) this.mRootView.findViewById(R.id.search_show_view_hs);
        this.mEt = (EditText) this.mRootView.findViewById(R.id.search_show_view_et);
        this.mLeftEditIv = (ImageView) this.mRootView.findViewById(R.id.search_show_view_edit_iv);
        initListener();
    }

    private void initListener() {
        this.mEt.setOnKeyListener(new OnKeyListener() {
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                SearchShowView.this.num = SearchShowView.this.num + 1;
                if (SearchShowView.this.num == 2) {
                    SearchShowView.this.num = 0;
                    Log.d(SearchShowView.this.getClass().getSimpleName(), "按键为" + i);
                    if (i == 67 && TextUtils.isEmpty(SearchShowView.this.mEt.getText().toString()) && SearchShowView.this.views.size() != 0 && !SearchShowView.this.mChangedNull) {
                        Log.d(SearchShowView.this.getClass().getSimpleName(), "setOnKeyListener事件　删除键被触发了");
                        View childAt = SearchShowView.this.mLlContainer.getChildAt(SearchShowView.this.mLlContainer.getChildCount() - 1);
                        if (SearchShowView.this.markedChild == childAt) {
                            SearchShowView.this.removeViewEvent((String) SearchShowView.this.markedChild.getTag());
                        } else {
                            SearchShowView.this.markedChild = childAt;
                            childAt.setAlpha(0.5f);
                        }
                        return true;
                    }
                }
                SearchShowView.this.mChangedNull = false;
                return false;
            }
        });
        this.mEt.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (SearchShowView.this.mTextWatcher != null) {
                    SearchShowView.this.mTextWatcher.beforeTextChanged(charSequence, i, i2, i3);
                }
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!charSequence.toString().isEmpty() && SearchShowView.this.markedChild != null) {
                    SearchShowView.this.markedChild.setAlpha(1.0f);
                    SearchShowView.this.markedChild = null;
                }
                SearchShowView.this.mChangedNull = true;
                if (SearchShowView.this.mTextWatcher != null) {
                    SearchShowView.this.mTextWatcher.onTextChanged(charSequence, i, i2, i3);
                }
            }

            public void afterTextChanged(Editable editable) {
                if (SearchShowView.this.mTextWatcher != null) {
                    SearchShowView.this.mTextWatcher.afterTextChanged(editable);
                }
            }
        });
    }

    public boolean addIconView(View view, final String str) {
        if (this.markedChild != null) {
            this.markedChild.setAlpha(1.0f);
            this.markedChild = null;
        }
        if (this.views.containsKey(str)) {
            return false;
        }
        view.setTag(str);
        this.views.put(str, view);
        this.mLlContainer.addView(view);
        this.mLlContainer.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                SearchShowView.this.mHs.smoothScrollTo(SearchShowView.this.mLlContainer.getMeasuredWidth(), 0);
                SearchShowView.this.mLlContainer.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        });
        if (this.views.size() > 0) {
            this.mLeftEditIv.setVisibility(8);
        }
        view.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SearchShowView.this.removeViewEvent(str);
                if (SearchShowView.this.mListener != null) {
                    SearchShowView.this.mListener.onIconRemoved(SearchShowView.this, str);
                }
            }
        });
        return true;
    }

    public boolean removeIconView(String str) {
        if (((View) this.views.get(str)) == null) {
            return false;
        }
        removeViewEvent(str);
        return true;
    }

    /* access modifiers changed from: private */
    public void removeViewEvent(String str) {
        Log.d(getClass().getSimpleName(), "removeViewEvent删除执行之前");
        View view = (View) this.views.get(str);
        if (this.markedChild == view) {
            this.markedChild = null;
        }
        this.mLlContainer.removeView(view);
        this.views.remove(str);
        Log.d(getClass().getSimpleName(), "removeViewEvent删除执行之后");
        Log.d(getClass().getSimpleName(), "removeViewEvent删除执行之后，Map的大小" + this.views.size());
        if (this.views.size() == 0) {
            this.mLeftEditIv.setVisibility(0);
        }
    }

    public void setOnIconRemoveListener(IconRemoveListener iconRemoveListener) {
        this.mListener = iconRemoveListener;
    }

    public void addTextChangedListener(TextWatcher textWatcher) {
        this.mTextWatcher = textWatcher;
    }

    public int getChildViewCount() {
        return this.mLlContainer.getChildCount();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Log.d(getClass().getSimpleName(), "onLayout");
    }
}
