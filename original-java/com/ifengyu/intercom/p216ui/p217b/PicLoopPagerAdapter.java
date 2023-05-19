package com.ifengyu.intercom.p216ui.p217b;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.jude.rollviewpager.RollPagerView;
import com.jude.rollviewpager.p239d.LoopPagerAdapter;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;

/* renamed from: com.ifengyu.intercom.ui.b.g */
/* loaded from: classes2.dex */
public class PicLoopPagerAdapter extends LoopPagerAdapter {

    /* renamed from: c */
    private ArrayList<DiscoveryArticleBean> f15029c;

    /* renamed from: d */
    private final DisplayImageOptions f15030d;

    public PicLoopPagerAdapter(ArrayList<DiscoveryArticleBean> arrayList, RollPagerView rollPagerView) {
        super(rollPagerView);
        this.f15029c = arrayList;
        this.f15030d = new DisplayImageOptions.Builder().showImageForEmptyUri(R.drawable.find_lose_photo).showImageOnFail(R.drawable.find_lose_photo).showImageOnLoading(R.drawable.find_wifi_photo).cacheInMemory(true).cacheOnDisk(true).build();
    }

    @Override // com.jude.rollviewpager.p239d.LoopPagerAdapter
    /* renamed from: b */
    public int mo8322b() {
        return this.f15029c.size();
    }

    @Override // com.jude.rollviewpager.p239d.LoopPagerAdapter
    /* renamed from: c */
    public View mo8321c(ViewGroup viewGroup, int i) {
        ImageView imageView = new ImageView(viewGroup.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ImageLoader imageLoader = ImageLoader.getInstance();
        imageLoader.displayImage("https://cms.ifengyu.com" + this.f15029c.get(i).getHeader_image_url().getBig(), imageView, this.f15030d);
        String big = this.f15029c.get(i).getHeader_image_url().getBig();
        if (!big.toLowerCase().contains("http:") && !big.toLowerCase().contains("https:")) {
            ImageLoader imageLoader2 = ImageLoader.getInstance();
            imageLoader2.displayImage("https://cms.ifengyu.com" + big, imageView, this.f15030d);
        } else {
            ImageLoader.getInstance().displayImage(big, imageView, this.f15030d);
        }
        return imageView;
    }
}
