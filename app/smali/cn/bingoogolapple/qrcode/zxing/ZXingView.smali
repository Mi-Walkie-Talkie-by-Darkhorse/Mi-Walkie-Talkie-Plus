.class public Lcn/bingoogolapple/qrcode/zxing/ZXingView;
.super Lcn/bingoogolapple/qrcode/core/QRCodeView;
.source "ZXingView.java"


# instance fields
.field private mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/bingoogolapple/qrcode/core/QRCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->initMultiFormatReader()V

    return-void
.end method

.method private initMultiFormatReader()V
    .locals 2

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->HINTS:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public processData([BIIZ)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0, p3}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getScanBoxAreaRect(I)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    :goto_0
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v1, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0

    :cond_1
    move-object v0, v9

    goto :goto_2
.end method
