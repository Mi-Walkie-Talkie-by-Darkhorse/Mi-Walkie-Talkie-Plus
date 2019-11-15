.class final Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;
.super Ljava/lang/Object;
.source "RxJava2CallAdapter.java"

# interfaces
.implements Lretrofit2/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final isBody:Z

.field private final isCompletable:Z

.field private final isFlowable:Z

.field private final isMaybe:Z

.field private final isResult:Z

.field private final isSingle:Z

.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lio/reactivex/r;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/r;ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->responseType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->scheduler:Lio/reactivex/r;

    iput-boolean p3, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isResult:Z

    iput-boolean p4, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isBody:Z

    iput-boolean p5, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isFlowable:Z

    iput-boolean p6, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isSingle:Z

    iput-boolean p7, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isMaybe:Z

    iput-boolean p8, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isCompletable:Z

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/b",
            "<TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v1, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable;

    invoke-direct {v1, p1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable;-><init>(Lretrofit2/b;)V

    iget-boolean v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isResult:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable;

    invoke-direct {v0, v1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable;-><init>(Lio/reactivex/k;)V

    :goto_0
    iget-object v1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->scheduler:Lio/reactivex/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->scheduler:Lio/reactivex/r;

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isFlowable:Z

    if-eqz v1, :cond_4

    sget-object v1, Lio/reactivex/BackpressureStrategy;->e:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/k;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/e;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-boolean v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isBody:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable;

    invoke-direct {v0, v1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable;-><init>(Lio/reactivex/k;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isSingle:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lio/reactivex/k;->singleOrError()Lio/reactivex/s;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isMaybe:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lio/reactivex/k;->singleElement()Lio/reactivex/g;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->isCompletable:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/reactivex/k;->ignoreElements()Lio/reactivex/a;

    move-result-object v0

    goto :goto_1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
