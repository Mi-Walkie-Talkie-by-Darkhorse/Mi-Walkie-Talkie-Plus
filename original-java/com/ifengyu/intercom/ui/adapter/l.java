package com.ifengyu.intercom.ui.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.jude.rollviewpager.RollPagerView;
import com.jude.rollviewpager.d.a;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;

/* compiled from: PicLoopPagerAdapter.java */
/* loaded from: classes2.dex */
public class l extends a {

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<DiscoveryArticleBean> f6336c;
    private final DisplayImageOptions d = new DisplayImageOptions.Builder().showImageForEmptyUri(R.drawable.find_lose_photo).showImageOnFail(R.drawable.find_lose_photo).showImageOnLoading(R.drawable.find_wifi_photo).cacheInMemory(true).cacheOnDisk(true).build();

    public l(ArrayList<DiscoveryArticleBean> arrayList, RollPagerView rollPagerView) {
        super(rollPagerView);
        this.f6336c = arrayList;
    }

    @Override // com.jude.rollviewpager.d.a
    public View a(ViewGroup viewGroup, int i) {
        ImageView imageView = new ImageView(viewGroup.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ImageLoader instance = ImageLoader.getInstance();
        instance.displayImage("https://cms.ifengyu.com" + this.f6336c.get(i).getHeader_image_url().getBig(), imageView, this.d);
        String big = this.f6336c.get(i).getHeader_image_url().getBig();
        if (big.toLowerCase().contains("http:") || big.toLowerCase().contains("https:")) {
            ImageLoader.getInstance().displayImage(big, imageView, this.d);
        } else {
            ImageLoader instance2 = ImageLoader.getInstance();
            instance2.displayImage("https://cms.ifengyu.com" + big, imageView, this.d);
        }
        return imageView;
    }

    @Override // com.jude.rollviewpager.d.a
    public int a() {
        return this.f6336c.size();
    }

    public void a(ArrayList<DiscoveryArticleBean> arrayList) {
        this.f6336c = arrayList;
    }
}
