.class Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->unsubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;)V
    .locals 0

    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe$1;->a:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe$1;->a:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    iget-object v0, v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->a:Lrx/d$a;

    invoke-virtual {v0}, Lrx/d$a;->unsubscribe()V

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe$1;->a:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->b:Z

    return-void
.end method
