.class public Lcom/xiaomi/infra/galaxy/fds/exception/VerifyOAuthAccessTokenError;
.super Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;
.source "VerifyOAuthAccessTokenError.java"


# static fields
.field private static final serialVersionUID:J = 0x173a80d0e250ede9L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/xiaomi/infra/galaxy/fds/FDSError;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->VerifyOAuthAccessTokenError:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-object v0
.end method
