package org.osmdroid.views.overlay;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import org.osmdroid.library.R;

public class ItemizedOverlayControlView extends LinearLayout {
    protected ImageButton mCenterToButton;
    protected ItemizedOverlayControlViewListener mLis;
    protected ImageButton mNavToButton;
    protected ImageButton mNextButton;
    protected ImageButton mPreviousButton;

    public interface ItemizedOverlayControlViewListener {
        void onCenter();

        void onNavTo();

        void onNext();

        void onPrevious();
    }

    public ItemizedOverlayControlView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPreviousButton = new ImageButton(context);
        this.mPreviousButton.setImageDrawable(context.getResources().getDrawable(R.drawable.previous));
        this.mNextButton = new ImageButton(context);
        this.mNextButton.setImageDrawable(context.getResources().getDrawable(R.drawable.next));
        this.mCenterToButton = new ImageButton(context);
        this.mCenterToButton.setImageDrawable(context.getResources().getDrawable(R.drawable.center));
        this.mNavToButton = new ImageButton(context);
        this.mNavToButton.setImageDrawable(context.getResources().getDrawable(R.drawable.navto_small));
        addView(this.mPreviousButton, new LayoutParams(-2, -2));
        addView(this.mCenterToButton, new LayoutParams(-2, -2));
        addView(this.mNavToButton, new LayoutParams(-2, -2));
        addView(this.mNextButton, new LayoutParams(-2, -2));
        initViewListeners();
    }

    public void setItemizedOverlayControlViewListener(ItemizedOverlayControlViewListener itemizedOverlayControlViewListener) {
        this.mLis = itemizedOverlayControlViewListener;
    }

    public void setNextEnabled(boolean z) {
        this.mNextButton.setEnabled(z);
    }

    public void setPreviousEnabled(boolean z) {
        this.mPreviousButton.setEnabled(z);
    }

    public void setNavToVisible(int i) {
        this.mNavToButton.setVisibility(i);
    }

    private void initViewListeners() {
        this.mNextButton.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (ItemizedOverlayControlView.this.mLis != null) {
                    ItemizedOverlayControlView.this.mLis.onNext();
                }
            }
        });
        this.mPreviousButton.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (ItemizedOverlayControlView.this.mLis != null) {
                    ItemizedOverlayControlView.this.mLis.onPrevious();
                }
            }
        });
        this.mCenterToButton.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (ItemizedOverlayControlView.this.mLis != null) {
                    ItemizedOverlayControlView.this.mLis.onCenter();
                }
            }
        });
        this.mNavToButton.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (ItemizedOverlayControlView.this.mLis != null) {
                    ItemizedOverlayControlView.this.mLis.onNavTo();
                }
            }
        });
    }
}
