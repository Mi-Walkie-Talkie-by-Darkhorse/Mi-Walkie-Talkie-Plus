.class public final Lio/reactivex/internal/operators/observable/q;
.super Lio/reactivex/s;
.source "ObservableCountSingle.java"

# interfaces
.implements Lio/reactivex/internal/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/s",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lio/reactivex/internal/a/a",
        "<",
        "Ljava/lang/Long;",
        ">;"
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

    invoke-direct {p0}, Lio/reactivex/s;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q;->a:Lio/reactivex/o;

    return-void
.end method


# virtual methods
.method public b(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/q$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/q$a;-><init>(Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method

.method public f_()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/p;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q;->a:Lio/reactivex/o;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/p;-><init>(Lio/reactivex/o;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method
