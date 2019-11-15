.class public abstract Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "LargeMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->i()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->i()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public c()I
    .locals 4

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->d()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->d()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method
