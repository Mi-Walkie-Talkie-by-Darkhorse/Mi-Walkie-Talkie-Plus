.class public Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
.super Ljava/lang/Object;
.source "HmsScanAnalyzerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;
    }
.end annotation


# instance fields
.field public final mode:I

.field public final photoMode:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;->mode:I

    .line 4
    iput-boolean p2, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;->photoMode:Z

    return-void
.end method

.method synthetic constructor <init>(IZLcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
