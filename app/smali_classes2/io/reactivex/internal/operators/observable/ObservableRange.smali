.class public final Lio/reactivex/internal/operators/observable/ObservableRange;
.super Lio/reactivex/k;
.source "ObservableRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/k",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->a:I

    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->b:J

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->a:I

    int-to-long v2, v1

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->b:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;-><init>(Lio/reactivex/q;JJ)V

    invoke-interface {p1, v0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->d()V

    return-void
.end method
