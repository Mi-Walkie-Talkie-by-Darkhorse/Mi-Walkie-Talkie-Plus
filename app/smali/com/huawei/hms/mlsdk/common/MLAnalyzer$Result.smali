.class public Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;
.super Ljava/lang/Object;
.source "MLAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private analyseList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private frameProperty:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

.field private isAnalyzerAvailable:Z


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Lcom/huawei/hms/mlsdk/common/MLFrame$Property;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Lcom/huawei/hms/mlsdk/common/MLFrame$Property;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;->analyseList:Landroid/util/SparseArray;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;->frameProperty:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    .line 4
    iput-boolean p3, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;->isAnalyzerAvailable:Z

    return-void
.end method


# virtual methods
.method public getAnalyseList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;->analyseList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getFrameProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;->frameProperty:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    return-object v0
.end method

.method public isAnalyzerAvaliable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;->isAnalyzerAvailable:Z

    return v0
.end method
