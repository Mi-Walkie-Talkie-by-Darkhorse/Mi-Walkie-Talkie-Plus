.class Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;
.super Ljava/lang/Object;
.source "QMUIFragmentEffectRegistry.java"

# interfaces
.implements Landroidx/lifecycle/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EffectHandlerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qmuiteam/qmui/arch/effect/a;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/h;"
    }
.end annotation


# instance fields
.field final a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Landroidx/lifecycle/Lifecycle;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/qmuiteam/qmui/arch/effect/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler<",
            "TT;>;",
            "Landroidx/lifecycle/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->c:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;

    .line 4
    iput-object p2, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->b:Landroidx/lifecycle/Lifecycle;

    .line 5
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/i;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->b(Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->d:Ljava/lang/Class;

    return-void
.end method

.method private b(Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qmuiteam/qmui/arch/effect/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;

    if-eq v2, v3, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 6
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 7
    array-length v2, p1

    if-lez v2, :cond_1

    .line 8
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_1

    :catchall_0
    nop

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "FragmentEffectRegistry"

    const-string v2, "Error to get FragmentEffectHandler\'s generic parameter type"

    .line 9
    invoke-static {v0, v2, p1}, Lcom/qmuiteam/qmui/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->b:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/i;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->c:Ljava/util/ArrayList;

    return-void
.end method

.method c(Lcom/qmuiteam/qmui/arch/effect/a;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;->c()Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->b:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->b:Landroidx/lifecycle/Lifecycle;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->c:Ljava/util/ArrayList;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;->a(Lcom/qmuiteam/qmui/arch/effect/a;)V

    return-void
.end method

.method d(Lcom/qmuiteam/qmui/arch/effect/a;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->d:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;->d(Lcom/qmuiteam/qmui/arch/effect/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStateChanged(Landroidx/lifecycle/j;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->c:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->c:Ljava/util/ArrayList;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 6
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/arch/effect/a;

    invoke-virtual {p2, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;->a(Lcom/qmuiteam/qmui/arch/effect/a;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;

    invoke-virtual {p2, p1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;->b(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectRegistry$EffectHandlerWrapper;->a()V

    :cond_2
    :goto_0
    return-void
.end method
