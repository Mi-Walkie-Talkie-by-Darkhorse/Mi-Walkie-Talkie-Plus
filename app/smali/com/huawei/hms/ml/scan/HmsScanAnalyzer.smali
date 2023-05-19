.class public Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;
.super Lcom/huawei/hms/mlsdk/common/MLAnalyzer;
.source "HmsScanAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/mlsdk/common/MLAnalyzer<",
        "Lcom/huawei/hms/ml/scan/HmsScan;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmsScanAnalyzer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mlVisionScanDetectorOptions:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;-><init>()V

    .line 6
    invoke-static {}, Lb/b/a/a;->b()Lb/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lb/b/a/a;->b()Lb/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const-string v0, "HmsScanAnalyzer"

    const-string v1, "AGConnectInstanceImpl contect is null"

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mContext:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mlVisionScanDetectorOptions:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;-><init>(Landroid/content/Context;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;-><init>()V

    .line 3
    invoke-static {}, Lb/b/a/a;->b()Lb/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mContext:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mlVisionScanDetectorOptions:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mlVisionScanDetectorOptions:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    return-object p0
.end method


# virtual methods
.method public analyseFrame(Lcom/huawei/hms/mlsdk/common/MLFrame;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/mlsdk/common/MLFrame;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/huawei/hms/ml/scan/HmsScan;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mlVisionScanDetectorOptions:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    invoke-static {v0, p1, v1}, Lcom/huawei/hms/hmsscankit/ScanUtil;->detectForHmsDector(Landroid/content/Context;Lcom/huawei/hms/mlsdk/common/MLFrame;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public analyzInAsyn(Lcom/huawei/hms/mlsdk/common/MLFrame;)Lb/b/b/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/mlsdk/common/MLFrame;",
            ")",
            "Lb/b/b/a/b<",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ml/scan/HmsScan;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;-><init>(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;Lcom/huawei/hms/mlsdk/common/MLFrame;)V

    invoke-static {v0}, Lb/b/b/a/e;->a(Ljava/util/concurrent/Callable;)Lb/b/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public destory()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->destroy()V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/hmsscankit/ScanUtil;->isScanAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
