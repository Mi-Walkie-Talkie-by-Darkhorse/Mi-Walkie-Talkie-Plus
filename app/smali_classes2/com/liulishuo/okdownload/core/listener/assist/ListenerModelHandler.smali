.class public Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;
.super Ljava/lang/Object;
.source "ListenerModelHandler.java"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;,
        Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;"
    }
.end annotation


# instance fields
.field private alwaysRecoverModel:Ljava/lang/Boolean;

.field private final creator:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final modelList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->modelList:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->creator:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;

    return-void
.end method


# virtual methods
.method addAndGetModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->creator:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;->create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->modelList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 6
    invoke-interface {v0, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;->onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    .line 7
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getOrRecoverModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    invoke-interface {v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;->getId()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->modelList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    :cond_1
    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->isAlwaysRecoverAssistModel()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->addAndGetModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isAlwaysRecoverAssistModel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->alwaysRecoverModel:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method removeOrCreate(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->singleTaskModel:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->modelList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    .line 7
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->modelList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->creator:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;

    invoke-interface {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;->create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 10
    invoke-interface {v0, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;->onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->alwaysRecoverModel:Ljava/lang/Boolean;

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->alwaysRecoverModel:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->alwaysRecoverModel:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
