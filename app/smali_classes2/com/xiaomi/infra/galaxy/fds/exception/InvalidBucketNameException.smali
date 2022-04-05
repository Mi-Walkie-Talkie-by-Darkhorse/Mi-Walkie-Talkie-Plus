.class public Lcom/xiaomi/infra/galaxy/fds/exception/InvalidBucketNameException;
.super Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;


# static fields
.field private static final serialVersionUID:J = 0x60fb94aaaaa9d74L


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/exception/InvalidBucketNameException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Lcom/xiaomi/infra/galaxy/fds/FDSError;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidBucketName:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/exception/InvalidBucketNameException;->message:Ljava/lang/String;

    return-object v0
.end method
