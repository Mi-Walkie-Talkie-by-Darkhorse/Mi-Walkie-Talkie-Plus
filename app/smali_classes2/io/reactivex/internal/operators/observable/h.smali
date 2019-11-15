.class public final Lio/reactivex/internal/operators/observable/h;
.super Lio/reactivex/s;
.source "ObservableAnySingle.java"

# interfaces
.implements Lio/reactivex/internal/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/s",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/internal/a/a",
        "<",
        "Ljava/lang/Boolean;",
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

.field final b:Lio/reactivex/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/p",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/b/p",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/s;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h;->a:Lio/reactivex/o;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/h;->b:Lio/reactivex/b/p;

    return-void
.end method


# virtual methods
.method protected b(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/h$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/h;->b:Lio/reactivex/b/p;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/h$a;-><init>(Lio/reactivex/t;Lio/reactivex/b/p;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method

.method public f_()Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/g;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/h;->a:Lio/reactivex/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/h;->b:Lio/reactivex/b/p;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/g;-><init>(Lio/reactivex/o;Lio/reactivex/b/p;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method
