.class public abstract Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "BasicIntQueueSubscription.java"

# interfaces
.implements Lio/reactivex/internal/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/internal/a/d",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5c95ffaa2e3a1e66L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
