.class public Lcom/ifengyu/intercom/bean/BtEarBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/bean/BtEarBean$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/bean/BtEarBean$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/bean/BtEarBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->device:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->rssi:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->rssi:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->rssi:I

    return v0
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->rssi:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/ifengyu/intercom/bean/BtEarBean;->rssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
