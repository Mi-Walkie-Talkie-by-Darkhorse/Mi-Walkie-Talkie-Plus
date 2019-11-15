.class public Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;
.super Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.source "LargeMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletedSnapshot"
.end annotation


# instance fields
.field private final b:Z

.field private final c:J


# direct methods
.method constructor <init>(IZJ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;-><init>(I)V

    iput-boolean p2, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;->b:Z

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;->c:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;->b:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;->c:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b()B
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;->c:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;->b:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
