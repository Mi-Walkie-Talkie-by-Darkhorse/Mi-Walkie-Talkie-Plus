.class public final Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
.super Lretrofit2/c$a;
.source "RxJava2CallAdapterFactory.java"


# instance fields
.field private final scheduler:Lio/reactivex/r;


# direct methods
.method private constructor <init>(Lio/reactivex/r;)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/c$a;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/r;

    return-void
.end method

.method public static create()Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 2

    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/r;)V

    return-object v0
.end method

.method public static createWithScheduler(Lio/reactivex/r;)Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    invoke-direct {v0, p0}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/r;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/l;)Lretrofit2/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/l;",
            ")",
            "Lretrofit2/c",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/reactivex/a;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;

    const-class v1, Ljava/lang/Void;

    iget-object v2, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/r;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;-><init>(Ljava/lang/reflect/Type;Lio/reactivex/r;ZZZZZZ)V

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lio/reactivex/e;

    if-ne v0, v1, :cond_1

    const/4 v5, 0x1

    :goto_1
    const-class v1, Lio/reactivex/s;

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    :goto_2
    const-class v1, Lio/reactivex/g;

    if-ne v0, v1, :cond_3

    const/4 v7, 0x1

    :goto_3
    const-class v1, Lio/reactivex/k;

    if-eq v0, v1, :cond_4

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_7

    if-eqz v5, :cond_5

    const-string v0, "Flowable"

    :goto_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return type must be parameterized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<Foo> or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<? extends Foo>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-eqz v6, :cond_6

    const-string v0, "Single"

    goto :goto_4

    :cond_6
    const-string v0, "Observable"

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit2/k;

    if-ne v1, v2, :cond_9

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v1, 0x0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, v0}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    :goto_5
    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;

    iget-object v2, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/r;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapter;-><init>(Ljava/lang/reflect/Type;Lio/reactivex/r;ZZZZZZ)V

    goto/16 :goto_0

    :cond_9
    const-class v2, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;

    if-ne v1, v2, :cond_b

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v1, 0x0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, v0}, Lcom/jakewharton/retrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x1

    move-object v1, v0

    goto :goto_5
.end method
