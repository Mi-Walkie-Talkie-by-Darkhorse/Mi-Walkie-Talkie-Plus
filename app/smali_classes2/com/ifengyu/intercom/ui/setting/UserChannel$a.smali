.class final Lcom/ifengyu/intercom/ui/setting/UserChannel$a;
.super Ljava/lang/Object;
.source "UserChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/UserChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 1

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel$a;->createFromParcel(Landroid/os/Parcel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel$a;->newArray(I)[Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p1

    return-object p1
.end method
