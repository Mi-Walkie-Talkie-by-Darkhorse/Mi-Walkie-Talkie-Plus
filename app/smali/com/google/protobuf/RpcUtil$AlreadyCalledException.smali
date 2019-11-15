.class public final Lcom/google/protobuf/RpcUtil$AlreadyCalledException;
.super Ljava/lang/RuntimeException;
.source "RpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlreadyCalledException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4be86cb6ba5b1c4aL


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "This RpcCallback was already called and cannot be called multiple times."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
