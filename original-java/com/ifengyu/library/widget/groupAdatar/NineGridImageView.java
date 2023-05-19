package com.ifengyu.library.widget.groupAdatar;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.ifengyu.library.utils.UIUtils;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class NineGridImageView extends ViewGroup {

    /* renamed from: a */
    private int f16394a;

    /* renamed from: b */
    private int f16395b;

    /* renamed from: c */
    private int f16396c;

    /* renamed from: d */
    private int f16397d;

    /* renamed from: e */
    private ArrayList<ImageView> f16398e;

    /* renamed from: f */
    private String[] f16399f;

    /* renamed from: g */
    private NineGridImageViewAdapter f16400g;

    public NineGridImageView(Context context) {
        super(context, null);
        this.f16395b = UIUtils.m8616b(2.0f);
        this.f16398e = new ArrayList<>();
    }

    /* renamed from: a */
    private static int[] m8590a(int i) {
        int[] iArr = new int[2];
        if (i < 3) {
            iArr[0] = 1;
            iArr[1] = i;
        } else if (i <= 4) {
            iArr[0] = 2;
            iArr[1] = 2;
        } else {
            iArr[0] = (i / 3) + (i % 3 == 0 ? 0 : 1);
            iArr[1] = 3;
        }
        return iArr;
    }

    /* renamed from: b */
    private ImageView m8589b(int i) {
        if (i < this.f16398e.size()) {
            return this.f16398e.get(i);
        }
        NineGridImageViewAdapter nineGridImageViewAdapter = this.f16400g;
        if (nineGridImageViewAdapter != null) {
            ImageView m8585a = nineGridImageViewAdapter.m8585a(getContext());
            this.f16398e.add(m8585a);
            return m8585a;
        }
        Log.e("NineGridImageView", "NineGridImageViewAdapter == null");
        return null;
    }

    /* renamed from: c */
    private void m8588c() {
        NineGridImageView nineGridImageView = this;
        String[] strArr = nineGridImageView.f16399f;
        if (strArr != null) {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                ImageView imageView = (ImageView) nineGridImageView.getChildAt(i);
                NineGridImageViewAdapter nineGridImageViewAdapter = nineGridImageView.f16400g;
                if (nineGridImageViewAdapter != null) {
                    nineGridImageViewAdapter.m8584b(getContext(), imageView, nineGridImageView.f16399f[i]);
                }
                int i2 = nineGridImageView.f16394a;
                int i3 = i / i2;
                int i4 = i % i2;
                int i5 = nineGridImageView.f16396c;
                int i6 = nineGridImageView.f16395b;
                int i7 = (i5 - ((i2 + 1) * i6)) / i2;
                int i8 = nineGridImageView.f16397d;
                int i9 = (i8 + i6) / 2;
                int i10 = (i8 - i6) / 2;
                int i11 = (i5 + i6) / 2;
                int i12 = (i5 - i6) / 2;
                int i13 = (i8 - i7) / 2;
                int i14 = (i7 * i4) + ((i4 + 1) * i6);
                int i15 = (i7 * i3) + ((i3 + 1) * i6);
                int i16 = i14 + i7;
                int i17 = i15 + i7;
                if (length == 1) {
                    imageView.layout(0, 0, i5, i8);
                } else if (length == 2) {
                    imageView.layout(i14, i13, i16, i7 + i13);
                } else if (length == 3) {
                    if (i == 0) {
                        imageView.layout(i13, i15, i7 + i13, i17);
                    } else {
                        imageView.layout((i6 * i) + ((i - 1) * i7), i9, (i6 * i) + (i7 * i), i7 + i9);
                    }
                } else if (length == 4) {
                    imageView.layout(i14, i15, i16, i17);
                } else if (length == 5) {
                    if (i == 0) {
                        int i18 = i12 - i7;
                        imageView.layout(i18, i18, i12, i12);
                    } else if (i == 1) {
                        imageView.layout(i11, i12 - i7, i7 + i11, i12);
                    } else {
                        int i19 = i - 1;
                        imageView.layout((i6 * i19) + ((i - 2) * i7), i9, (i6 * i19) + (i19 * i7), i7 + i9);
                    }
                } else if (length == 6) {
                    if (i < 3) {
                        int i20 = i + 1;
                        imageView.layout((i6 * i20) + (i7 * i), i10 - i7, (i6 * i20) + (i7 * i20), i10);
                    } else {
                        int i21 = i - 2;
                        imageView.layout((i6 * i21) + ((i - 3) * i7), i9, (i6 * i21) + (i21 * i7), i7 + i9);
                    }
                } else if (length == 7) {
                    if (i == 0) {
                        imageView.layout(i13, i6, i13 + i7, i7 + i6);
                    } else if (i < 4) {
                        imageView.layout((i6 * i) + ((i - 1) * i7), i13, (i6 * i) + (i7 * i), i7 + i13);
                    } else {
                        int i22 = i - 3;
                        int i23 = i9 + (i7 / 2);
                        imageView.layout((i6 * i22) + ((i - 4) * i7), i23, (i6 * i22) + (i22 * i7), i7 + i23);
                    }
                } else if (length == 8) {
                    if (i == 0) {
                        imageView.layout(i12 - i7, i6, i12, i7 + i6);
                    } else if (i == 1) {
                        imageView.layout(i11, i6, i11 + i7, i7 + i6);
                    } else if (i < 5) {
                        int i24 = i - 1;
                        imageView.layout((i6 * i24) + ((i - 2) * i7), i13, (i6 * i24) + (i24 * i7), i7 + i13);
                    } else {
                        int i25 = i - 4;
                        int i26 = i9 + (i7 / 2);
                        imageView.layout((i6 * i25) + ((i - 5) * i7), i26, (i6 * i25) + (i25 * i7), i7 + i26);
                    }
                } else if (length == 9) {
                    imageView.layout(i14, i15, i16, i17);
                }
                i++;
                nineGridImageView = this;
            }
        }
    }

    /* renamed from: d */
    private int m8587d(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(200, size);
        }
        return 200;
    }

    /* renamed from: e */
    private int m8586e(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(200, size);
        }
        return 200;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        m8588c();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f16396c = m8586e(i);
        int m8587d = m8587d(i2);
        this.f16397d = m8587d;
        setMeasuredDimension(this.f16396c, m8587d);
    }

    public void setAdapter(NineGridImageViewAdapter nineGridImageViewAdapter) {
        this.f16400g = nineGridImageViewAdapter;
    }

    public void setGap(int i) {
        this.f16395b = i;
    }

    public void setImagesData(String... strArr) {
        int[] m8590a = m8590a(strArr.length);
        int i = m8590a[0];
        this.f16394a = m8590a[1];
        String[] strArr2 = this.f16399f;
        if (strArr2 == null) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                ImageView m8589b = m8589b(i2);
                if (m8589b == null) {
                    return;
                }
                addView(m8589b, generateDefaultLayoutParams());
            }
        } else {
            int length = strArr2.length;
            int length2 = strArr.length;
            if (length > length2) {
                removeViews(length2, length - length2);
            } else if (length < length2) {
                while (length < length2) {
                    ImageView m8589b2 = m8589b(length);
                    if (m8589b2 == null) {
                        return;
                    }
                    addView(m8589b2, generateDefaultLayoutParams());
                    length++;
                }
            }
        }
        this.f16399f = strArr;
        requestLayout();
    }

    public NineGridImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NineGridImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16395b = UIUtils.m8616b(2.0f);
        this.f16398e = new ArrayList<>();
    }
}
