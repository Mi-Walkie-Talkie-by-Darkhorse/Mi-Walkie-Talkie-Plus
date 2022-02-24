.class public Lcom/ifengyu/intercom/lite/h/g0;
.super Landroidx/lifecycle/a;
.source "ConfigFileViewModel.java"


# static fields
.field private static final f:Ljava/lang/String; = "g0"


# instance fields
.field private b:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;


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
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->b:Landroidx/lifecycle/p;

    .line 3
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->c:Landroidx/lifecycle/p;

    .line 4
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->d:Landroidx/lifecycle/p;

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    return-void
.end method

.method public static synthetic a(Lcom/ifengyu/intercom/lite/h/g0;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/h/g0;->i(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/ifengyu/intercom/lite/h/g0;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/h/g0;->h(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    const-string v1, "delete config file failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic d(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    const-string v1, "load config failed failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private e(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;)I"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f11017f

    .line 6
    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    .line 9
    invoke-virtual {v4}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/ifengyu/library/a/l;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 15
    sget-object v5, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_3

    return v3

    :cond_3
    new-array v1, v2, [Ljava/lang/Integer;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 18
    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v3, v1}, Lcom/ifengyu/intercom/lite/utils/g;->a([Ljava/lang/Integer;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    :cond_4
    return v0
.end method

.method static synthetic e(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    const-string v1, "update config file failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    const-string v0, "delete config file success"

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/l;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/l;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/h;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private i(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/h/q;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/h/q;-><init>(Lcom/ifengyu/intercom/lite/h/g0;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    return-object p1
.end method

.method static synthetic j(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    const-string v0, "update config file success"

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->l()Lcom/ifengyu/intercom/lite/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/a;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/f;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/p;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/p;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/n;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/n;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    new-instance v1, Lcom/ifengyu/intercom/lite/h/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/c;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 5
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    const-string v1, "insert config file failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/g0;->c:Landroidx/lifecycle/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/d;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 9
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 10
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/h/i;->a:Lcom/ifengyu/intercom/lite/h/i;

    sget-object v1, Lcom/ifengyu/intercom/lite/h/b;->a:Lcom/ifengyu/intercom/lite/h/b;

    .line 11
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->b:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public synthetic b(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lcom/ifengyu/intercom/lite/models/ConfigFileModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f11017f

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->m()Lcom/ifengyu/intercom/lite/f/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/ifengyu/intercom/lite/f/c;->a()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/lite/h/g0;->e(Ljava/util/List;)I

    move-result v1

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setName(Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->m()Lcom/ifengyu/intercom/lite/f/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/c;->a(Ljava/util/List;)V

    return-object p1
.end method

.method public b(Ljava/lang/Long;)V
    .locals 2

    .line 7
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/e;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 8
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 9
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/j;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    new-instance v1, Lcom/ifengyu/intercom/lite/h/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/r;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 10
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic b(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    const-string v1, "load channel failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/g0;->d:Landroidx/lifecycle/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Landroidx/lifecycle/p;
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

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->d:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public synthetic c(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inset config file success, model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->c:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->b:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->c:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public synthetic d(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lcom/ifengyu/intercom/lite/models/ConfigFileModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->l()Lcom/ifengyu/intercom/lite/f/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/lite/f/a;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setChannelModelList(Ljava/util/List;)V

    return-object p1
.end method

.method public synthetic d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/lite/h/g0;->f:Ljava/lang/String;

    const-string v1, "load channel success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->d:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->m()Lcom/ifengyu/intercom/lite/f/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/c;->b(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)J

    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setId(Ljava/lang/Long;)V

    .line 22
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getChannelModelList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setConfigId(Ljava/lang/Long;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->l()Lcom/ifengyu/intercom/lite/f/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/lite/f/a;->a(Ljava/util/List;)Ljava/util/List;

    .line 26
    :cond_1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->m()Lcom/ifengyu/intercom/lite/f/c;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/lite/h/a;->a:Lcom/ifengyu/intercom/lite/h/a;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/h/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/h/k;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    sget-object v2, Lcom/ifengyu/intercom/lite/h/o;->a:Lcom/ifengyu/intercom/lite/h/o;

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic f(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lcom/ifengyu/intercom/lite/models/ConfigFileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/g0;->e:Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->m()Lcom/ifengyu/intercom/lite/f/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/c;->a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    return-object p1
.end method

.method public g(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/h/g;-><init>(Lcom/ifengyu/intercom/lite/h/g0;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/h/s;->a:Lcom/ifengyu/intercom/lite/h/s;

    sget-object v1, Lcom/ifengyu/intercom/lite/h/m;->a:Lcom/ifengyu/intercom/lite/h/m;

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
