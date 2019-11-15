.class public final Lio/reactivex/internal/operators/observable/ac;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableElementAt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ac$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/o;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;JTT;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ac;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ac;->c:Ljava/lang/Object;

    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ac;->d:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ac;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ac$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ac;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ac;->c:Ljava/lang/Object;

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ac;->d:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ac$a;-><init>(Lio/reactivex/q;JLjava/lang/Object;Z)V

    invoke-interface {v6, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
