.class Landroid/support/transition/v;
.super Landroid/support/transition/w;
.source "TransitionManagerStaticsIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/p;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/transition/u;->a(Landroid/view/ViewGroup;Landroid/support/transition/y;)V

    return-void

    :cond_0
    check-cast p2, Landroid/support/transition/o;

    iget-object v0, p2, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    goto :goto_0
.end method
