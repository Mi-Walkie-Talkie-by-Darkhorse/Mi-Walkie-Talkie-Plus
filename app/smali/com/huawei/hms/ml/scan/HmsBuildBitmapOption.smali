.class public Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;
.super Ljava/lang/Object;
.source "HmsBuildBitmapOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;,
        Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;
    }
.end annotation


# static fields
.field public static final TYPE_BUILD_BITMAP_BACKCOLOR:Ljava/lang/String; = "BitmapBackColor"

.field public static final TYPE_BUILD_BITMAP_COLOR:Ljava/lang/String; = "BitmapColor"

.field public static final TYPE_BUILD_BITMAP_CONTENT:Ljava/lang/String; = "BitmapContent"

.field public static final TYPE_BUILD_BITMAP_FOTMAT:Ljava/lang/String; = "BitmapFormat"

.field public static final TYPE_BUILD_BITMAP_HEIGHT:Ljava/lang/String; = "BitmapHeight"

.field public static final TYPE_BUILD_BITMAP_MARGIN:Ljava/lang/String; = "BitmapMargin"

.field public static final TYPE_BUILD_BITMAP_WIDTH:Ljava/lang/String; = "BitmapWidth"


# instance fields
.field public final QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

.field public final bimapColor:I

.field public final bitmapBackgroundColor:I

.field public final logoBitmap:Landroid/graphics/Bitmap;

.field public final margin:I


# direct methods
.method private constructor <init>(IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->margin:I

    .line 4
    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bitmapBackgroundColor:I

    .line 5
    iput p2, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bimapColor:I

    .line 6
    iput-object p4, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    .line 7
    iput-object p5, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;-><init>(IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "margin:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bitmapBackgroundColor:"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v2, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bitmapBackgroundColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bimapColor:"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bimapColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
