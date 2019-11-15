.class public final Lio/reactivex/internal/operators/observable/c;
.super Ljava/lang/Object;
.source "BlockingObservableMostRecent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/c$a;
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

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/c;->a:Lio/reactivex/o;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/c;->b:Ljava/lang/Object;

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

    new-instance v0, Lio/reactivex/internal/operators/observable/c$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/c;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/c$a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/c;->a:Lio/reactivex/o;

    invoke-interface {v1, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/c$a;->a()Lio/reactivex/internal/operators/observable/c$a$a;

    move-result-object v0

    return-object v0
.end method
