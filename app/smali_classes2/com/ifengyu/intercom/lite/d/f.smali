.class public Lcom/ifengyu/intercom/lite/d/f;
.super Ljava/lang/Object;


# direct methods
.method static synthetic a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/http/entity/HttpResultFunction;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/http/entity/HttpResultFunction;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/ifengyu/intercom/lite/http/entity/HttpResult<",
            "TT;>;TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/lite/d/b;->a:Lcom/ifengyu/intercom/lite/d/b;

    return-object v0
.end method

.method static synthetic b(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/http/entity/HttpResultFunction;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/http/entity/HttpResultFunction;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/ifengyu/intercom/lite/http/entity/HttpResult<",
            "TT;>;TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/lite/d/c;->a:Lcom/ifengyu/intercom/lite/d/c;

    return-object v0
.end method

.method static synthetic c(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/lite/d/a;->a:Lcom/ifengyu/intercom/lite/d/a;

    return-object v0
.end method
