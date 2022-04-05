.class public Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener1Model"
.end annotation


# instance fields
.field blockCount:I

.field final currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

.field final id:I

.field volatile isFirstConnect:Ljava/lang/Boolean;

.field isFromResumed:Ljava/lang/Boolean;

.field isStarted:Ljava/lang/Boolean;

.field totalLength:J


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    iput p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->id:I

    return v0
.end method

.method public getTotalLength()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->totalLength:J

    return-wide v0
.end method

.method public onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 6
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->blockCount:I

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->totalLength:J

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isStarted:Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isStarted:Ljava/lang/Boolean;

    :cond_0
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFromResumed:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFromResumed:Ljava/lang/Boolean;

    :cond_2
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFirstConnect:Ljava/lang/Boolean;

    if-nez p1, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFirstConnect:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method
