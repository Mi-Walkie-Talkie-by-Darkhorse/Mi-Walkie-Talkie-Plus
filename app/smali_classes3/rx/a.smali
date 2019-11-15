.class public Lrx/a;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a$b;,
        Lrx/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Lrx/d/b;


# instance fields
.field final a:Lrx/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/a$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->c()Lrx/d/b;

    move-result-object v0

    sput-object v0, Lrx/a;->b:Lrx/d/b;

    return-void
.end method

.method protected constructor <init>(Lrx/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/a$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/a;->a:Lrx/a$a;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lrx/internal/util/e;->b(Ljava/lang/Object;)Lrx/internal/util/e;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/a$a;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a$a",
            "<TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lrx/a;

    sget-object v1, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v1, p0}, Lrx/d/b;->a(Lrx/a$a;)Lrx/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/a;-><init>(Lrx/a$a;)V

    return-object v0
.end method

.method private static a(Lrx/e;Lrx/a;)Lrx/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<-TT;>;",
            "Lrx/a",
            "<TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lrx/a;->a:Lrx/a$a;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lrx/e;->onStart()V

    instance-of v0, p0, Lrx/c/a;

    if-nez v0, :cond_2

    new-instance v0, Lrx/c/a;

    invoke-direct {v0, p0}, Lrx/c/a;-><init>(Lrx/e;)V

    move-object p0, v0

    :cond_2
    :try_start_0
    sget-object v0, Lrx/a;->b:Lrx/d/b;

    iget-object v1, p1, Lrx/a;->a:Lrx/a$a;

    invoke-virtual {v0, p1, v1}, Lrx/d/b;->a(Lrx/a;Lrx/a$a;)Lrx/a$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx/a$a;->call(Ljava/lang/Object;)V

    sget-object v0, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v0, p0}, Lrx/d/b;->a(Lrx/f;)Lrx/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    :try_start_1
    sget-object v1, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v1, v0}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/e;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v0, v2}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method static synthetic c()Lrx/d/b;
    .locals 1

    sget-object v0, Lrx/a;->b:Lrx/d/b;

    return-object v0
.end method


# virtual methods
.method public final a()Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<",
            "Lrx/a",
            "<TT;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/a$b;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a$b",
            "<+TR;-TT;>;)",
            "Lrx/a",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Lrx/a;

    new-instance v1, Lrx/a$1;

    invoke-direct {v1, p0, p1}, Lrx/a$1;-><init>(Lrx/a;Lrx/a$b;)V

    invoke-direct {v0, v1}, Lrx/a;-><init>(Lrx/a$a;)V

    return-object v0
.end method

.method public final a(Lrx/d;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lrx/internal/util/e;

    if-eqz v0, :cond_0

    check-cast p0, Lrx/internal/util/e;

    invoke-virtual {p0, p1}, Lrx/internal/util/e;->c(Lrx/d;)Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/OperatorObserveOn;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorObserveOn;-><init>(Lrx/d;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/a$b;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/e;)Lrx/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lrx/e;->onStart()V

    sget-object v0, Lrx/a;->b:Lrx/d/b;

    iget-object v1, p0, Lrx/a;->a:Lrx/a$a;

    invoke-virtual {v0, p0, v1}, Lrx/d/b;->a(Lrx/a;Lrx/a$a;)Lrx/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/a$a;->call(Ljava/lang/Object;)V

    sget-object v0, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v0, p1}, Lrx/d/b;->a(Lrx/f;)Lrx/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    :try_start_1
    sget-object v1, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v1, v0}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/e;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lrx/a;->b:Lrx/d/b;

    invoke-virtual {v0, v2}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method public final b(Lrx/d;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lrx/internal/util/e;

    if-eqz v0, :cond_0

    check-cast p0, Lrx/internal/util/e;

    invoke-virtual {p0, p1}, Lrx/internal/util/e;->c(Lrx/d;)Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lrx/a;->a()Lrx/a;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/c;

    invoke-direct {v1, p1}, Lrx/internal/operators/c;-><init>(Lrx/d;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/a$b;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lrx/f;
    .locals 1

    new-instance v0, Lrx/a$2;

    invoke-direct {v0, p0}, Lrx/a$2;-><init>(Lrx/a;)V

    invoke-virtual {p0, v0}, Lrx/a;->b(Lrx/e;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/e;)Lrx/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    invoke-static {p1, p0}, Lrx/a;->a(Lrx/e;Lrx/a;)Lrx/f;

    move-result-object v0

    return-object v0
.end method
