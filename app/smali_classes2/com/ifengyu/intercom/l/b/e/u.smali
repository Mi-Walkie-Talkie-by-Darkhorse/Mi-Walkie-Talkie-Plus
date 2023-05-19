.class public Lcom/ifengyu/intercom/l/b/e/u;
.super Lcom/ifengyu/intercom/l/b/e/s;
.source "Mi3ViewModel.java"

# interfaces
.implements Lcom/ifengyu/blelib/b/a;


# static fields
.field private static final k:Ljava/lang/String; = "u"


# instance fields
.field private final b:Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

.field private final c:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/common/model/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/ifengyu/intercom/i/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/s;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    invoke-direct {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->b:Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    .line 3
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->c:Landroidx/lifecycle/o;

    .line 4
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    .line 5
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    .line 6
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->f:Landroidx/lifecycle/o;

    .line 7
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->g:Landroidx/lifecycle/o;

    .line 8
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    return-void
.end method

.method static synthetic D(Ljava/util/List;)Ljava/util/LinkedList;
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

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/ChannelModel;

    .line 4
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsRemoteCh()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_1
    const/16 v2, 0x50

    if-gt p0, v2, :cond_4

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v2, :cond_3

    .line 9
    new-instance v2, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/models/ChannelModel;-><init>()V

    .line 10
    invoke-virtual {v2, p0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelSeq(I)V

    const/4 v3, 0x2

    .line 11
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelType(I)V

    .line 12
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private synthetic E(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/u;->k:Ljava/lang/String;

    const-string v1, "import config file failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v1, "ACTION_IMPORT_CONFIG_FILE_CHANNELS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic G(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
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
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method private synthetic I(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->c:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic K(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/u;->k:Ljava/lang/String;

    const-string v1, "load device from db failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic L(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 2
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
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/database/a/e;->h(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :cond_0
    return-object v1
.end method

.method private synthetic N(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->c:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic P(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/u;->k:Ljava/lang/String;

    const-string v1, "update device to db failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private c(Ljava/util/List;)V
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

    sget-object v0, Lcom/ifengyu/intercom/l/b/e/p;->a:Lcom/ifengyu/intercom/l/b/e/p;

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/b/e/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/b/e/b;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/k;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    .line 5
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/u;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/l/b/e/u;)Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/l/b/e/u;->b:Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/l/b/e/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->l0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/l/b/e/u;->g:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->c(Ljava/util/List;)V

    return-void
.end method

.method private j0(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasTxFreq()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasRxFreq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/a/a/b;->e(Ljava/lang/Integer;Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/a/a/a;->e(Ljava/lang/Integer;Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/b;->f(Ljava/lang/Integer;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/a;->f(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->q0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic l(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/l/b/e/u;->f:Landroidx/lifecycle/o;

    return-object p0
.end method

.method private l0(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/b/e/n;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/b/e/n;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/b/e/j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/b/e/j;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    sget-object v1, Lcom/ifengyu/intercom/l/b/e/m;->a:Lcom/ifengyu/intercom/l/b/e/m;

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic m(Lcom/ifengyu/intercom/l/b/e/u;Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->j0(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)V

    return-void
.end method

.method private q0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    .line 2
    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    .line 3
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/b/e/u;->j0(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ACTION_IMPORT_CONFIG_FILE_CHANNELS"

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/ChannelModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance v2, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    invoke-direct {v2, v0, v1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->f:Landroidx/lifecycle/o;

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->g:Landroidx/lifecycle/o;

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/e/u;->Y()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$l;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/l/b/e/u$l;-><init>(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/LinkedList;)V

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/i/w0;->F1(Lcom/ifengyu/intercom/models/ChannelModel;Lcom/ifengyu/blelib/b/c;)V

    return-void

    :catch_0
    move-exception p1

    .line 7
    sget-object v2, Lcom/ifengyu/intercom/l/b/e/u;->k:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance v2, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    invoke-direct {v2, v0, v1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->f:Landroidx/lifecycle/o;

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->g:Landroidx/lifecycle/o;

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/e/u;->Y()V

    return-void
.end method

.method public B(Ljava/util/List;)V
    .locals 1
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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/e/u;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->Z(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->e0(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public C()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsRemoteCh()Z

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsRemoteCh()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public synthetic F(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->E(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic H(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->G(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic J(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->I(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public synthetic M(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->L(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic O(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->N(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public Q()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->g:Landroidx/lifecycle/o;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance v1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x1

    const-string v3, "ACTION_SYNC_CUSTOM_CHANNEL_END"

    invoke-direct {v1, v3, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$g;

    const-wide/16 v2, 0x2710

    invoke-direct {v1, p0, v2, v3}, Lcom/ifengyu/intercom/l/b/e/u$g;-><init>(Lcom/ifengyu/intercom/l/b/e/u;J)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w0;->f1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public R()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->h()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance v2, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v3, "ACTION_SYNCED_ALL_CHANNEL"

    invoke-direct {v2, v3, v1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/l/b/e/u;->T(Z)V

    return-void
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/l/b/e/u;->T(Z)V

    return-void
.end method

.method public T(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->f:Landroidx/lifecycle/o;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance v1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x1

    const-string v3, "ACTION_SYNC_REMOTE_CHANNEL_END"

    invoke-direct {v1, v3, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/e/u;->Q()V

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$f;

    const-wide/16 v2, 0x2710

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/ifengyu/intercom/l/b/e/u$f;-><init>(Lcom/ifengyu/intercom/l/b/e/u;JZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w0;->j1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w0;->e1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public V()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->i:Ljava/lang/String;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/o;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/l;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    sget-object v2, Lcom/ifengyu/intercom/l/b/e/q;->a:Lcom/ifengyu/intercom/l/b/e/q;

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/u$k;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w0;->g1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public X()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v0

    new-instance v3, Lcom/ifengyu/intercom/l/b/e/u$t;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/l/b/e/u$t;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/ifengyu/intercom/i/w0;->i1(IILcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public Y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$e;

    const-wide/16 v2, 0x2710

    invoke-direct {v1, p0, v2, v3}, Lcom/ifengyu/intercom/l/b/e/u$e;-><init>(Lcom/ifengyu/intercom/l/b/e/u;J)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w0;->h1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public Z(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$d;

    const-wide/16 v2, 0x2710

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/ifengyu/intercom/l/b/e/u$d;-><init>(Lcom/ifengyu/intercom/l/b/e/u;JLjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w0;->k1(Lcom/ifengyu/blelib/b/c;)V

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

    const/16 v0, 0x4e40

    if-eq p1, v0, :cond_7

    const/16 v0, 0x4e3f

    if-eq p1, v0, :cond_7

    const/16 v0, 0x4e42

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x4e3c

    if-ne p1, v0, :cond_6

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasSeq()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasType()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/b;->f(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/l/a/a/b;->e(Ljava/lang/Integer;Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto/16 :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/b;->f(Ljava/lang/Integer;)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasSeq()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasType()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 12
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/a;->f(Ljava/lang/Integer;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/l/a/a/a;->e(Ljava/lang/Integer;Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/a;->f(Ljava/lang/Integer;)V

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->g:Landroidx/lifecycle/o;

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->c()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x4e2e

    if-ne p1, v0, :cond_8

    .line 18
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    .line 19
    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/e/u;->b:Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->setFrom(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)V

    goto :goto_2

    .line 20
    :cond_7
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    .line 21
    new-instance p2, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    invoke-direct {p2}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;-><init>()V

    .line 22
    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setFrom(Lcom/ifengyu/intercom/protos/BleProtos$Channel;)V

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public a0(Lcom/ifengyu/intercom/models/ChannelModel;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance p2, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v0, "ACTION_ADD_CH_TO_STATE"

    invoke-direct {p2, v0, v1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh1Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh2Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->toProtoChannel()Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$r;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/l/b/e/u$r;-><init>(Lcom/ifengyu/intercom/l/b/e/u;I)V

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/i/w0;->A1(Lcom/ifengyu/intercom/protos/BleProtos$Channel;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public b0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/e/u;->d0()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/e/u;->c0()V

    return-void
.end method

.method public c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public e0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh2Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->toProtoChannel()Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/l/b/e/u$h;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/l/b/e/u$h;-><init>(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/i/w0;->A1(Lcom/ifengyu/intercom/protos/BleProtos$Channel;Lcom/ifengyu/blelib/b/c;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/a/b;->b(Ljava/lang/Integer;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v3, Lcom/ifengyu/intercom/l/b/e/u$i;

    invoke-direct {v3, p0, p1}, Lcom/ifengyu/intercom/l/b/e/u$i;-><init>(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/ifengyu/intercom/i/w0;->B1(Lcom/ifengyu/intercom/models/ChannelModel;ILcom/ifengyu/blelib/b/c;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/a/b;->b(Ljava/lang/Integer;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    const/4 v2, 0x2

    new-instance v3, Lcom/ifengyu/intercom/l/b/e/u$j;

    invoke-direct {v3, p0, p1}, Lcom/ifengyu/intercom/l/b/e/u$j;-><init>(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/ifengyu/intercom/i/w0;->B1(Lcom/ifengyu/intercom/models/ChannelModel;ILcom/ifengyu/blelib/b/c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public f0()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x50

    if-gt v0, v1, :cond_1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/l/a/a/a;->b(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    return-void

    .line 2
    :cond_2
    new-instance v1, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/models/ChannelModel;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelSeq(I)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelType(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public g0(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public h0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->a(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->a(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->i:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/t0;->k(Ljava/lang/String;)Lcom/ifengyu/intercom/i/w0;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    .line 5
    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/i/w0;->l1(Lcom/ifengyu/blelib/b/a;)V

    return-void
.end method

.method public k0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/u$m;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/w0;->C1(Ljava/lang/String;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public m0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/j0;->x(ILjava/lang/String;)V

    return-void
.end method

.method public n(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v1, 0x2

    const-string v2, "ACTION_ADD_CH_TO_STATE"

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh1Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh2Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->toProtoChannel()Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/u$q;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/i/w0;->A1(Lcom/ifengyu/intercom/protos/BleProtos$Channel;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/u$o;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/i/w0;->G1(ZLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v2, Lcom/ifengyu/intercom/l/b/e/u$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/e/u$b;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/i/w0;->F1(Lcom/ifengyu/intercom/models/ChannelModel;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public o0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/u$p;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/i/w0;->G1(ZLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/u;->k:Ljava/lang/String;

    const-string v1, "onCleared"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/i/w0;->z1(Lcom/ifengyu/blelib/b/a;)V

    :cond_0
    return-void
.end method

.method public p(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v2, "ACTION_ADD_CH_TO_STATE"

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    .line 3
    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh1Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 4
    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh2Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->toProtoChannel()Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/u$s;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/i/w0;->A1(Lcom/ifengyu/intercom/protos/BleProtos$Channel;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public p0(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/u$n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/u$n;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/w0;->D1(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v3

    new-instance v4, Lcom/ifengyu/intercom/l/b/e/u$c;

    invoke-direct {v4, p0, v0}, Lcom/ifengyu/intercom/l/b/e/u$c;-><init>(Lcom/ifengyu/intercom/l/b/e/u;Lcom/ifengyu/intercom/models/ChannelModel;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/ifengyu/intercom/i/w0;->z0(IILcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/u;->j:Lcom/ifengyu/intercom/i/w0;

    new-instance v2, Lcom/ifengyu/intercom/l/b/e/u$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/e/u$a;-><init>(Lcom/ifengyu/intercom/l/b/e/u;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/i/w0;->F1(Lcom/ifengyu/intercom/models/ChannelModel;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public s()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->h()I

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/u;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/u;->k:Ljava/lang/String;

    const-string v2, "remote or custom unfinished"

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public t()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->d:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public u()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->g:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public v()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->c:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public w()Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->b:Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    return-object v0
.end method

.method public x()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->h:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public y()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/common/model/OperationResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->e:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public z()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u;->f:Landroidx/lifecycle/o;

    return-object v0
.end method
