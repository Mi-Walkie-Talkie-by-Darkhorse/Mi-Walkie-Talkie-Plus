.class public Lcom/amap/api/mapcore/util/eo;
.super Landroid/widget/LinearLayout;
.source "CompassView.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/widget/ImageView;

.field e:Lcom/amap/api/mapcore/util/l;

.field f:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/eo;->e:Lcom/amap/api/mapcore/util/l;

    :try_start_0
    const-string v0, "maps_dav_compass_needle_large.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/util/g;->a:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/util/g;->a:F

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eo;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore/util/eo$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/eo$1;-><init>(Lcom/amap/api/mapcore/util/eo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eo;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CompassView"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eo;->removeAllViews()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CompassView"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eo;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eo;->b()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eo;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->e:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->p(I)F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/amap/api/mapcore/util/l;->n(I)F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    neg-float v1, v1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CompassView"

    const-string v2, "invalidateAngle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
