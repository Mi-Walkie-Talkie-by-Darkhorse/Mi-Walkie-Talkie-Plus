.class Lcom/uber/autodispose/c$a;
.super Ljava/lang/Object;
.source "AutoDispose.java"

# interfaces
.implements Lcom/uber/autodispose/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/c;->b(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uber/autodispose/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/CompletableSource;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uber/autodispose/c$a;->a:Lio/reactivex/CompletableSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/Completable;)Lcom/uber/autodispose/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/uber/autodispose/c$a$a;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/c$a$a;-><init>(Lcom/uber/autodispose/c$a;Lio/reactivex/Completable;)V

    return-object v0
.end method

.method public bridge synthetic apply(Lio/reactivex/Completable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/c$a;->a(Lio/reactivex/Completable;)Lcom/uber/autodispose/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Flowable;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/c$a;->b(Lio/reactivex/Flowable;)Lcom/uber/autodispose/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Maybe;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/c$a;->c(Lio/reactivex/Maybe;)Lcom/uber/autodispose/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Observable;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/c$a;->d(Lio/reactivex/Observable;)Lcom/uber/autodispose/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Single;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/c$a;->f(Lio/reactivex/Single;)Lcom/uber/autodispose/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/parallel/ParallelFlowable;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/c$a;->e(Lio/reactivex/parallel/ParallelFlowable;)Lcom/uber/autodispose/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/reactivex/Flowable;)Lcom/uber/autodispose/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;)",
            "Lcom/uber/autodispose/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/c$a$b;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/c$a$b;-><init>(Lcom/uber/autodispose/c$a;Lio/reactivex/Flowable;)V

    return-object v0
.end method

.method public c(Lio/reactivex/Maybe;)Lcom/uber/autodispose/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Maybe<",
            "TT;>;)",
            "Lcom/uber/autodispose/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/c$a$c;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/c$a$c;-><init>(Lcom/uber/autodispose/c$a;Lio/reactivex/Maybe;)V

    return-object v0
.end method

.method public d(Lio/reactivex/Observable;)Lcom/uber/autodispose/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lcom/uber/autodispose/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/c$a$d;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/c$a$d;-><init>(Lcom/uber/autodispose/c$a;Lio/reactivex/Observable;)V

    return-object v0
.end method

.method public e(Lio/reactivex/parallel/ParallelFlowable;)Lcom/uber/autodispose/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;)",
            "Lcom/uber/autodispose/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/c$a;->a:Lio/reactivex/CompletableSource;

    new-instance v1, Lcom/uber/autodispose/a;

    invoke-direct {v1, p1, v0}, Lcom/uber/autodispose/a;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/CompletableSource;)V

    return-object v1
.end method

.method public f(Lio/reactivex/Single;)Lcom/uber/autodispose/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Single<",
            "TT;>;)",
            "Lcom/uber/autodispose/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/c$a$e;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/c$a$e;-><init>(Lcom/uber/autodispose/c$a;Lio/reactivex/Single;)V

    return-object v0
.end method
