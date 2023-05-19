.class final Lcom/amap/api/col/l3/ds$2;
.super Lcom/amap/api/col/l3/ds$e;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/ds;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3/ds$e<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/ds;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/ds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/ds$2;->a:Lcom/amap/api/col/l3/ds;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/ds$e;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ds$2;->a:Lcom/amap/api/col/l3/ds;

    invoke-static {v0}, Lcom/amap/api/col/l3/ds;->a(Lcom/amap/api/col/l3/ds;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/ds$2;->a:Lcom/amap/api/col/l3/ds;

    iget-object v1, p0, Lcom/amap/api/col/l3/ds$e;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ds;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/ds;->a(Lcom/amap/api/col/l3/ds;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
