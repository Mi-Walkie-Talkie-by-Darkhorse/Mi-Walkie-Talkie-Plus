.class public final Lio/reactivex/internal/operators/observable/b;
.super Ljava/lang/Object;
.source "BlockingObservableLatest.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b;->a:Lio/reactivex/o;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/b$a;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/b$a;-><init>()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/b;->a:Lio/reactivex/o;

    invoke-static {v1}, Lio/reactivex/k;->wrap(Lio/reactivex/o;)Lio/reactivex/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/k;->materialize()Lio/reactivex/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/q;)V

    return-object v0
.end method
