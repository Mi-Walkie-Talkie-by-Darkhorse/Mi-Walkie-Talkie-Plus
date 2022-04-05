.class public Lcom/ifengyu/intercom/lite/h/f0;
.super Landroidx/lifecycle/a;

# interfaces
.implements Lcom/ifengyu/blelib/c/b;


# instance fields
.field private final b:Lcom/ifengyu/intercom/lite/e/f;

.field private c:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->c:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->d:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->e:Landroidx/lifecycle/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/f0;->b:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {p1, p0}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/c/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/h/f0;)Lcom/ifengyu/intercom/lite/e/f;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/f0;->b:Lcom/ifengyu/intercom/lite/e/f;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/h/f0;)Landroidx/lifecycle/p;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/f0;->d:Landroidx/lifecycle/p;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/h/f0;)Landroidx/lifecycle/p;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/f0;->e:Landroidx/lifecycle/p;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/d/c;)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ifengyu/blelib/d/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->a()I

    move-result p1

    const/16 v0, 0x4e36

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/h/f0;->c()Landroidx/lifecycle/p;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/h/f0;->c()Landroidx/lifecycle/p;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Lcom/ifengyu/intercom/lite/e/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->b:Lcom/ifengyu/intercom/lite/e/f;

    return-object v0
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public c()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->c:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public d()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->d:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public e()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->e:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->b:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/f0$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/f0$a;-><init>(Lcom/ifengyu/intercom/lite/h/f0;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/e/f;->c(Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public f(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/f0;->b:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/f0$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/f0$b;-><init>(Lcom/ifengyu/intercom/lite/h/f0;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/e/f;->d(Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method
