.class final Lcom/amap/api/col/l3/e$c;
.super Ljava/lang/Thread;
.source "ApsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/e;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    iget-boolean v0, v0, Lcom/amap/api/col/l3/e;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/l3/e;->p:Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    new-instance v1, Ljava/net/ServerSocket;

    const v2, 0xaaa9

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lcom/amap/api/col/l3/e;->o:Ljava/net/ServerSocket;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    iget-boolean v0, v0, Lcom/amap/api/col/l3/e;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    iget-object v0, v0, Lcom/amap/api/col/l3/e;->o:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    iget-object v1, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    iget-object v1, v1, Lcom/amap/api/col/l3/e;->o:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3/e;->q:Ljava/net/Socket;

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    iget-object v1, p0, Lcom/amap/api/col/l3/e$c;->a:Lcom/amap/api/col/l3/e;

    iget-object v1, v1, Lcom/amap/api/col/l3/e;->q:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/e;->a(Lcom/amap/api/col/l3/e;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "run"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
