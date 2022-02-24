.class Landroidx/transition/u$a$a;
.super Landroidx/transition/t;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/u$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/b/a;

.field final synthetic b:Landroidx/transition/u$a;


# direct methods
.method constructor <init>(Landroidx/transition/u$a;La/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/u$a$a;->b:Landroidx/transition/u$a;

    iput-object p2, p0, Landroidx/transition/u$a$a;->a:La/b/a;

    invoke-direct {p0}, Landroidx/transition/t;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/transition/u$a$a;->a:La/b/a;

    iget-object v1, p0, Landroidx/transition/u$a$a;->b:Landroidx/transition/u$a;

    iget-object v1, v1, Landroidx/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    return-void
.end method
