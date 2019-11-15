.class public Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field public static final HINTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->HINTS:Ljava/util/Map;

    sget-object v0, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->HINTS:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->HINTS:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->HINTS:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLogoToQRCode(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v0, v2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v0, v6

    int-to-float v6, v4

    div-float v6, v0, v6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v6, v6, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v7, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v2, 0x1f

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static syncEncodeQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->syncEncodeQRCode(Ljava/lang/String;IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static syncEncodeQRCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->syncEncodeQRCode(Ljava/lang/String;IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static syncEncodeQRCode(Ljava/lang/String;IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    sget-object v5, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->HINTS:Ljava/util/Map;

    move-object v1, p0

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    mul-int v0, p1, p1

    new-array v1, v0, [I

    move v2, v6

    :goto_0
    if-ge v2, p1, :cond_2

    move v0, v6

    :goto_1
    if-ge v0, p1, :cond_1

    invoke-virtual {v3, v0, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    mul-int v4, v2, p1

    add-int/2addr v4, v0

    aput p2, v1, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    mul-int v4, v2, p1

    add-int/2addr v4, v0

    aput p3, v1, v4

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v6, p1

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-static {v0, p4}, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->addLogoToQRCode(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public static syncEncodeQRCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->syncEncodeQRCode(Ljava/lang/String;IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
