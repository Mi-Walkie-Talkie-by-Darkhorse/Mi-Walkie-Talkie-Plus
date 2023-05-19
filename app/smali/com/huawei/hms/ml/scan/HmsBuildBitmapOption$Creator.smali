.class public Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;
.super Ljava/lang/Object;
.source "HmsBuildBitmapOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field private QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

.field private bimapBackgroundColor:I

.field private bimapColor:I

.field private logobitmap:Landroid/graphics/Bitmap;

.field private margin:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->margin:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->bimapBackgroundColor:I

    .line 4
    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->bimapColor:I

    .line 5
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->L:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    return-void
.end method


# virtual methods
.method public create()Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;
    .locals 8

    .line 1
    new-instance v7, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;

    iget v1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->margin:I

    iget v2, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->bimapColor:I

    iget v3, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->bimapBackgroundColor:I

    iget-object v4, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    iget-object v5, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->logobitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;-><init>(IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$1;)V

    return-object v7
.end method

.method public setBitmapBackgroundColor(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->bimapBackgroundColor:I

    return-object p0
.end method

.method public setBitmapColor(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->bimapColor:I

    return-object p0
.end method

.method public setBitmapMargin(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->margin:I

    return-object p0
.end method

.method public setQRErrorCorrection(Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    return-object p0
.end method

.method public setQRLogoBitmap(Landroid/graphics/Bitmap;)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->logobitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
