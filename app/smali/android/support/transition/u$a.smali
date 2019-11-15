.class Landroid/support/transition/u$a;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/transition/y;

.field b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/transition/y;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/transition/u$a;->a:Landroid/support/transition/y;

    iput-object p2, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    invoke-direct {p0}, Landroid/support/transition/u$a;->a()V

    sget-object v0, Landroid/support/transition/u;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/support/transition/u;->a()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    iget-object v0, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    iget-object v3, p0, Landroid/support/transition/u$a;->a:Landroid/support/transition/y;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/transition/u$a;->a:Landroid/support/transition/y;

    new-instance v3, Landroid/support/transition/u$a$1;

    invoke-direct {v3, p0, v2}, Landroid/support/transition/u$a$1;-><init>(Landroid/support/transition/u$a;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v1, v3}, Landroid/support/transition/y;->a(Landroid/support/transition/y$b;)Landroid/support/transition/y;

    iget-object v1, p0, Landroid/support/transition/u$a;->a:Landroid/support/transition/y;

    iget-object v2, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y;

    iget-object v2, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/support/transition/y;->b(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u$a;->a:Landroid/support/transition/y;

    iget-object v1, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/transition/u$a;->a()V

    sget-object v0, Landroid/support/transition/u;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/support/transition/u;->a()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y;

    iget-object v2, p0, Landroid/support/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/support/transition/y;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/transition/u$a;->a:Landroid/support/transition/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/transition/y;->a(Z)V

    return-void
.end method
