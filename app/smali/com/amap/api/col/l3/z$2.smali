.class final Lcom/amap/api/col/l3/z$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/z;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/z;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/z$2;->a:Lcom/amap/api/col/l3/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/z$2;->a:Lcom/amap/api/col/l3/z;

    invoke-static {v0}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/col/l3/z;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/z$2;->a:Lcom/amap/api/col/l3/z;

    invoke-static {v1}, Lcom/amap/api/col/l3/z;->b(Lcom/amap/api/col/l3/z;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
