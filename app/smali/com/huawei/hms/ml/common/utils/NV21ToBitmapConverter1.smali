.class public Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;
.super Ljava/lang/Object;
.source "NV21ToBitmapConverter1.java"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private height:I

.field private in:Landroid/renderscript/Allocation;

.field private length:I

.field private out:Landroid/renderscript/Allocation;

.field private renderScript:Landroid/renderscript/RenderScript;

.field private rgbaType:Landroid/renderscript/Type$Builder;

.field private width:I

.field private yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private yuvType:Landroid/renderscript/Type$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->width:I

    .line 3
    iput v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->height:I

    .line 4
    iput v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->length:I

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->applicationContext:Landroid/content/Context;

    goto :goto_0

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->applicationContext:Landroid/content/Context;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->renderScript:Landroid/renderscript/RenderScript;

    .line 9
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private recreateIfNeed([BIII)V
    .locals 1

    .line 1
    iget p4, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->width:I

    if-ne p4, p2, :cond_0

    iget p4, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->height:I

    if-ne p4, p3, :cond_0

    iget p4, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->length:I

    array-length v0, p1

    if-ne p4, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p2, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->width:I

    .line 3
    iput p3, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->height:I

    .line 4
    array-length p1, p1

    iput p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->length:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->yuvType:Landroid/renderscript/Type$Builder;

    .line 6
    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->rgbaType:Landroid/renderscript/Type$Builder;

    return-void
.end method


# virtual methods
.method public convert([BIIIII)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 7
    invoke-virtual/range {v0 .. v9}, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->convert([BIIIIIZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public convert([BIIIIIZZZ)Landroid/graphics/Bitmap;
    .locals 13

    move-object v9, p0

    move-object v0, p1

    move v1, p2

    move/from16 v2, p3

    move/from16 v5, p6

    .line 1
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->recreateIfNeed([BIII)V

    .line 2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v4, p4

    move/from16 v6, p5

    invoke-static {v4, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-virtual/range {p0 .. p3}, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->convertYUVtoRGB([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v0, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 5
    invoke-virtual/range {v0 .. v8}, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->getTransformationMatrix(IIIIIZZZ)Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v11, v12, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v10
.end method

.method public convertYUVtoRGB([BII)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->yuvType:Landroid/renderscript/Type$Builder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->renderScript:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->yuvType:Landroid/renderscript/Type$Builder;

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->in:Landroid/renderscript/Allocation;

    .line 4
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->renderScript:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->rgbaType:Landroid/renderscript/Type$Builder;

    .line 5
    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->out:Landroid/renderscript/Allocation;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->in:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->in:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 8
    iget-object p1, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->out:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 9
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->out:Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/NV21ToBitmapConverter1;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initial must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransformationMatrix(IIIIIZZZ)Landroid/graphics/Matrix;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-eqz p5, :cond_1

    .line 2
    rem-int/lit8 v4, p5, 0x5a

    if-nez v4, :cond_0

    neg-int v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v2

    neg-int v5, p2

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 3
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v4, p5

    .line 4
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    const-string p4, "Rotation of %d"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5a

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    move v4, p2

    goto :goto_1

    :cond_3
    move v4, p1

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move p1, p2

    :goto_2
    const/4 p2, -0x1

    if-eqz p6, :cond_5

    const/4 p6, -0x1

    goto :goto_3

    :cond_5
    const/4 p6, 0x1

    :goto_3
    if-eqz p7, :cond_6

    const/4 v3, -0x1

    :cond_6
    if-ne v4, p3, :cond_7

    if-eq p1, p4, :cond_9

    :cond_7
    mul-int p2, p6, p3

    int-to-float p2, p2

    int-to-float p7, v4

    div-float/2addr p2, p7

    mul-int p7, v3, p4

    int-to-float p7, p7

    int-to-float p1, p1

    div-float/2addr p7, p1

    if-eqz p8, :cond_8

    .line 7
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 8
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_4

    .line 9
    :cond_8
    invoke-virtual {v0, p2, p7}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_9
    :goto_4
    if-eqz p5, :cond_a

    int-to-float p1, p3

    div-float/2addr p1, v2

    int-to-float p2, p4

    div-float/2addr p2, v2

    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p3, p6

    int-to-float p4, v3

    .line 11
    invoke-virtual {v0, p3, p4, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_a
    return-object v0
.end method
