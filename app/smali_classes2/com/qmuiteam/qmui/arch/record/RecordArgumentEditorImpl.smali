.class public Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public declared-synchronized putBoolean(Ljava/lang/String;Z)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, p2, v2}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putFloat(Ljava/lang/String;F)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, p2, v2}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putInt(Ljava/lang/String;I)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, p2, v2}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putLong(Ljava/lang/String;J)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, p2, p3}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putString(Ljava/lang/String;Ljava/lang/String;)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;

    const-class v2, Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
