.class public final Lio/reactivex/internal/operators/observable/be;
.super Lio/reactivex/g;
.source "ObservableReduceMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/be$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/g",
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

.field final b:Lio/reactivex/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/c",
            "<TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/b/c",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/g;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/be;->a:Lio/reactivex/o;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/be;->b:Lio/reactivex/b/c;

    return-void
.end method


# virtual methods
.method protected b(Lio/reactivex/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/be;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/be$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/be;->b:Lio/reactivex/b/c;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/be$a;-><init>(Lio/reactivex/h;Lio/reactivex/b/c;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
