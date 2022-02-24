.class public Lcom/xiaomi/infra/galaxy/fds/exception/QuotaExceededException;
.super Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;
.source "QuotaExceededException.java"


# static fields
.field private static final serialVersionUID:J = 0x73099c3f19f2130dL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getError()Lcom/xiaomi/infra/galaxy/fds/FDSError;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->QuotaExceeded:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-object v0
.end method
