.class public final Lcom/google/protobuf/RpcUtil;
.super Ljava/lang/Object;
.source "RpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RpcUtil$AlreadyCalledException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/protobuf/RpcUtil;->copyAsType(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method private static copyAsType(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(TType;",
            "Lcom/google/protobuf/Message;",
            ")TType;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public static generalizeCallback(Lcom/google/protobuf/RpcCallback;Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/RpcCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/RpcCallback",
            "<TType;>;",
            "Ljava/lang/Class",
            "<TType;>;TType;)",
            "Lcom/google/protobuf/RpcCallback",
            "<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/RpcUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/protobuf/RpcUtil$1;-><init>(Ljava/lang/Class;Lcom/google/protobuf/Message;Lcom/google/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static newOneTimeCallback(Lcom/google/protobuf/RpcCallback;)Lcom/google/protobuf/RpcCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParameterType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/RpcCallback",
            "<TParameterType;>;)",
            "Lcom/google/protobuf/RpcCallback",
            "<TParameterType;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/RpcUtil$2;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RpcUtil$2;-><init>(Lcom/google/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static specializeCallback(Lcom/google/protobuf/RpcCallback;)Lcom/google/protobuf/RpcCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/RpcCallback",
            "<",
            "Lcom/google/protobuf/Message;",
            ">;)",
            "Lcom/google/protobuf/RpcCallback",
            "<TType;>;"
        }
    .end annotation

    return-object p0
.end method
