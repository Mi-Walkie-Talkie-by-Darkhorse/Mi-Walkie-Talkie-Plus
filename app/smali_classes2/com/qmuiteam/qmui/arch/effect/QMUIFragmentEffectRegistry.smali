.class public Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;
.super Landroidx/lifecycle/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final transient b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/v;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/k;Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;)Lcom/qmuiteam/qmui/arch/effect/c;
    .locals 4
    .param p1    # Landroidx/lifecycle/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/qmuiteam/qmui/arch/effect/a;",
            ">(",
            "Landroidx/lifecycle/k;",
            "Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler<",
            "TT;>;)",
            "Lcom/qmuiteam/qmui/arch/effect/c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-interface {p1}, Landroidx/lifecycle/k;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;

    invoke-direct {v3, p2, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;-><init>(Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$1;

    invoke-direct {p2, p0, v0}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$1;-><init>(Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;I)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/j;)V

    new-instance p1, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$a;

    invoke-direct {p1, p0, v0}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$a;-><init>(Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;I)V

    return-object p1
.end method

.method public a(Lcom/qmuiteam/qmui/arch/effect/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/qmuiteam/qmui/arch/effect/a;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->b(Lcom/qmuiteam/qmui/arch/effect/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a(Lcom/qmuiteam/qmui/arch/effect/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a()V

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 3

    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
