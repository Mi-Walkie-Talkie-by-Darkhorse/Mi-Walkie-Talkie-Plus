.class public Lcom/xiaomi/infra/galaxy/fds/exception/InvalidRangePrameterException;
.super Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;


# instance fields
.field private final range:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/exception/InvalidRangePrameterException;->range:[J

    return-void
.end method


# virtual methods
.method public getError()Lcom/xiaomi/infra/galaxy/fds/FDSError;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidRequestRange:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Lcom/xiaomi/infra/galaxy/fds/exception/GalaxyFDSException;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/exception/InvalidRangePrameterException;->range:[J

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", range in the request:["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/exception/InvalidRangePrameterException;->range:[J

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/exception/InvalidRangePrameterException;->range:[J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
