.class final Lcom/google/protobuf/RpcUtil$2;
.super Ljava/lang/Object;
.source "RpcUtil.java"

# interfaces
.implements Lcom/google/protobuf/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/RpcUtil;->newOneTimeCallback(Lcom/google/protobuf/RpcCallback;)Lcom/google/protobuf/RpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/RpcCallback",
        "<TParameterType;>;"
    }
.end annotation


# instance fields
.field private alreadyCalled:Z

.field final synthetic val$originalCallback:Lcom/google/protobuf/RpcCallback;


# direct methods
.method constructor <init>(Lcom/google/protobuf/RpcCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/google/protobuf/RpcUtil$2;->val$originalCallback:Lcom/google/protobuf/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParameterType;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/RpcUtil$AlreadyCalledException;

    invoke-direct {v0}, Lcom/google/protobuf/RpcUtil$AlreadyCalledException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/protobuf/RpcUtil$2;->val$originalCallback:Lcom/google/protobuf/RpcCallback;

    invoke-interface {v0, p1}, Lcom/google/protobuf/RpcCallback;->run(Ljava/lang/Object;)V

    return-void
.end method
