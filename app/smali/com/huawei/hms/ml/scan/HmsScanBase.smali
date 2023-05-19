.class public abstract Lcom/huawei/hms/ml/scan/HmsScanBase;
.super Ljava/lang/Object;
.source "HmsScanBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;
    }
.end annotation


# static fields
.field public static final ALL_SCAN_TYPE:I = 0x0

.field public static final AZTEC_SCAN_TYPE:I

.field public static final CODABAR_SCAN_TYPE:I

.field public static final CODE128_SCAN_TYPE:I

.field public static final CODE39_SCAN_TYPE:I

.field public static final CODE93_SCAN_TYPE:I

.field public static final DATAMATRIX_SCAN_TYPE:I

.field public static final EAN13_SCAN_TYPE:I

.field public static final EAN8_SCAN_TYPE:I

.field public static final FORMAT_UNKNOWN:I

.field public static final ITF14_SCAN_TYPE:I

.field public static final OTHER_FORM:I = -0x1

.field public static final PDF417_SCAN_TYPE:I

.field public static final QRCODE_SCAN_TYPE:I

.field public static final SCAN_FORMAT_FLAG:Ljava/lang/String; = "ScanFormatValue"

.field public static final UPCCODE_A_SCAN_TYPE:I

.field public static final UPCCODE_E_SCAN_TYPE:I


# instance fields
.field private HMS_SCAN_VERSION:I

.field public cornerPoints:[Landroid/graphics/Point;

.field public options:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

.field public originValueByte:[B

.field public originalBitmap:Landroid/graphics/Bitmap;

.field public originalValue:Ljava/lang/String;

.field public scanType:I

.field public scanTypeForm:I

.field public showResult:Ljava/lang/String;

.field public zoomValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->FORMAT_UNKNOWN:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getUnKnown()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->FORMAT_UNKNOWN:I

    .line 2
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->QRCODE_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->QRCODE_SCAN_TYPE:I

    .line 3
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->AZTEC_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->AZTEC_SCAN_TYPE:I

    .line 4
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->DATAMATRIX_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->DATAMATRIX_SCAN_TYPE:I

    .line 5
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->PDF417_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->PDF417_SCAN_TYPE:I

    .line 6
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE39_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE39_SCAN_TYPE:I

    .line 7
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE93_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE93_SCAN_TYPE:I

    .line 8
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE128_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE128_SCAN_TYPE:I

    .line 9
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->EAN13_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN13_SCAN_TYPE:I

    .line 10
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->EAN8_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN8_SCAN_TYPE:I

    .line 11
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->ITF14_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->ITF14_SCAN_TYPE:I

    .line 12
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->UPCCODE_A_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_A_SCAN_TYPE:I

    .line 13
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->UPCCODE_E_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_E_SCAN_TYPE:I

    .line 14
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODABAR_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->getScanType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODABAR_SCAN_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->HMS_SCAN_VERSION:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 13
    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->HMS_SCAN_VERSION:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->HMS_SCAN_VERSION:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanTypeForm:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->showResult:Ljava/lang/String;

    .line 19
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->cornerPoints:[Landroid/graphics/Point;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->zoomValue:D

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originValueByte:[B

    .line 22
    invoke-virtual {p0, p1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->detailTrans(Landroid/os/Parcel;)V

    .line 23
    :cond_0
    iget v1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->HMS_SCAN_VERSION:I

    if-lt v1, v0, :cond_1

    .line 24
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I[B[Landroid/graphics/Point;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->HMS_SCAN_VERSION:I

    .line 5
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    .line 7
    iput-object p3, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->showResult:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanTypeForm:I

    .line 9
    iput-object p5, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originValueByte:[B

    .line 10
    iput-object p6, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->cornerPoints:[Landroid/graphics/Point;

    .line 11
    iput-object p7, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->options:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract detailTrans(Landroid/os/Parcel;)V
.end method

.method protected abstract detailTransOut(Landroid/os/Parcel;I)V
.end method

.method public getBorderRect()Landroid/graphics/Rect;
    .locals 7

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const/4 v4, 0x0

    .line 1
    :goto_0
    iget-object v5, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->cornerPoints:[Landroid/graphics/Point;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 2
    aget-object v5, v5, v4

    .line 3
    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->cornerPoints:[Landroid/graphics/Point;

    return-object v0
.end method

.method public getOriginValueByte()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originValueByte:[B

    return-object v0
.end method

.method public getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    return-object v0
.end method

.method public getScanType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    return v0
.end method

.method public getScanTypeForm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanTypeForm:I

    return v0
.end method

.method public getShowResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->showResult:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->zoomValue:D

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->HMS_SCAN_VERSION:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanTypeForm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->showResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->cornerPoints:[Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 7
    iget-wide v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->zoomValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 8
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originValueByte:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/ml/scan/HmsScanBase;->detailTransOut(Landroid/os/Parcel;I)V

    .line 10
    sget v0, Lcom/huawei/hms/hmsscankit/DetailRect;->HMSSCAN_SDK_VALUE:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    return-void
.end method
