.class public final Lrx/internal/operators/OperatorObserveOn;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;,
        Lrx/internal/operators/OperatorObserveOn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/a$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/d;


# direct methods
.method public constructor <init>(Lrx/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn;->a:Lrx/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorObserveOn;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)",
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn;->a:Lrx/d;

    instance-of v0, v0, Lrx/e/c;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn;->a:Lrx/d;

    instance-of v0, v0, Lrx/e/g;

    if-nez v0, :cond_0

    new-instance v0, Lrx/internal/operators/OperatorObserveOn$a;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn;->a:Lrx/d;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorObserveOn$a;-><init>(Lrx/d;Lrx/e;)V

    invoke-virtual {v0}, Lrx/internal/operators/OperatorObserveOn$a;->a()V

    move-object p1, v0

    goto :goto_0
.end method
