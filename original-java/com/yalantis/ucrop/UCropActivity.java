package com.yalantis.ucrop;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yalantis.ucrop.c.i;
import com.yalantis.ucrop.model.AspectRatio;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.TransformImageView.a;
import com.yalantis.ucrop.view.UCropView;
import com.yalantis.ucrop.view.widget.AspectRatioTextView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class UCropActivity extends AppCompatActivity {
    public static final CompressFormat a = CompressFormat.JPEG;
    private final OnClickListener A = new OnClickListener() {
        public void onClick(View view) {
            if (!view.isSelected()) {
                UCropActivity.this.c(view.getId());
            }
        }
    };
    private String b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    /* access modifiers changed from: private */
    public boolean i = true;
    /* access modifiers changed from: private */
    public UCropView j;
    /* access modifiers changed from: private */
    public GestureCropImageView k;
    private OverlayView l;
    private ViewGroup m;
    private ViewGroup n;
    private ViewGroup o;
    private ViewGroup p;
    private ViewGroup q;
    private ViewGroup r;
    /* access modifiers changed from: private */
    public List<ViewGroup> s = new ArrayList();
    private TextView t;
    private TextView u;
    /* access modifiers changed from: private */
    public View v;
    private CompressFormat w = a;
    private int x = 90;
    private int[] y = {1, 2, 3};
    private a z = new a() {
        public void a(float f) {
            UCropActivity.this.a(f);
        }

        public void b(float f) {
            UCropActivity.this.b(f);
        }

        public void a() {
            UCropActivity.this.j.animate().alpha(1.0f).setDuration(300).setInterpolator(new AccelerateInterpolator());
            UCropActivity.this.v.setClickable(false);
            UCropActivity.this.i = false;
            UCropActivity.this.supportInvalidateOptionsMenu();
        }

        public void a(@NonNull Exception exc) {
            UCropActivity.this.a((Throwable) exc);
            UCropActivity.this.finish();
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface GestureTypes {
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.ucrop_activity_photobox);
        Intent intent = getIntent();
        c(intent);
        a(intent);
        h();
        i();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.ucrop_menu_activity, menu);
        MenuItem findItem = menu.findItem(R.id.menu_loader);
        Drawable icon = findItem.getIcon();
        if (icon != null) {
            try {
                icon.mutate();
                icon.setColorFilter(this.f, Mode.SRC_ATOP);
                findItem.setIcon(icon);
            } catch (IllegalStateException e2) {
                Log.i("UCropActivity", String.format("%s - %s", new Object[]{e2.getMessage(), getString(R.string.ucrop_mutate_exception_hint)}));
            }
            ((Animatable) findItem.getIcon()).start();
        }
        MenuItem findItem2 = menu.findItem(R.id.menu_crop);
        Drawable icon2 = findItem2.getIcon();
        if (icon2 != null) {
            icon2.mutate();
            icon2.setColorFilter(this.f, Mode.SRC_ATOP);
            findItem2.setIcon(icon2);
        }
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.menu_crop).setVisible(!this.i);
        menu.findItem(R.id.menu_loader).setVisible(this.i);
        return super.onPrepareOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_crop) {
            a();
        } else if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        if (this.k != null) {
            this.k.a();
        }
    }

    private void a(@NonNull Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.InputUri");
        Uri uri2 = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.OutputUri");
        b(intent);
        if (uri == null || uri2 == null) {
            a((Throwable) new NullPointerException(getString(R.string.ucrop_error_input_data_is_absent)));
            finish();
            return;
        }
        try {
            this.k.setImageUri(uri, uri2);
        } catch (Exception e2) {
            a((Throwable) e2);
            finish();
        }
    }

    private void b(@NonNull Intent intent) {
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.CompressionFormatName");
        CompressFormat compressFormat = null;
        if (!TextUtils.isEmpty(stringExtra)) {
            compressFormat = CompressFormat.valueOf(stringExtra);
        }
        if (compressFormat == null) {
            compressFormat = a;
        }
        this.w = compressFormat;
        this.x = intent.getIntExtra("com.yalantis.ucrop.CompressionQuality", 90);
        int[] intArrayExtra = intent.getIntArrayExtra("com.yalantis.ucrop.AllowedGestures");
        if (intArrayExtra != null && intArrayExtra.length == 3) {
            this.y = intArrayExtra;
        }
        this.k.setMaxBitmapSize(intent.getIntExtra("com.yalantis.ucrop.MaxBitmapSize", 0));
        this.k.setMaxScaleMultiplier(intent.getFloatExtra("com.yalantis.ucrop.MaxScaleMultiplier", 10.0f));
        this.k.setImageToWrapCropBoundsAnimDuration((long) intent.getIntExtra("com.yalantis.ucrop.ImageToCropBoundsAnimDuration", 500));
        this.l.setFreestyleCropEnabled(intent.getBooleanExtra("com.yalantis.ucrop.FreeStyleCrop", false));
        this.l.setDimmedColor(intent.getIntExtra("com.yalantis.ucrop.DimmedLayerColor", getResources().getColor(R.color.ucrop_color_default_dimmed)));
        this.l.setCircleDimmedLayer(intent.getBooleanExtra("com.yalantis.ucrop.CircleDimmedLayer", false));
        this.l.setShowCropFrame(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropFrame", true));
        this.l.setCropFrameColor(intent.getIntExtra("com.yalantis.ucrop.CropFrameColor", getResources().getColor(R.color.ucrop_color_default_crop_frame)));
        this.l.setCropFrameStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropFrameStrokeWidth", getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width)));
        this.l.setShowCropGrid(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropGrid", true));
        this.l.setCropGridRowCount(intent.getIntExtra("com.yalantis.ucrop.CropGridRowCount", 2));
        this.l.setCropGridColumnCount(intent.getIntExtra("com.yalantis.ucrop.CropGridColumnCount", 2));
        this.l.setCropGridColor(intent.getIntExtra("com.yalantis.ucrop.CropGridColor", getResources().getColor(R.color.ucrop_color_default_crop_grid)));
        this.l.setCropGridStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropGridStrokeWidth", getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width)));
        float floatExtra = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioX", 0.0f);
        float floatExtra2 = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioY", 0.0f);
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (floatExtra > 0.0f && floatExtra2 > 0.0f) {
            if (this.m != null) {
                this.m.setVisibility(8);
            }
            this.k.setTargetAspectRatio(floatExtra / floatExtra2);
        } else if (parcelableArrayListExtra == null || intExtra >= parcelableArrayListExtra.size()) {
            this.k.setTargetAspectRatio(0.0f);
        } else {
            this.k.setTargetAspectRatio(((AspectRatio) parcelableArrayListExtra.get(intExtra)).b() / ((AspectRatio) parcelableArrayListExtra.get(intExtra)).c());
        }
        int intExtra2 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeX", 0);
        int intExtra3 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeY", 0);
        if (intExtra2 > 0 && intExtra3 > 0) {
            this.k.setMaxResultImageSizeX(intExtra2);
            this.k.setMaxResultImageSizeY(intExtra3);
        }
    }

    private void c(@NonNull Intent intent) {
        boolean z2;
        this.d = intent.getIntExtra("com.yalantis.ucrop.StatusBarColor", ContextCompat.getColor(this, R.color.ucrop_color_statusbar));
        this.c = intent.getIntExtra("com.yalantis.ucrop.ToolbarColor", ContextCompat.getColor(this, R.color.ucrop_color_toolbar));
        this.e = intent.getIntExtra("com.yalantis.ucrop.UcropColorWidgetActive", ContextCompat.getColor(this, R.color.ucrop_color_widget_active));
        this.f = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarWidgetColor", ContextCompat.getColor(this, R.color.ucrop_color_toolbar_widget));
        this.b = intent.getStringExtra("com.yalantis.ucrop.UcropToolbarTitleText");
        this.b = !TextUtils.isEmpty(this.b) ? this.b : getResources().getString(R.string.ucrop_label_edit_photo);
        this.g = intent.getIntExtra("com.yalantis.ucrop.UcropLogoColor", ContextCompat.getColor(this, R.color.ucrop_color_default_logo));
        if (!intent.getBooleanExtra("com.yalantis.ucrop.HideBottomControls", false)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.h = z2;
        b();
        c();
        if (this.h) {
            View.inflate(this, R.layout.ucrop_controls, (ViewGroup) findViewById(R.id.ucrop_photobox));
            this.m = (ViewGroup) findViewById(R.id.state_aspect_ratio);
            this.m.setOnClickListener(this.A);
            this.n = (ViewGroup) findViewById(R.id.state_rotate);
            this.n.setOnClickListener(this.A);
            this.o = (ViewGroup) findViewById(R.id.state_scale);
            this.o.setOnClickListener(this.A);
            this.p = (ViewGroup) findViewById(R.id.layout_aspect_ratio);
            this.q = (ViewGroup) findViewById(R.id.layout_rotate_wheel);
            this.r = (ViewGroup) findViewById(R.id.layout_scale_wheel);
            d(intent);
            e();
            f();
            d();
        }
    }

    private void b() {
        a(this.d);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        toolbar.setBackgroundColor(this.c);
        toolbar.setTitleTextColor(this.f);
        TextView textView = (TextView) toolbar.findViewById(R.id.toolbar_title);
        textView.setTextColor(this.f);
        textView.setText(this.b);
        Drawable mutate = ContextCompat.getDrawable(this, R.drawable.ucrop_ic_cross).mutate();
        mutate.setColorFilter(this.f, Mode.SRC_ATOP);
        toolbar.setNavigationIcon(mutate);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
    }

    private void c() {
        this.j = (UCropView) findViewById(R.id.ucrop);
        this.k = this.j.getCropImageView();
        this.l = this.j.getOverlayView();
        this.k.setTransformImageListener(this.z);
        ((ImageView) findViewById(R.id.image_view_logo)).setColorFilter(this.g, Mode.SRC_ATOP);
    }

    private void d() {
        ImageView imageView = (ImageView) findViewById(R.id.image_view_state_scale);
        ImageView imageView2 = (ImageView) findViewById(R.id.image_view_state_rotate);
        ImageView imageView3 = (ImageView) findViewById(R.id.image_view_state_aspect_ratio);
        imageView.setImageDrawable(new i(imageView.getDrawable(), this.e));
        imageView2.setImageDrawable(new i(imageView2.getDrawable(), this.e));
        imageView3.setImageDrawable(new i(imageView3.getDrawable(), this.e));
    }

    @TargetApi(21)
    private void a(@ColorInt int i2) {
        if (VERSION.SDK_INT >= 21) {
            Window window = getWindow();
            if (window != null) {
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(i2);
            }
        }
    }

    private void d(@NonNull Intent intent) {
        int i2;
        ArrayList arrayList;
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (parcelableArrayListExtra == null || parcelableArrayListExtra.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new AspectRatio(null, 1.0f, 1.0f));
            arrayList2.add(new AspectRatio(null, 3.0f, 4.0f));
            arrayList2.add(new AspectRatio(getString(R.string.ucrop_label_original).toUpperCase(), 0.0f, 0.0f));
            arrayList2.add(new AspectRatio(null, 3.0f, 2.0f));
            arrayList2.add(new AspectRatio(null, 16.0f, 9.0f));
            i2 = 2;
            arrayList = arrayList2;
        } else {
            i2 = intExtra;
            arrayList = parcelableArrayListExtra;
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.layout_aspect_ratio);
        LayoutParams layoutParams = new LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AspectRatio aspectRatio = (AspectRatio) it.next();
            FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(R.layout.ucrop_aspect_ratio, null);
            frameLayout.setLayoutParams(layoutParams);
            AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) frameLayout.getChildAt(0);
            aspectRatioTextView.setActiveColor(this.e);
            aspectRatioTextView.setAspectRatio(aspectRatio);
            linearLayout.addView(frameLayout);
            this.s.add(frameLayout);
        }
        ((ViewGroup) this.s.get(i2)).setSelected(true);
        for (ViewGroup onClickListener : this.s) {
            onClickListener.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    UCropActivity.this.k.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).a(view.isSelected()));
                    UCropActivity.this.k.setImageToWrapCropBounds();
                    if (!view.isSelected()) {
                        for (ViewGroup viewGroup : UCropActivity.this.s) {
                            viewGroup.setSelected(viewGroup == view);
                        }
                    }
                }
            });
        }
    }

    private void e() {
        this.t = (TextView) findViewById(R.id.text_view_rotate);
        ((HorizontalProgressWheelView) findViewById(R.id.rotate_scroll_wheel)).setScrollingListener(new HorizontalProgressWheelView.a() {
            public void a(float f, float f2) {
                UCropActivity.this.k.c(f / 42.0f);
            }

            public void a() {
                UCropActivity.this.k.setImageToWrapCropBounds();
            }

            public void b() {
                UCropActivity.this.k.a();
            }
        });
        ((HorizontalProgressWheelView) findViewById(R.id.rotate_scroll_wheel)).setMiddleLineColor(this.e);
        findViewById(R.id.wrapper_reset_rotate).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                UCropActivity.this.g();
            }
        });
        findViewById(R.id.wrapper_rotate_by_angle).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                UCropActivity.this.b(90);
            }
        });
    }

    private void f() {
        this.u = (TextView) findViewById(R.id.text_view_scale);
        ((HorizontalProgressWheelView) findViewById(R.id.scale_scroll_wheel)).setScrollingListener(new HorizontalProgressWheelView.a() {
            public void a(float f, float f2) {
                if (f > 0.0f) {
                    UCropActivity.this.k.b(UCropActivity.this.k.getCurrentScale() + (((UCropActivity.this.k.getMaxScale() - UCropActivity.this.k.getMinScale()) / 15000.0f) * f));
                } else {
                    UCropActivity.this.k.a(UCropActivity.this.k.getCurrentScale() + (((UCropActivity.this.k.getMaxScale() - UCropActivity.this.k.getMinScale()) / 15000.0f) * f));
                }
            }

            public void a() {
                UCropActivity.this.k.setImageToWrapCropBounds();
            }

            public void b() {
                UCropActivity.this.k.a();
            }
        });
        ((HorizontalProgressWheelView) findViewById(R.id.scale_scroll_wheel)).setMiddleLineColor(this.e);
    }

    /* access modifiers changed from: private */
    public void a(float f2) {
        if (this.t != null) {
            this.t.setText(String.format(Locale.getDefault(), "%.1f°", new Object[]{Float.valueOf(f2)}));
        }
    }

    /* access modifiers changed from: private */
    public void b(float f2) {
        if (this.u != null) {
            this.u.setText(String.format(Locale.getDefault(), "%d%%", new Object[]{Integer.valueOf((int) (100.0f * f2))}));
        }
    }

    /* access modifiers changed from: private */
    public void g() {
        this.k.c(-this.k.getCurrentAngle());
        this.k.setImageToWrapCropBounds();
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        this.k.c((float) i2);
        this.k.setImageToWrapCropBounds();
    }

    private void h() {
        if (!this.h) {
            d(0);
        } else if (this.m.getVisibility() == 0) {
            c(R.id.state_aspect_ratio);
        } else {
            c(R.id.state_scale);
        }
    }

    /* access modifiers changed from: private */
    public void c(@IdRes int i2) {
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        int i5 = 8;
        if (this.h) {
            this.m.setSelected(i2 == R.id.state_aspect_ratio);
            ViewGroup viewGroup = this.n;
            if (i2 == R.id.state_rotate) {
                z2 = true;
            } else {
                z2 = false;
            }
            viewGroup.setSelected(z2);
            ViewGroup viewGroup2 = this.o;
            if (i2 == R.id.state_scale) {
                z3 = true;
            } else {
                z3 = false;
            }
            viewGroup2.setSelected(z3);
            ViewGroup viewGroup3 = this.p;
            if (i2 == R.id.state_aspect_ratio) {
                i3 = 0;
            } else {
                i3 = 8;
            }
            viewGroup3.setVisibility(i3);
            ViewGroup viewGroup4 = this.q;
            if (i2 == R.id.state_rotate) {
                i4 = 0;
            } else {
                i4 = 8;
            }
            viewGroup4.setVisibility(i4);
            ViewGroup viewGroup5 = this.r;
            if (i2 == R.id.state_scale) {
                i5 = 0;
            }
            viewGroup5.setVisibility(i5);
            if (i2 == R.id.state_scale) {
                d(0);
            } else if (i2 == R.id.state_rotate) {
                d(1);
            } else {
                d(2);
            }
        }
    }

    private void d(int i2) {
        boolean z2;
        boolean z3 = false;
        GestureCropImageView gestureCropImageView = this.k;
        if (this.y[i2] == 3 || this.y[i2] == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        gestureCropImageView.setScaleEnabled(z2);
        GestureCropImageView gestureCropImageView2 = this.k;
        if (this.y[i2] == 3 || this.y[i2] == 2) {
            z3 = true;
        }
        gestureCropImageView2.setRotateEnabled(z3);
    }

    private void i() {
        if (this.v == null) {
            this.v = new View(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(3, R.id.toolbar);
            this.v.setLayoutParams(layoutParams);
            this.v.setClickable(true);
        }
        ((RelativeLayout) findViewById(R.id.ucrop_photobox)).addView(this.v);
    }

    /* access modifiers changed from: protected */
    public void a() {
        this.v.setClickable(true);
        this.i = true;
        supportInvalidateOptionsMenu();
        this.k.a(this.w, this.x, (com.yalantis.ucrop.a.a) new com.yalantis.ucrop.a.a() {
            public void a(@NonNull Uri uri, int i, int i2, int i3, int i4) {
                UCropActivity.this.a(uri, UCropActivity.this.k.getTargetAspectRatio(), i, i2, i3, i4);
                UCropActivity.this.finish();
            }

            public void a(@NonNull Throwable th) {
                UCropActivity.this.a(th);
                UCropActivity.this.finish();
            }
        });
    }

    /* access modifiers changed from: protected */
    public void a(Uri uri, float f2, int i2, int i3, int i4, int i5) {
        setResult(-1, new Intent().putExtra("com.yalantis.ucrop.OutputUri", uri).putExtra("com.yalantis.ucrop.CropAspectRatio", f2).putExtra("com.yalantis.ucrop.ImageWidth", i4).putExtra("com.yalantis.ucrop.ImageHeight", i5).putExtra("com.yalantis.ucrop.OffsetX", i2).putExtra("com.yalantis.ucrop.OffsetY", i3));
    }

    /* access modifiers changed from: protected */
    public void a(Throwable th) {
        setResult(96, new Intent().putExtra("com.yalantis.ucrop.Error", th));
    }
}
