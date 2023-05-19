.class Lcom/uber/autodispose/c$a$d;
.super Ljava/lang/Object;
.source "AutoDispose.java"

# interfaces
.implements Lcom/uber/autodispose/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/c$a;->d(Lio/reactivex/Observable;)Lcom/uber/autodispose/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uber/autodispose/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/Observable;

.field final synthetic b:Lcom/uber/autodispose/c$a;


# direct methods
.method constructor <init>(Lcom/uber/autodispose/c$a;Lio/reactivex/Observable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uber/autodispose/c$a$d;->b:Lcom/uber/autodispose/c$a;

    iput-object p2, p0, Lcom/uber/autodispose/c$a$d;->a:Lio/reactivex/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/f;

    iget-object v1, p0, Lcom/uber/autodispose/c$a$d;->a:Lio/reactivex/Observable;

    iget-object v2, p0, Lcom/uber/autodispose/c$a$d;->b:Lcom/uber/autodispose/c$a;

    iget-object v2, v2, Lcom/uber/autodispose/c$a;->a:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/f;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/f;

    iget-object v1, p0, Lcom/uber/autodispose/c$a$d;->a:Lio/reactivex/Observable;

    iget-object v2, p0, Lcom/uber/autodispose/c$a$d;->b:Lcom/uber/autodispose/c$a;

    iget-object v2, v2, Lcom/uber/autodispose/c$a;->a:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/f;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/uber/autodispose/f;

    iget-object v1, p0, Lcom/uber/autodispose/c$a$d;->a:Lio/reactivex/Observable;

    iget-object v2, p0, Lcom/uber/autodispose/c$a$d;->b:Lcom/uber/autodispose/c$a;

    iget-object v2, v2, Lcom/uber/autodispose/c$a;->a:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/f;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
