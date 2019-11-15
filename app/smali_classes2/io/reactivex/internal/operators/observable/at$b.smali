.class final Lio/reactivex/internal/operators/observable/at$b;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lio/reactivex/c/a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:J

.field private final d:Ljava/util/concurrent/TimeUnit;

.field private final e:Lio/reactivex/r;


# direct methods
.method constructor <init>(Lio/reactivex/k;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/at$b;->a:Lio/reactivex/k;

    iput p2, p0, Lio/reactivex/internal/operators/observable/at$b;->b:I

    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/at$b;->c:J

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/at$b;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/at$b;->e:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/c/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/c/a",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/at$b;->a:Lio/reactivex/k;

    iget v1, p0, Lio/reactivex/internal/operators/observable/at$b;->b:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/at$b;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/at$b;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/at$b;->e:Lio/reactivex/r;

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/r;)Lio/reactivex/c/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/at$b;->a()Lio/reactivex/c/a;

    move-result-object v0

    return-object v0
.end method
