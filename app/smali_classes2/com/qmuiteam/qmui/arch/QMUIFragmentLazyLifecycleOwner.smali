.class public Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/k;
.implements Landroidx/lifecycle/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/l;

.field private b:Z

.field private c:Landroidx/lifecycle/Lifecycle$State;

.field private d:Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->b:Z

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->b:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->d:Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;

    return-void
.end method

.method private a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l;-><init>(Landroidx/lifecycle/k;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_3
    :goto_0
    return-void
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    return-object v0
.end method

.method onCreate(Landroidx/lifecycle/k;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->d:Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;

    invoke-interface {p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner$a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->b:Z

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->c:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method onDestroy(Landroidx/lifecycle/k;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->a:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method onPause(Landroidx/lifecycle/k;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->a()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->e:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method onResume(Landroidx/lifecycle/k;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->e:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    iget-boolean p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->a()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    if-ne p1, v0, :cond_0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method onStart(Landroidx/lifecycle/k;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    iget-boolean p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->b:Z

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method onStop(Landroidx/lifecycle/k;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->c:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->c:Landroidx/lifecycle/Lifecycle$State;

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a:Landroidx/lifecycle/l;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->a()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentLazyLifecycleOwner;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method
