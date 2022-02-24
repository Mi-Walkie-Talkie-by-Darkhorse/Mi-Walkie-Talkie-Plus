.class public Lcom/xiaomi/push/fe;
.super Lcom/xiaomi/push/ff;


# instance fields
.field private a:I

.field private a:Landroid/app/PendingIntent;

.field private b:I

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/ff;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/high16 p1, 0x1000000

    iput p1, p0, Lcom/xiaomi/push/fe;->a:I

    iput p1, p0, Lcom/xiaomi/push/fe;->b:I

    iput p1, p0, Lcom/xiaomi/push/fe;->c:I

    return-void
.end method

.method private a(IIIF)Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p4, v2, v3

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x2

    aput p4, v2, v3

    const/4 v3, 0x3

    aput p4, v2, v3

    const/4 v3, 0x4

    aput p4, v2, v3

    const/4 v3, 0x5

    aput p4, v2, v3

    const/4 v3, 0x6

    aput p4, v2, v3

    const/4 v3, 0x7

    aput p4, v2, v3

    const/4 p4, 0x0

    invoke-direct {v1, v2, p4, p4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    return-object v0
.end method

.method private a(Landroid/widget/RemoteViews;IIIZ)V
    .locals 7

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ff;->a(F)I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/high16 p2, -0x1000000

    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p1, p4, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/xiaomi/push/fe;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x3d8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0xb1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0xcf

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/push/fe;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const-string p1, "colorful notification bg image resolution error, must [984*177, 984*207]"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/xiaomi/push/fe;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lcom/xiaomi/push/ff;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/xiaomi/push/ff;

    iput-object p1, p0, Lcom/xiaomi/push/fe;->c:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/xiaomi/push/fe;->a:Landroid/app/PendingIntent;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/fe;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/push/fe;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "parse colorful notification button bg color error"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_colorful"

    return-object v0
.end method

.method public a()V
    .locals 15

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/xiaomi/push/ff;->a()V

    invoke-virtual {p0}, Lcom/xiaomi/push/fd;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/fd;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "icon"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/push/ff;->a:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/ff;->a(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/ff;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_0
    const-string v4, "title"

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v4, "content"

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/ff;->a:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/ff;->b:Ljava/lang/CharSequence;

    invoke-virtual {v4, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/xiaomi/push/fe;->c:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/high16 v5, 0x1000000

    const/4 v6, 0x0

    if-nez v4, :cond_2

    const-string v4, "buttonContainer"

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "button"

    invoke-virtual {p0, v0, v7, v2, v1}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v10, "buttonBg"

    invoke-virtual {p0, v0, v10, v2, v1}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v11

    invoke-virtual {v11, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v11

    iget-object v12, p0, Lcom/xiaomi/push/fe;->c:Ljava/lang/CharSequence;

    invoke-virtual {v11, v7, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v11

    iget-object v12, p0, Lcom/xiaomi/push/fe;->a:Landroid/app/PendingIntent;

    invoke-virtual {v11, v4, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget v4, p0, Lcom/xiaomi/push/fe;->b:I

    if-eq v4, v5, :cond_2

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/ff;->a(F)I

    move-result v4

    const/high16 v11, 0x41e80000    # 29.0f

    invoke-virtual {p0, v11}, Lcom/xiaomi/push/ff;->a(F)I

    move-result v11

    int-to-float v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v13

    iget v14, p0, Lcom/xiaomi/push/fe;->b:I

    invoke-direct {p0, v14, v4, v11, v12}, Lcom/xiaomi/push/fe;->a(IIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/aj;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v13, v10, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v4

    iget v10, p0, Lcom/xiaomi/push/fe;->b:I

    invoke-virtual {p0, v10}, Lcom/xiaomi/push/ff;->a(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, -0x1

    goto :goto_1

    :cond_1
    const/high16 v10, -0x1000000

    :goto_1
    invoke-virtual {v4, v7, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_2
    const-string v4, "bg"

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "container"

    invoke-virtual {p0, v0, v7, v2, v1}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget v0, p0, Lcom/xiaomi/push/fe;->a:I

    const/high16 v1, 0x41f00000    # 30.0f

    const/16 v2, 0xa

    const/4 v11, 0x1

    if-eq v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/push/fd;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0xc0

    const/16 v5, 0x3d8

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/push/fe;->a:I

    invoke-direct {p0, v2, v5, v3, v1}, Lcom/xiaomi/push/fe;->a(IIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/push/fe;->a:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v5, v3, v2}, Lcom/xiaomi/push/fe;->a(IIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/xiaomi/push/service/aj;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v6

    iget v0, p0, Lcom/xiaomi/push/fe;->a:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ff;->a(I)Z

    move-result v10

    :goto_3
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/push/fe;->a(Landroid/widget/RemoteViews;IIIZ)V

    goto/16 :goto_7

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/fe;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/push/fd;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/fe;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/push/ff;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/fe;->b:Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/xiaomi/push/ff;->a:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/xiaomi/push/fe;->c:I

    if-ne v1, v5, :cond_6

    const-string v1, "notification_image_text_color"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fe;->c(Ljava/lang/String;)Lcom/xiaomi/push/fe;

    :cond_6
    iget v0, p0, Lcom/xiaomi/push/fe;->c:I

    if-eq v0, v5, :cond_8

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ff;->a(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v10, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v6

    goto :goto_3

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/fd;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.app.Notification$DecoratedCustomViewStyle"

    invoke-static {v0, v1}, Lcom/xiaomi/push/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setStyle"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {p0, v1, v2}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const-string v0, "load class DecoratedCustomViewStyle failed"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_a
    :goto_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "miui.customHeight"

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fd;->a(Landroid/os/Bundle;)Lcom/xiaomi/push/fd;

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fd;->a(Landroid/widget/RemoteViews;)Lcom/xiaomi/push/fd;

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->b()V

    :goto_8
    return-void
.end method

.method protected a()Z
    .locals 7

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/fd;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/fd;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "icon"

    invoke-virtual {p0, v0, v4, v3, v2}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-virtual {p0, v0, v5, v3, v2}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "content"

    invoke-virtual {p0, v0, v6, v3, v2}, Lcom/xiaomi/push/fd;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/fe;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/push/fe;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "parse colorful notification bg color error"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_colorful_copy"

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/fe;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/ff;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/push/fe;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "parse colorful notification image text color error"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p0
.end method
