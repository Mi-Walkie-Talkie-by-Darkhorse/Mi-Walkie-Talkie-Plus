package com.ifengyu.intercom.ui.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.ifengyu.intercom.network.d;
import com.jude.rollviewpager.RollPagerView;
import com.jude.rollviewpager.adapter.LoopPagerAdapter;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;

public class PicLoopPagerAdapter extends LoopPagerAdapter {
    private ArrayList<DiscoveryArticleBean> a;
    private final DisplayImageOptions b = new Builder().showImageForEmptyUri((int) R.drawable.find_lose_photo).showImageOnFail((int) R.drawable.find_lose_photo).showImageOnLoading((int) R.drawable.find_wifi_photo).cacheInMemory(true).cacheOnDisk(true).build();

    public PicLoopPagerAdapter(ArrayList<DiscoveryArticleBean> arrayList, RollPagerView rollPagerView) {
        super(rollPagerView);
        this.a = arrayList;
    }

    public View a(ViewGroup viewGroup, int i) {
        ImageView imageView = new ImageView(viewGroup.getContext());
        imageView.setScaleType(ScaleType.CENTER_CROP);
        imageView.setLayoutParams(new LayoutParams(-1, -1));
        ImageLoader.getInstance().displayImage(d.e + ((DiscoveryArticleBean) this.a.get(i)).getHeader_image_url().getBig(), imageView, this.b);
        String big = ((DiscoveryArticleBean) this.a.get(i)).getHeader_image_url().getBig();
        if (big.toLowerCase().contains("http:") || big.toLowerCase().contains("https:")) {
            ImageLoader.getInstance().displayImage(big, imageView, this.b);
        } else {
            ImageLoader.getInstance().displayImage(d.e + big, imageView, this.b);
        }
        return imageView;
    }

    public int a() {
        return this.a.size();
    }

    public void a(ArrayList<DiscoveryArticleBean> arrayList) {
        this.a = arrayList;
    }
}
