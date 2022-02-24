.class public abstract Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;
.super Ljava/lang/Object;
.source "QMUIFragmentEffectHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qmuiteam/qmui/arch/effect/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->b:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    return-object v0
.end method

.method public abstract a(Lcom/qmuiteam/qmui/arch/effect/a;)V
    .param p1    # Lcom/qmuiteam/qmui/arch/effect/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/arch/effect/a;

    .line 3
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;->a(Lcom/qmuiteam/qmui/arch/effect/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract b(Lcom/qmuiteam/qmui/arch/effect/a;)Z
    .param p1    # Lcom/qmuiteam/qmui/arch/effect/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
