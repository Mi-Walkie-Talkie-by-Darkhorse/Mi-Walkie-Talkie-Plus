.class public Lcom/ifengyu/intercom/l/b/e/t;
.super Landroidx/lifecycle/a;
.source "Mi3UpgradeViewModel.java"


# static fields
.field private static final h:Ljava/lang/String; = "t"


# instance fields
.field private final b:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/http/entity/VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/ifengyu/intercom/i/w0;

.field private g:I


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
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->b:Landroidx/lifecycle/o;

    .line 3
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    .line 4
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->d:Landroidx/lifecycle/o;

    return-void
.end method

.method private A([B)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/h/b/a/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/h/b/a/a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/h/b/a/a;->j([B)V

    .line 3
    new-instance v1, Lcom/ifengyu/intercom/h/b/a/d/a;

    invoke-direct {v1, v0}, Lcom/ifengyu/intercom/h/b/a/d/a;-><init>(Lcom/ifengyu/intercom/h/b/a/a;)V

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/e/t;->f:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/i/w0;->c1([B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    new-instance v2, Lcom/ifengyu/intercom/l/b/e/c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/e/c;-><init>(Lcom/ifengyu/intercom/l/b/e/t;)V

    .line 5
    invoke-virtual {p1, v2}, Lno/nordicsemi/android/ble/u2;->I(Lno/nordicsemi/android/ble/v2/b;)Lno/nordicsemi/android/ble/u2;

    new-instance v2, Lcom/ifengyu/intercom/l/b/e/h;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/l/b/e/h;-><init>(Lcom/ifengyu/intercom/l/b/e/t;Lcom/ifengyu/intercom/h/b/a/a;)V

    .line 6
    invoke-virtual {p1, v1, v2}, Lno/nordicsemi/android/ble/u2;->W(Lno/nordicsemi/android/ble/data/c;Lno/nordicsemi/android/ble/v2/l;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/l/b/e/i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/b/e/i;-><init>(Lcom/ifengyu/intercom/l/b/e/t;)V

    .line 7
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/l/b/e/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/b/e/f;-><init>(Lcom/ifengyu/intercom/l/b/e/t;)V

    .line 8
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    .line 9
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method

.method private B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    const/4 v1, 0x7

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/library/utils/r;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/ifengyu/library/utils/j;->i(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/t;->f:Lcom/ifengyu/intercom/i/w0;

    array-length v2, v0

    new-instance v3, Lcom/ifengyu/intercom/l/b/e/t$b;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/l/b/e/t$b;-><init>(Lcom/ifengyu/intercom/l/b/e/t;[B)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/i/w0;->s1(ILcom/ifengyu/blelib/b/c;)V

    return-void

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/t;->h:Ljava/lang/String;

    const-string v2, "firmware data is null, please check file"

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private E()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/l/b/e/g;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/l/b/e/g;-><init>(Lcom/ifengyu/intercom/l/b/e/t;I)V

    .line 4
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/l/b/e/e;->a:Lcom/ifengyu/intercom/l/b/e/e;

    sget-object v2, Lcom/ifengyu/intercom/l/b/e/d;->a:Lcom/ifengyu/intercom/l/b/e/d;

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/l/b/e/t;)Landroidx/lifecycle/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/l/b/e/t;->b:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/l/b/e/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/e/t;->B()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/l/b/e/t;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/t;->A([B)V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/l/b/e/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/e/t;->E()V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    invoke-direct {v1, p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/l/b/e/t$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/l/b/e/t$a;-><init>(Lcom/ifengyu/intercom/l/b/e/t;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method

.method private synthetic n(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic p(Lcom/ifengyu/intercom/h/b/a/a;Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/h/b/a/a;->g()I

    move-result p1

    .line 2
    sget-object p2, Lcom/ifengyu/intercom/l/b/e/t;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "progress: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/e/t;->d:Landroidx/lifecycle/o;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/e/t;->d:Landroidx/lifecycle/o;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/e/t;->d:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic r(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/l/b/e/t;->h:Ljava/lang/String;

    const-string v0, "firmware data write finished"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/e/t;->z()V

    return-void
.end method

.method private synthetic t(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/l/b/e/t;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firmware data write failed, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic v(ILjava/lang/Integer;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->e:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionSoft(I)V

    .line 4
    invoke-interface {p2, v0}, Lcom/ifengyu/intercom/database/a/e;->h(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :cond_0
    return-object v0
.end method

.method static synthetic x(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/ifengyu/intercom/l/b/e/t;->h:Ljava/lang/String;

    const-string v0, "update version to db success"

    invoke-static {p0, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic y(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/t;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->f:Lcom/ifengyu/intercom/i/w0;

    new-instance v1, Lcom/ifengyu/intercom/l/b/e/t$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/e/t$c;-><init>(Lcom/ifengyu/intercom/l/b/e/t;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w0;->r1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->e:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/t0;->k(Ljava/lang/String;)Lcom/ifengyu/intercom/i/w0;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->f:Lcom/ifengyu/intercom/i/w0;

    return-void
.end method

.method public D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->f:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->v()Z

    move-result v0

    const/4 v1, 0x7

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/l/b/e/t;->h:Ljava/lang/String;

    const-string v2, "upgrade start...."

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/ifengyu/library/utils/r;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/b/e/t;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lcom/ifengyu/intercom/p/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/e/t;->B()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/b/e/t;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public h(II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/l/b/e/t;->g:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "mi3"

    const-string v2, "zh_cn"

    .line 3
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/ifengyu/intercom/n/a;->T(Ljava/lang/String;IILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/e/t;->b:Landroidx/lifecycle/o;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ifengyu/intercom/l/b/e/a;

    invoke-direct {v0, p2}, Lcom/ifengyu/intercom/l/b/e/a;-><init>(Landroidx/lifecycle/o;)V

    sget-object p2, Lcom/ifengyu/intercom/l/b/e/r;->a:Lcom/ifengyu/intercom/l/b/e/r;

    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->g:I

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/d;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->d:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public l()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public m()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/http/entity/VersionInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t;->b:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public synthetic o(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/t;->n(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected onCleared()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    return-void
.end method

.method public synthetic q(Lcom/ifengyu/intercom/h/b/a/a;Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/l/b/e/t;->p(Lcom/ifengyu/intercom/h/b/a/a;Landroid/bluetooth/BluetoothDevice;[BI)V

    return-void
.end method

.method public synthetic s(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/e/t;->r(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic u(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/e/t;->t(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public synthetic w(ILjava/lang/Integer;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/e/t;->v(ILjava/lang/Integer;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
