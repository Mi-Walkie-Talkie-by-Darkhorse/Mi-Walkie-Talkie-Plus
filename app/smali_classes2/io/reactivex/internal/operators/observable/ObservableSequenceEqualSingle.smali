.class public final Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;
.super Lio/reactivex/s;
.source "ObservableSequenceEqualSingle.java"

# interfaces
.implements Lio/reactivex/internal/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;,
        Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;
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
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/d",
            "<-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/o;Lio/reactivex/b/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<+TT;>;",
            "Lio/reactivex/o",
            "<+TT;>;",
            "Lio/reactivex/b/d",
            "<-TT;-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/s;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->a:Lio/reactivex/o;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->b:Lio/reactivex/o;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->c:Lio/reactivex/b/d;

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->d:I

    return-void
.end method


# virtual methods
.method public b(Lio/reactivex/t;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->a:Lio/reactivex/o;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->b:Lio/reactivex/o;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->c:Lio/reactivex/b/d;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;-><init>(Lio/reactivex/t;ILio/reactivex/o;Lio/reactivex/o;Lio/reactivex/b/d;)V

    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a()V

    return-void
.end method

.method public f_()Lio/reactivex/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->a:Lio/reactivex/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->b:Lio/reactivex/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->c:Lio/reactivex/b/d;

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;-><init>(Lio/reactivex/o;Lio/reactivex/o;Lio/reactivex/b/d;I)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method
