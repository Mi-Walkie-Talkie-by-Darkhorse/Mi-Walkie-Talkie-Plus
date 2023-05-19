.class Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;
.super Ljava/lang/Object;
.source "HmsScanAnalyzer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->analyzInAsyn(Lcom/huawei/hms/mlsdk/common/MLFrame;)Lb/b/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/huawei/hms/ml/scan/HmsScan;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;

.field final synthetic val$frame:Lcom/huawei/hms/mlsdk/common/MLFrame;


# direct methods
.method constructor <init>(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;Lcom/huawei/hms/mlsdk/common/MLFrame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->this$0:Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;

    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->val$frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ml/scan/HmsScan;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->val$frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->this$0:Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;

    invoke-static {v0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->access$000(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->val$frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    iget-object v2, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->this$0:Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;

    invoke-static {v2}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->access$100(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/hmsscankit/ScanUtil;->detectForHmsDector(Landroid/content/Context;Lcom/huawei/hms/mlsdk/common/MLFrame;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 6
    iget-object v5, v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
