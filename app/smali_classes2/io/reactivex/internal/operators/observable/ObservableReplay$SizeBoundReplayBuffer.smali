.class final Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;
.super Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x51dae9f17ccbb88eL


# instance fields
.field final c:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;-><init>()V

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;->c:I

    return-void
.end method


# virtual methods
.method c()V
    .locals 2

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;->b:I

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;->c:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;->a()V

    :cond_0
    return-void
.end method