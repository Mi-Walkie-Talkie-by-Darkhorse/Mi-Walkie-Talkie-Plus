.class final Lio/reactivex/internal/operators/observable/at$f;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lio/reactivex/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/g",
        "<TT;",
        "Lio/reactivex/o",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<TU;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/at$f;->a:Lio/reactivex/b/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/o",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/at$f;->a:Lio/reactivex/b/g;

    invoke-interface {v0, p1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The itemDelay returned a null ObservableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/bq;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/observable/bq;-><init>(Lio/reactivex/o;J)V

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->b(Ljava/lang/Object;)Lio/reactivex/b/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/bq;->map(Lio/reactivex/b/g;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/k;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/at$f;->a(Ljava/lang/Object;)Lio/reactivex/o;

    move-result-object v0

    return-object v0
.end method
