.class public abstract Lcom/huawei/hms/mlsdk/common/MLAnalyzer;
.super Ljava/lang/Object;
.source "MLAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;,
        Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;
    }
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
.field private monitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/mlsdk/common/AnalyzerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final syncAnalyzer:Ljava/lang/Object;

.field private transactor:Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->monitors:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->syncAnalyzer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract analyseFrame(Lcom/huawei/hms/mlsdk/common/MLFrame;)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/mlsdk/common/MLFrame;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->syncAnalyzer:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->transactor:Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;->destroy()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->transactor:Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getFramePropertyExt(Lcom/huawei/hms/mlsdk/common/MLFrame;)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getExt()Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasMonitorRegistered()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->monitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public obtainPicture(Lcom/huawei/hms/mlsdk/common/MLFrame;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->syncAnalyzer:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->transactor:Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;-><init>(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)V

    .line 4
    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->resetWidthAndHeight()V

    .line 5
    new-instance v2, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->analyseFrame(Lcom/huawei/hms/mlsdk/common/MLFrame;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->isAvailable()Z

    move-result v3

    invoke-direct {v2, p1, v1, v3}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;-><init>(Landroid/util/SparseArray;Lcom/huawei/hms/mlsdk/common/MLFrame$Property;Z)V

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->transactor:Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;

    invoke-interface {p1, v2}, Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;->transactResult(Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Transactor must be specified first to receive detection results."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postMonitorEvent(Lcom/huawei/hms/mlsdk/common/internal/client/event/MonitorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->monitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/mlsdk/common/AnalyzerMonitor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v1, p1}, Lcom/huawei/hms/mlsdk/common/AnalyzerMonitor;->receive(Lcom/huawei/hms/mlsdk/common/internal/client/event/MonitorEvent;)Lcom/huawei/hms/mlsdk/common/internal/client/event/MonitorResult;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerMonitor(Lcom/huawei/hms/mlsdk/common/AnalyzerMonitor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->monitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTransactor(Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->syncAnalyzer:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->transactor:Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public traceItem(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterMonitor(Lcom/huawei/hms/mlsdk/common/AnalyzerMonitor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLAnalyzer;->monitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
