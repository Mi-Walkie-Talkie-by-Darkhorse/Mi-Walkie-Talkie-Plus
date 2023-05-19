.class Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO$a;
.super Ljava/lang/Object;
.source "UpgradeInfoDTO.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;",
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
.method public a(Landroid/os/Parcel;)Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO$a;->a(Landroid/os/Parcel;)Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO$a;->b(I)[Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    move-result-object p1

    return-object p1
.end method
