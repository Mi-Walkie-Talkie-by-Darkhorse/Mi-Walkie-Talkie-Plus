package org.osmdroid.views.overlay.infowindow;

import android.content.Context;
import android.text.Html;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import org.osmdroid.api.IMapView;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.OverlayWithIW;

public class BasicInfoWindow extends InfoWindow {
    public static final int UNDEFINED_RES_ID = 0;
    static int mDescriptionId = 0;
    static int mImageId = 0;
    static int mSubDescriptionId = 0;
    static int mTitleId = 0;

    private static void setResIds(Context context) {
        String packageName = context.getPackageName();
        mTitleId = context.getResources().getIdentifier("id/bubble_title", null, packageName);
        mDescriptionId = context.getResources().getIdentifier("id/bubble_description", null, packageName);
        mSubDescriptionId = context.getResources().getIdentifier("id/bubble_subdescription", null, packageName);
        mImageId = context.getResources().getIdentifier("id/bubble_image", null, packageName);
        if (mTitleId == 0 || mDescriptionId == 0 || mSubDescriptionId == 0 || mImageId == 0) {
            Log.e(IMapView.LOGTAG, "BasicInfoWindow: unable to get res ids in " + packageName);
        }
    }

    public BasicInfoWindow(int i, MapView mapView) {
        super(i, mapView);
        if (mTitleId == 0) {
            setResIds(mapView.getContext());
        }
        this.mView.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    BasicInfoWindow.this.close();
                }
                return true;
            }
        });
    }

    public void onOpen(Object obj) {
        String str;
        OverlayWithIW overlayWithIW = (OverlayWithIW) obj;
        String title = overlayWithIW.getTitle();
        if (title == null) {
            str = "";
        } else {
            str = title;
        }
        if (this.mView == null) {
            Log.w(IMapView.LOGTAG, "Error trapped, BasicInfoWindow.open, mView is null!");
            return;
        }
        TextView textView = (TextView) this.mView.findViewById(mTitleId);
        if (textView != null) {
            textView.setText(str);
        }
        String snippet = overlayWithIW.getSnippet();
        if (snippet == null) {
            snippet = "";
        }
        ((TextView) this.mView.findViewById(mDescriptionId)).setText(Html.fromHtml(snippet));
        TextView textView2 = (TextView) this.mView.findViewById(mSubDescriptionId);
        String subDescription = overlayWithIW.getSubDescription();
        if (subDescription == null || "".equals(subDescription)) {
            textView2.setVisibility(8);
            return;
        }
        textView2.setText(Html.fromHtml(subDescription));
        textView2.setVisibility(0);
    }

    public void onClose() {
    }
}
