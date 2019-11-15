package com.nostra13.universalimageloader.core.display;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;

public interface BitmapDisplayer {
    void display(Bitmap bitmap, ImageAware imageAware, LoadedFrom loadedFrom);
}
