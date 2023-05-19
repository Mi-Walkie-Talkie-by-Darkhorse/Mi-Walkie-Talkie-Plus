.class public Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;
.super Ljava/lang/Object;
.source "HmsScanAnalyzerOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field private photoMode:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->type:I

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->photoMode:Z

    return-void
.end method


# virtual methods
.method public create()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 4

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    iget v1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->type:I

    iget-boolean v2, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->photoMode:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;-><init>(IZLcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$1;)V

    return-object v0
.end method

.method public varargs setHmsScanTypes(I[I)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->a(I)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->type:I

    if-eqz p2, :cond_0

    .line 2
    array-length v0, p2

    if-lez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->b(I)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->type:I

    .line 4
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    .line 5
    invoke-static {v1}, Lcom/huawei/hms/scankit/util/b;->b(I)I

    move-result v1

    .line 6
    iget v2, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->type:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->type:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setPhotoMode(Z)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->photoMode:Z

    return-object p0
.end method
