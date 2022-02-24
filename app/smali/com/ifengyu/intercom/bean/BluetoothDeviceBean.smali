.class public Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;
.super Ljava/lang/Object;
.source "BluetoothDeviceBean.java"


# instance fields
.field private address:Ljava/lang/String;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private deviceType:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private rssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->address:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f110048

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->name:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->deviceType:I

    .line 6
    iput-object p4, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->deviceType:I

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->rssi:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->deviceType:I

    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->rssi:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothDeviceBean{address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->deviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
