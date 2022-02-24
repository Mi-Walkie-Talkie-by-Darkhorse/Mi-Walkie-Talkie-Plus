.class public Lcom/liulishuo/okdownload/core/exception/PreAllocateException;
.super Ljava/io/IOException;
.source "PreAllocateException.java"


# instance fields
.field private final freeSpace:J

.field private final requireSpace:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is Free space less than Require space: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-wide p1, p0, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;->requireSpace:J

    .line 3
    iput-wide p3, p0, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;->freeSpace:J

    return-void
.end method


# virtual methods
.method public getFreeSpace()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;->freeSpace:J

    return-wide v0
.end method

.method public getRequireSpace()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;->requireSpace:J

    return-wide v0
.end method
