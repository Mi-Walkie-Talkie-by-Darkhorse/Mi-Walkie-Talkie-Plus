.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapScreenShot(Landroid/graphics/Bitmap;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget-object v4, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v4, v4, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v4, v4, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v4, v4, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    const/4 v5, 0x0

    const v6, 0x7f0c0152

    invoke-static {v4, v6, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v4, v6, v6, v7, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v8, v8, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v8}, Lcom/ifengyu/intercom/d;->a(Landroid/app/Activity;)V

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v8}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v8

    float-to-int v8, v8

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v10

    float-to-int v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v11

    float-to-int v11, v11

    iget-object v12, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v12, v12, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v12}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/MapView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    iget-object v13, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v13, v13, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v13}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/MapView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    iget-object v14, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v14, v14, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v14}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    iget-object v15, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v15, v15, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v15}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v15

    iget-object v6, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v6, v6, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    iget-object v5, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    move-object/from16 v16, v7

    int-to-float v7, v12

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v7, v7, v17

    int-to-float v13, v13

    div-float/2addr v7, v13

    int-to-float v13, v14

    mul-float v13, v13, v17

    int-to-float v15, v15

    div-float/2addr v13, v15

    int-to-float v15, v6

    mul-float v15, v15, v17

    int-to-float v5, v5

    div-float/2addr v15, v5

    mul-int/lit8 v5, v9, 0x2

    sub-int/2addr v12, v5

    int-to-float v12, v12

    div-float/2addr v12, v7

    float-to-int v7, v12

    sub-int/2addr v14, v5

    int-to-float v12, v14

    div-float/2addr v12, v13

    float-to-int v12, v12

    sub-int/2addr v6, v5

    int-to-float v5, v6

    div-float/2addr v5, v15

    float-to-int v5, v5

    sget v6, Lcom/ifengyu/intercom/d;->b:I

    add-int/2addr v7, v8

    add-int v13, v7, v10

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    add-int/2addr v13, v10

    add-int/2addr v13, v14

    add-int/2addr v13, v5

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v13, v8

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v14, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v14, v14, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-virtual {v14}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060178

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    new-instance v15, Landroid/graphics/BlurMaskFilter;

    move-object/from16 v17, v4

    int-to-float v4, v11

    move-object/from16 v18, v3

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v15, v4, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06018f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v9

    add-int v4, v7, v11

    add-int v15, v4, v10

    add-int/2addr v15, v11

    add-int/2addr v12, v15

    move-object/from16 v19, v6

    add-int v6, v12, v11

    add-int/2addr v10, v6

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    move/from16 v20, v5

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v1, Landroid/graphics/Rect;

    move/from16 v21, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move/from16 v22, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move/from16 v23, v6

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v12, v9, v11

    sub-int v6, v8, v11

    move/from16 v24, v15

    add-int v15, v3, v11

    invoke-direct {v10, v12, v6, v15, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v5, v1, v10, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v8, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v13, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v14, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v24, v11

    move/from16 v7, v23

    invoke-direct {v4, v12, v5, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v0, v1, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v6, v6, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    move/from16 v5, v22

    move/from16 v4, v24

    invoke-direct {v1, v9, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    sub-int v10, v21, v11

    add-int v5, v20, v11

    invoke-direct {v4, v12, v10, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v1, v2, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v6, v6, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    move/from16 v4, v20

    move/from16 v10, v21

    invoke-direct {v2, v9, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v13, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v2, v3, 0xf

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0xf

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/imgcache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/trackScreenShot.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;Ljava/io/File;)Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->e(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v4, v19

    invoke-virtual {v4, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a$a;

    invoke-direct {v2, v1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a$a;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMapScreenShot(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method
