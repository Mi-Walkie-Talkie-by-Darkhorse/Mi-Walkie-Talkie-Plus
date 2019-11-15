.class public final Lio/reactivex/internal/operators/observable/ObservableRangeLong;
.super Lio/reactivex/k;
.source "ObservableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/k",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong;->a:J

    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong;->b:J

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong;->a:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong;->a:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong;->b:J

    add-long/2addr v4, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;-><init>(Lio/reactivex/q;JJ)V

    invoke-interface {p1, v0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->d()V

    return-void
.end method
