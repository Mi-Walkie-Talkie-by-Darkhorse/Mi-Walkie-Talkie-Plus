.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;
.super Lio/reactivex/Flowable;
.source "FlowableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MulticastFlowable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final connectableFactory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final selector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable<",
            "TU;>;+",
            "Ld/b/b<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TU;>;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable<",
            "TU;>;+",
            "Ld/b/b<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;->connectableFactory:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;->selector:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Ld/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;->connectableFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The connectableFactory returned null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/flowables/ConnectableFlowable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;->selector:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null Publisher"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    invoke-direct {v2, p1}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;-><init>(Ld/b/c;)V

    .line 4
    invoke-interface {v1, v2}, Ld/b/b;->subscribe(Ld/b/c;)V

    .line 5
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer;

    invoke-direct {p1, p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer;-><init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable;Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;)V

    invoke-virtual {v0, p1}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ld/b/c;)V

    return-void

    :catchall_1
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ld/b/c;)V

    return-void
.end method