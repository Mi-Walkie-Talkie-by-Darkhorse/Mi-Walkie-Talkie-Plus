.class public final Lio/reactivex/internal/operators/observable/ad;
.super Lio/reactivex/g;
.source "ObservableElementAtMaybe.java"

# interfaces
.implements Lio/reactivex/internal/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ad$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/g",
        "<TT;>;",
        "Lio/reactivex/internal/a/a",
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

.field final b:J


# direct methods
.method public constructor <init>(Lio/reactivex/o;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/g;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ad;->a:Lio/reactivex/o;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ad;->b:J

    return-void
.end method


# virtual methods
.method public b(Lio/reactivex/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ad;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/ad$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ad;->b:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/ad$a;-><init>(Lio/reactivex/h;J)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method

.method public f_()Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/ac;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ad;->a:Lio/reactivex/o;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ad;->b:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ac;-><init>(Lio/reactivex/o;JLjava/lang/Object;Z)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method
