.class public Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;
.super Ljava/lang/Object;
.source "TextTextureGenerator.java"


# static fields
.field private static final ALIGNCENTER:I = 0x33

.field private static final ALIGNLEFT:I = 0x31

.field private static final ALIGNRIGHT:I = 0x32

.field static final AN_LABEL_MAXCHARINLINE:I = 0x7

.field static final AN_LABEL_MULITYLINE_SPAN:I = 0x2

.field static final TEXT_FONTSIZE:I = 0x20

.field static final TEXT_FONTSIZE_TRUE:I = 0x1e


# instance fields
.field private base_line:F

.field private start_x:F

.field private text_paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->base_line:F

    iput v0, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->start_x:F

    iput-object v2, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    const/16 v0, 0x1e

    const/16 v1, 0x31

    invoke-static {v2, v0, v1}, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->start_x:F

    const v1, 0x40ea6000    # 7.3242188f

    const v0, -0x3e215800

    :try_start_0
    iget-object v3, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v1, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->base_line:F

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static GetNearstSize2N(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static generaAsccIITexturePng()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v4, 0x200

    const/16 v8, 0x31

    const/16 v7, 0x20

    const/16 v14, 0x10

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "asccii.png"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    invoke-static {v0, v7, v8}, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-static {v0, v7, v8}, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v0, 0x1

    new-array v8, v0, [F

    move v2, v1

    :goto_1
    if-ge v2, v14, :cond_2

    move v0, v1

    :goto_2
    if-ge v0, v14, :cond_1

    mul-int/lit8 v9, v2, 0x10

    add-int/2addr v9, v0

    int-to-char v9, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    mul-int/lit8 v11, v0, 0x10

    int-to-float v11, v11

    mul-int/lit8 v12, v2, 0x10

    iget v13, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x2

    int-to-float v12, v12

    invoke-virtual {v6, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v4, v0, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getFontHeight(Landroid/graphics/Paint;)F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    return v0
.end method

.method public static getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 2

    :try_start_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    packed-switch p2, :pswitch_data_0

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    :try_start_1
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCharsWidths([I)[B
    .locals 8

    const/4 v1, 0x0

    array-length v2, p1

    new-array v3, v2, [B

    const/4 v0, 0x1

    new-array v4, v0, [F

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, p1, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    aput v5, v4, v1

    aget v5, v4, v1

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getFontVersion()Ljava/lang/String;
    .locals 1

    const v0, 0x9ad8

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->getTextPixelBuffer(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLMD5Util;->getByteArrayMD5([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextPixelBuffer(I)[B
    .locals 11

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [C

    const/4 v0, 0x0

    int-to-char v2, p1

    aput-char v2, v1, v0

    const/16 v0, 0x20

    const/16 v2, 0x20

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v2, 0x400

    new-array v7, v2, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v2, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v10

    sub-float v4, v2, v5

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-eq v10, v2, :cond_0

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    sub-float v3, v5, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    sub-float v4, v5, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->base_line:F

    iget-object v6, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v7

    :goto_1
    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->start_x:F

    iget v5, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->base_line:F

    iget-object v6, p0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
