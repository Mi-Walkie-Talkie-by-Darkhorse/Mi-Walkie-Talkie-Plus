.class final Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;
    .locals 0

    new-array p1, p1, [Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo$1;->newArray(I)[Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    move-result-object p1

    return-object p1
.end method
