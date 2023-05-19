.class final Lcom/huawei/hms/scankit/aiscan/common/b;
.super Ljava/lang/Object;
.source "BarcodeFormat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 1

    .line 2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->values()[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/aiscan/common/b;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/aiscan/common/b;->newArray(I)[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object p1

    return-object p1
.end method
