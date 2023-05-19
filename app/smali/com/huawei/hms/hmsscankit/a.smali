.class final Lcom/huawei/hms/hmsscankit/a;
.super Ljava/lang/Object;
.source "DetailRect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hmsscankit/DetailRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/huawei/hms/hmsscankit/DetailRect;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/hmsscankit/DetailRect;
    .locals 1

    .line 2
    new-instance v0, Lcom/huawei/hms/hmsscankit/DetailRect;

    invoke-direct {v0, p1}, Lcom/huawei/hms/hmsscankit/DetailRect;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/hmsscankit/a;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/hmsscankit/DetailRect;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/huawei/hms/hmsscankit/DetailRect;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/huawei/hms/hmsscankit/DetailRect;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/hmsscankit/a;->newArray(I)[Lcom/huawei/hms/hmsscankit/DetailRect;

    move-result-object p1

    return-object p1
.end method
