.class final Lcom/liulishuo/filedownloader/message/MessageSnapshot$1;
.super Ljava/lang/Object;
.source "MessageSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    iput-boolean v0, v1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_1

    new-instance v1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_3
    if-eqz v0, :cond_2

    new-instance v1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_4
    if-eqz v0, :cond_3

    new-instance v1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_5
    if-eqz v0, :cond_4

    new-instance v1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_6
    if-eqz v0, :cond_5

    new-instance v1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_7
    if-eqz v0, :cond_6

    new-instance v1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_8
    if-eqz v0, :cond_7

    new-instance v1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_7
    new-instance v1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t restore the snapshot because unknown status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)[Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 1

    new-array v0, p1, [Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$1;->a(Landroid/os/Parcel;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$1;->a(I)[Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    return-object v0
.end method
