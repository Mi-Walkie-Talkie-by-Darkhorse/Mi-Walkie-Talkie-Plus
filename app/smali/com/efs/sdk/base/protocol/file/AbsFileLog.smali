.class public abstract Lcom/efs/sdk/base/protocol/file/AbsFileLog;
.super Lcom/efs/sdk/base/protocol/AbsLog;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/efs/sdk/base/protocol/AbsLog;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBodyType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogProtocol()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
