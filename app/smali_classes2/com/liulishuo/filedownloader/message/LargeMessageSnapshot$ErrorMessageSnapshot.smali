.class public Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.source "LargeMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMessageSnapshot"
.end annotation


# instance fields
.field private final b:J

.field private final c:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(IJLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;-><init>(I)V

    iput-wide p2, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;->b:J

    iput-object p4, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;->c:Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public b()B
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;->b:J

    return-wide v0
.end method

.method public j()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;->c:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
