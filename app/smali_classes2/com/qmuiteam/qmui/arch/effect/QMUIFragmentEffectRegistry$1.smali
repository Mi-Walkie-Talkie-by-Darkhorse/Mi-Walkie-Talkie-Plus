.class Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$1;
.super Ljava/lang/Object;
.source "QMUIFragmentEffectRegistry.java"

# interfaces
.implements Landroidx/lifecycle/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->a(Landroidx/lifecycle/k;Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;)Lcom/qmuiteam/qmui/arch/effect/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$1;->b:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

    iput p2, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/k;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$1;->b:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;

    iget p2, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$1;->a:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;->b(I)V

    :cond_0
    return-void
.end method
