.class Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;
.super Ljava/lang/Object;
.source "BluetoothHeadsetUtils.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/util/BluetoothHeadsetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected:profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDevice is NULL"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "HFP\u5df2\u8fde\u63a5"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    :try_start_0
    const-string v1, "connect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {v4}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected:profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    return-void
.end method
