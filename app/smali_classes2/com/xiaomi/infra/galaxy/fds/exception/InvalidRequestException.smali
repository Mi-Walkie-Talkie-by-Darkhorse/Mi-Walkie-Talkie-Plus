.class public Lcom/xiaomi/infra/galaxy/fds/exception/InvalidRequestException;
.super Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;
.source "InvalidRequestException.java"


# static fields
.field private static final serialVersionUID:J = 0x1016f73a357947c2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getError()Lcom/xiaomi/infra/galaxy/fds/FDSError;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidRequest:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-object v0
.end method
