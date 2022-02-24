.class public Lcom/amap/api/col/l3/fu;
.super Ljava/lang/Object;
.source "TraceResultPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/fu$a;
    }
.end annotation


# static fields
.field private static c:Lcom/amap/api/col/l3/fu;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amap/api/col/l3/fu$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TraceResultPool"

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/fu;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/fu;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/fu;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3/fu;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/api/col/l3/fu;->c:Lcom/amap/api/col/l3/fu;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/amap/api/col/l3/fu;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/fu;->c:Lcom/amap/api/col/l3/fu;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/api/col/l3/fu;

    invoke-direct {v1}, Lcom/amap/api/col/l3/fu;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3/fu;->c:Lcom/amap/api/col/l3/fu;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/col/l3/fu;->c:Lcom/amap/api/col/l3/fu;

    return-object v0
.end method

.method public static a(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 17
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0x66

    .line 18
    iput p2, v0, Landroid/os/Message;->what:I

    .line 19
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lineID"

    .line 20
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/col/l3/fu$a;
    .locals 1

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fu;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/amap/api/col/l3/fu;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3/fu$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 15
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;III)V
    .locals 8

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fu;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/fu;->b:Ljava/util/Map;

    new-instance v7, Lcom/amap/api/col/l3/fu$a;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/l3/fu$a;-><init>(Lcom/amap/api/col/l3/fu;IIILjava/util/HashMap;)V

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fu;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/fu;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3/fu$a;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/fu$a;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
