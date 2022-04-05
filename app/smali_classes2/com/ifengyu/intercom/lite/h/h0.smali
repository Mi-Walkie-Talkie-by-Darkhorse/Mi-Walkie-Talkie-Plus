.class public Lcom/ifengyu/intercom/lite/h/h0;
.super Landroidx/lifecycle/a;

# interfaces
.implements Lcom/ifengyu/intercom/lite/e/g/a;


# static fields
.field private static final n:Ljava/lang/String; = "h0"


# instance fields
.field private b:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

.field private f:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/ifengyu/intercom/lite/e/f;

.field private l:Landroid/bluetooth/BluetoothDevice;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->b:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->c:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->d:Landroidx/lifecycle/p;

    new-instance v0, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->e:Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->f:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->g:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->h:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->i:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->j:Landroidx/lifecycle/p;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->m:Ljava/util/List;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {p1, p0}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/c/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/models/ChannelModel;Lcom/ifengyu/intercom/lite/models/ChannelModel;)I
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result p0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/h0;->b:Landroidx/lifecycle/p;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/h0;->c:Landroidx/lifecycle/p;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/lite/h/h0;->n:Ljava/lang/String;

    const-string v1, "load device from db failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/h/h0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/h0;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic c(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/lite/h/h0;->n:Ljava/lang/String;

    const-string v1, "update device to db failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/h0;->d:Landroidx/lifecycle/p;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/h0;->g:Landroidx/lifecycle/p;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/h0;->j:Landroidx/lifecycle/p;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/lite/h/h0;)Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/h/h0;->e:Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    return-object p0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/lite/h/h0;->n:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->l:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/u1;->d(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/b2;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/b2;->a(II)Lno/nordicsemi/android/ble/b2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/b2;->a(Z)Lno/nordicsemi/android/ble/b2;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/a0;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/b2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/b2;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/p2;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setName(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/e;->b(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V

    :cond_0
    return-object p2
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/h/h0;->f:Landroidx/lifecycle/p;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->h:Landroidx/lifecycle/p;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->f:Landroidx/lifecycle/p;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/lite/event/b;

    sget v0, Lcom/ifengyu/intercom/lite/event/b;->b:I

    invoke-direct {p2, v0}, Lcom/ifengyu/intercom/lite/event/b;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;)V

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

    const/16 v0, 0x4e2b

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-direct {p2, p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;-><init>(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->b:Landroidx/lifecycle/p;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->toChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getSeq()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getRxFreq()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getRxCss()I

    move-result v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getTxFreq()I

    move-result v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getTxCss()I

    move-result v5

    new-instance v6, Lcom/ifengyu/intercom/lite/h/h0$h;

    invoke-direct {v6, p0}, Lcom/ifengyu/intercom/lite/h/h0$h;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual/range {v0 .. v6}, Lcom/ifengyu/intercom/lite/e/f;->a(IIIIILcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->i:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$b;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/t;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/t;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/h/d0;->a:Lcom/ifengyu/intercom/lite/h/d0;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/e0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/e0;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    new-instance v1, Lcom/ifengyu/intercom/lite/h/b0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/b0;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$l;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->a(Ljava/lang/String;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->j:Landroidx/lifecycle/p;

    const v1, 0x7f110191

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/intercom/lite/h/h0;->n:Ljava/lang/String;

    const-string v1, "import config file failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public a(Ljava/util/Queue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->j:Landroidx/lifecycle/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->toChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/lite/h/h0$i;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/lite/h/h0$i;-><init>(Lcom/ifengyu/intercom/lite/h/h0;Ljava/util/Queue;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$m;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->a(ZLcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->l()Lcom/ifengyu/intercom/lite/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/a;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->l:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v0}, Lcom/ifengyu/blelib/b/e;->m()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/p2;->a()V

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/lite/a/a;->c()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/lite/a/a;->b()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/h/v;->a:Lcom/ifengyu/intercom/lite/h/v;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->c:Landroidx/lifecycle/p;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$g;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/lite/h/h0$g;-><init>(Lcom/ifengyu/intercom/lite/h/h0;I)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->a(ILcom/ifengyu/blelib/c/e;)V

    return-void
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
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->f:Landroidx/lifecycle/p;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->h:Landroidx/lifecycle/p;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/event/a;

    invoke-direct {v0, p2}, Lcom/ifengyu/intercom/lite/event/a;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/lite/event/b;

    sget v0, Lcom/ifengyu/intercom/lite/event/b;->b:I

    invoke-direct {p2, v0}, Lcom/ifengyu/intercom/lite/event/b;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/lite/h/z;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/lite/h/z;-><init>(Lcom/ifengyu/intercom/lite/h/h0;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/h/x;->a:Lcom/ifengyu/intercom/lite/h/x;

    sget-object v1, Lcom/ifengyu/intercom/lite/h/y;->a:Lcom/ifengyu/intercom/lite/h/y;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$e;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->c(ZLcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public c()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->j:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$d;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->b(ILcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public synthetic c(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/lite/h/h0;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect failed, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "status: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->h:Landroidx/lifecycle/p;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$c;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->d(ZLcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public d()Lcom/ifengyu/intercom/lite/e/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$k;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->c(ILcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0;->l:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/h/h0;->p()V

    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$a;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->b(ZLcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public e()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->d:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public synthetic e(Landroid/bluetooth/BluetoothDevice;)Lcom/ifengyu/intercom/lite/models/DeviceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->c:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public f(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public g()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->b:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public h()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->i:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->e:Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    return-object v0
.end method

.method public j()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->g:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public k()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->f:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$f;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public m()V
    .locals 3

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/h/u;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/u;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/h/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/w;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    sget-object v2, Lcom/ifengyu/intercom/lite/h/c0;->a:Lcom/ifengyu/intercom/lite/h/c0;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/h/h0$j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/h0$j;-><init>(Lcom/ifengyu/intercom/lite/h/h0;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/e/f;->b(Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    sget-object v0, Lcom/ifengyu/intercom/lite/h/h0;->n:Ljava/lang/String;

    const-string v1, "onCleared"

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0;->k:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v0, p0}, Lcom/ifengyu/blelib/b/e;->b(Lcom/ifengyu/blelib/c/b;)V

    return-void
.end method
