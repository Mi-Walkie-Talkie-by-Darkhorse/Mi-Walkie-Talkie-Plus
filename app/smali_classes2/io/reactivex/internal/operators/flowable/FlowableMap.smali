.class public final Lio/reactivex/internal/operators/flowable/FlowableMap;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableMap;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lc/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/c<",
            "-TU;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;

    check-cast p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMap;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMap;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;-><init>(Lc/a/c;Lio/reactivex/functions/Function;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method
