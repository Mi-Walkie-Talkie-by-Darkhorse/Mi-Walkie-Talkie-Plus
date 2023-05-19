.class public Lcom/ifengyu/intercom/device/lite/e/l;
.super Landroidx/lifecycle/a;
.source "LiteViewModel.java"

# interfaces
.implements Lcom/ifengyu/blelib/b/a;


# static fields
.field private static final k:Ljava/lang/String; = "l"


# instance fields
.field private b:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

.field private f:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/ifengyu/intercom/i/v0;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
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

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->b:Landroidx/lifecycle/o;

    .line 3
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->c:Landroidx/lifecycle/o;

    .line 4
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->d:Landroidx/lifecycle/o;

    .line 5
    new-instance p1, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    invoke-direct {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->e:Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    .line 6
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->f:Landroidx/lifecycle/o;

    .line 7
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->g:Landroidx/lifecycle/o;

    .line 8
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->h:Landroidx/lifecycle/o;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->j:Ljava/util/List;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/t0;->j(Ljava/lang/String;)Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    .line 12
    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/i/v0;->g1(Lcom/ifengyu/blelib/b/a;)V

    return-void
.end method

.method private synthetic A(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->g:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic C(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/e/l;->k:Ljava/lang/String;

    const-string v1, "load device from db failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic D(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->h(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :cond_0
    return-object p2
.end method

.method static synthetic F(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic G(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/e/l;->k:Ljava/lang/String;

    const-string v1, "update device to db failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->b:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/e/l;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/device/lite/e/l;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->c:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->d:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->f:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->h:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/device/lite/e/l;)Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->e:Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    return-object p0
.end method

.method static synthetic u(Ljava/util/List;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/ChannelModel;

    .line 4
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_1
    const/16 v2, 0x10

    if-gt p0, v2, :cond_3

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v2, :cond_2

    .line 7
    new-instance v2, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/models/ChannelModel;-><init>()V

    .line 8
    invoke-virtual {v2, p0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelSeq(I)V

    const/4 v3, 0x2

    .line 9
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelType(I)V

    .line 10
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private synthetic v(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->h:Landroidx/lifecycle/o;

    const v1, 0x7f110200

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/lite/e/l;->k:Ljava/lang/String;

    const-string v1, "import config file failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic x(Lcom/ifengyu/intercom/models/ChannelModel;Lcom/ifengyu/intercom/models/ChannelModel;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result p0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic y(Landroid/bluetooth/BluetoothDevice;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic B(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->A(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public synthetic E(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/e/l;->D(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    return-object p2
.end method

.method public H(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->h()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/device/lite/e/a;->a:Lcom/ifengyu/intercom/device/lite/e/a;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->c:Landroidx/lifecycle/o;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$f;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/lite/e/l$f;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;I)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->d1(ILcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$e;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/v0;->e1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public J()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/h;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/e;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    sget-object v2, Lcom/ifengyu/intercom/device/lite/e/c;->a:Lcom/ifengyu/intercom/device/lite/e/c;

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$i;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/v0;->f1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public L(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$l;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->A1(ZLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public M(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->i(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

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

    new-instance v6, Lcom/ifengyu/intercom/device/lite/e/l$g;

    invoke-direct {v6, p0}, Lcom/ifengyu/intercom/device/lite/e/l$g;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual/range {v0 .. v6}, Lcom/ifengyu/intercom/i/v0;->x1(IIIIILcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public N(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$c;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->z1(ILcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$k;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->D1(Ljava/lang/String;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/f;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/device/lite/e/f;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;Landroid/bluetooth/BluetoothDevice;)V

    .line 3
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/device/lite/e/b;->a:Lcom/ifengyu/intercom/device/lite/e/b;

    sget-object v1, Lcom/ifengyu/intercom/device/lite/e/g;->a:Lcom/ifengyu/intercom/device/lite/e/g;

    .line 5
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public Q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$d;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->E1(ZLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public R(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/j0;->x(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public S(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$j;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->F1(ILcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public T(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$b;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->G1(ZLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public U(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$m;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->B1(ZLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public V(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/l$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/l$a;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->C1(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

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

    const/16 v0, 0x4e2b

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->d(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/e/l;->b:Landroidx/lifecycle/o;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public k()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->h:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public l()Lcom/ifengyu/intercom/i/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    return-object v0
.end method

.method public m()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->d:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public n()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->c:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public o()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->b:Landroidx/lifecycle/o;

    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/lite/e/l;->k:Ljava/lang/String;

    const-string v1, "onCleared"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/i/v0;->w1(Lcom/ifengyu/blelib/b/a;)V

    return-void
.end method

.method public p()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->g:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->e:Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    return-object v0
.end method

.method public r()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l;->f:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public s(Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->h:Landroidx/lifecycle/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/e/l;->i:Lcom/ifengyu/intercom/i/v0;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->i(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/device/lite/e/l$h;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/lite/e/l$h;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;Ljava/util/LinkedList;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/i/v0;->y1(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/device/lite/e/i;->a:Lcom/ifengyu/intercom/device/lite/e/i;

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/lite/e/j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/e/j;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    new-instance v1, Lcom/ifengyu/intercom/device/lite/e/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/e/d;-><init>(Lcom/ifengyu/intercom/device/lite/e/l;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic w(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic z(Landroid/bluetooth/BluetoothDevice;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->y(Landroid/bluetooth/BluetoothDevice;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
