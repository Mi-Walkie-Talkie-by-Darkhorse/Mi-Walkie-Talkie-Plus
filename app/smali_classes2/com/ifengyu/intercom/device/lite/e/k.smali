.class public Lcom/ifengyu/intercom/device/lite/e/k;
.super Landroidx/lifecycle/a;
.source "BatchConfigViewModel.java"

# interfaces
.implements Lcom/ifengyu/blelib/b/a;


# instance fields
.field private final b:Lcom/ifengyu/intercom/i/v0;

.field private c:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
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

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k;->c:Landroidx/lifecycle/o;

    .line 3
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k;->d:Landroidx/lifecycle/o;

    .line 4
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k;->e:Landroidx/lifecycle/o;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/t0;->j(Ljava/lang/String;)Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k;->b:Lcom/ifengyu/intercom/i/v0;

    .line 7
    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/i/v0;->g1(Lcom/ifengyu/blelib/b/a;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/device/lite/e/k;)Lcom/ifengyu/intercom/i/v0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->b:Lcom/ifengyu/intercom/i/v0;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/device/lite/e/k;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->d:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/device/lite/e/k;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->e:Landroidx/lifecycle/o;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ifengyu/blelib/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result p1

    const/16 v0, 0x4e36

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne p1, p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/e/k;->g()Landroidx/lifecycle/o;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/e/k;->g()Landroidx/lifecycle/o;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Lcom/ifengyu/intercom/i/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->b:Lcom/ifengyu/intercom/i/v0;

    return-object v0
.end method

.method public g()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->c:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public h()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->d:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public i()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->e:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->b:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/k$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/k$a;-><init>(Lcom/ifengyu/intercom/device/lite/e/k;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/v0;->i1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->b:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/k$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/k$b;-><init>(Lcom/ifengyu/intercom/device/lite/e/k;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/v0;->j1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/k;->b:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/i/v0;->w1(Lcom/ifengyu/blelib/b/a;)V

    return-void
.end method
