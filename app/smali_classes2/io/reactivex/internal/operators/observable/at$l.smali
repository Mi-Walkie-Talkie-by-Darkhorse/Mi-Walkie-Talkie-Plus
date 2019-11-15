.class final Lio/reactivex/internal/operators/observable/at$l;
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
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/g",
        "<",
        "Lio/reactivex/k",
        "<TT;>;",
        "Lio/reactivex/o",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;+",
            "Lio/reactivex/o",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/r;


# direct methods
.method constructor <init>(Lio/reactivex/b/g;Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b/g",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;+",
            "Lio/reactivex/o",
            "<TR;>;>;",
            "Lio/reactivex/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/at$l;->a:Lio/reactivex/b/g;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/at$l;->b:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/k;)Lio/reactivex/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<TT;>;)",
            "Lio/reactivex/o",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/at$l;->a:Lio/reactivex/b/g;

    invoke-interface {v0, p1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The selector returned a null ObservableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;

    invoke-static {v0}, Lio/reactivex/k;->wrap(Lio/reactivex/o;)Lio/reactivex/k;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/at$l;->b:Lio/reactivex/r;

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/r;)Lio/reactivex/k;

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

    check-cast p1, Lio/reactivex/k;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/at$l;->a(Lio/reactivex/k;)Lio/reactivex/o;

    move-result-object v0

    return-object v0
.end method
