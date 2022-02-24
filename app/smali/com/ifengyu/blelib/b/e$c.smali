.class Lcom/ifengyu/blelib/b/e$c;
.super Ljava/lang/Object;
.source "BleClient.java"

# interfaces
.implements Lno/nordicsemi/android/ble/u2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/blelib/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/blelib/b/e;


# direct methods
.method private constructor <init>(Lcom/ifengyu/blelib/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/blelib/b/e$c;->a:Lcom/ifengyu/blelib/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/blelib/b/e;Lcom/ifengyu/blelib/b/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e$c;-><init>(Lcom/ifengyu/blelib/b/e;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lno/nordicsemi/android/ble/data/Data;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$c;->a:Lcom/ifengyu/blelib/b/e;

    iget-object v0, v0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived-->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/Data;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/Data;->a()[B

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e$c;->a:Lcom/ifengyu/blelib/b/e;

    iget-object p1, p1, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string p2, "onDataReceived-->data size is 0"

    invoke-static {p1, p2}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-static {p2}, Lcom/ifengyu/blelib/d/f;->f([B)I

    move-result v0

    .line 6
    invoke-static {p2}, Lcom/ifengyu/blelib/d/f;->g([B)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/ifengyu/blelib/b/e$c;->a:Lcom/ifengyu/blelib/b/e;

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/ifengyu/blelib/b/e;->b(Z)V

    .line 8
    invoke-static {}, Lcom/ifengyu/blelib/c/d;->c()Lcom/ifengyu/blelib/c/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/blelib/c/d;->a(I)Lcom/ifengyu/blelib/c/e;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/ifengyu/blelib/b/e$c;->a:Lcom/ifengyu/blelib/b/e;

    invoke-static {v1, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/b/e;[B)Lcom/ifengyu/blelib/d/c;

    move-result-object p2

    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    const/4 p1, -0x4

    .line 10
    invoke-virtual {v0, p1}, Lcom/ifengyu/blelib/c/e;->a(I)V

    :cond_3
    return-void

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/ifengyu/blelib/b/e$c;->a:Lcom/ifengyu/blelib/b/e;

    invoke-interface {v1, p1, p2}, Lcom/ifengyu/blelib/c/a;->a(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/d/c;)V

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, p2}, Lcom/ifengyu/blelib/c/e;->a(Lcom/ifengyu/blelib/d/c;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$c;->a:Lcom/ifengyu/blelib/b/e;

    iget-object v0, v0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/blelib/c/b;

    .line 14
    invoke-interface {v1, p1, p2}, Lcom/ifengyu/blelib/c/a;->a(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/d/c;)V

    goto :goto_1

    :cond_6
    return-void
.end method
