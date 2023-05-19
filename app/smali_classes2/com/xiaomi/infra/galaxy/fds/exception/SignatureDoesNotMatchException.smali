.class public Lcom/xiaomi/infra/galaxy/fds/exception/SignatureDoesNotMatchException;
.super Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;
.source "SignatureDoesNotMatchException.java"


# static fields
.field private static final serialVersionUID:J = -0x4a64e756367e2747L


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
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->SignatureDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-object v0
.end method
