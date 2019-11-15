.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;
.super Ljava/lang/Object;
.source "TrackInfoDetailActivity.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapScreenShot(Landroid/graphics/Bitmap;)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v6, v6, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v7, v7, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v7}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    const v8, 0x7f040111

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/widget/LinearLayout;->measure(II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v9, v9, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v9}, Lcom/ifengyu/intercom/a;->a(Landroid/app/Activity;)V

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {v9}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v9

    float-to-int v9, v9

    const/high16 v10, 0x41900000    # 18.0f

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v10

    float-to-int v10, v10

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v11

    float-to-int v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v13, v13, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v13}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/MapView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v14, v14, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v14}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/MapView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v15, v15, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v15}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v18

    int-to-float v0, v13

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v19, v19, v20

    int-to-float v14, v14

    div-float v14, v19, v14

    int-to-float v0, v15

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v19, v19, v20

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v19, v16

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v19, v18

    mul-int/lit8 v19, v9, 0x2

    sub-int v13, v13, v19

    int-to-float v13, v13

    div-float/2addr v13, v14

    float-to-int v13, v13

    mul-int/lit8 v14, v9, 0x2

    sub-int v14, v15, v14

    int-to-float v14, v14

    div-float v14, v14, v16

    float-to-int v14, v14

    mul-int/lit8 v15, v9, 0x2

    sub-int v15, v17, v15

    int-to-float v15, v15

    div-float v15, v15, v18

    float-to-int v15, v15

    sget v16, Lcom/ifengyu/intercom/a;->c:I

    add-int v17, v10, v13

    add-int v17, v17, v11

    mul-int/lit8 v18, v12, 0x2

    add-int v17, v17, v18

    add-int v17, v17, v14

    add-int v17, v17, v11

    mul-int/lit8 v18, v12, 0x2

    add-int v17, v17, v18

    add-int v17, v17, v15

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v18

    add-int v17, v17, v18

    add-int v17, v17, v10

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v16 .. v18}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0098

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    new-instance v19, Landroid/graphics/BlurMaskFilter;

    int-to-float v0, v12

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct/range {v19 .. v21}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0f00a6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    sub-int v19, v19, v9

    add-int/2addr v13, v10

    add-int v20, v13, v12

    add-int v20, v20, v11

    add-int v20, v20, v12

    add-int v14, v14, v20

    add-int v21, v14, v12

    add-int v11, v11, v21

    add-int/2addr v11, v12

    add-int/2addr v15, v11

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v21

    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/Rect;

    sub-int v24, v9, v12

    sub-int v25, v10, v12

    add-int v26, v19, v12

    add-int v27, v13, v12

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v21, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-direct/range {v21 .. v25}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-direct {v0, v9, v10, v1, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v10, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v13, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v21, Landroid/graphics/Rect;

    sub-int v22, v9, v12

    sub-int v23, v20, v12

    add-int v24, v19, v12

    add-int v25, v14, v12

    invoke-direct/range {v21 .. v25}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v10, v13, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/16 v21, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v10, v13, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v13, v9, v0, v1, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v14, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v10, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v6}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v10, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v13, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    sub-int v14, v9, v12

    sub-int v20, v11, v12

    add-int v21, v19, v12

    add-int/2addr v12, v15

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v14, v0, v1, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v10, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v6, v10, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    move/from16 v0, v19

    invoke-direct {v10, v9, v11, v0, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v6, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    sub-int v6, v19, v6

    div-int/lit8 v6, v6, 0x2

    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v10, v6, 0xf

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, 0xf

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    add-int/2addr v11, v15

    invoke-direct {v9, v10, v15, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mitalki/imgcache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/trackScreenShot.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;Ljava/io/File;)Ljava/io/File;

    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v6, v6, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->k()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v5, v5, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    new-instance v6, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1$1;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;)V

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    invoke-static {v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onMapScreenShot(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method
