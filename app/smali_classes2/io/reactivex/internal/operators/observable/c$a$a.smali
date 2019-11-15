.class final Lio/reactivex/internal/operators/observable/c$a$a;
.super Ljava/lang/Object;
.source "BlockingObservableMostRecent.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/observable/c$a;

.field private b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/c$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/c$a$a;->a:Lio/reactivex/internal/operators/observable/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->a:Lio/reactivex/internal/operators/observable/c$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/c$a;->a:Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->a:Lio/reactivex/internal/operators/observable/c$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/c$a;->a:Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/c$a$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
