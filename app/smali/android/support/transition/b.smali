.class Landroid/support/transition/b;
.super Landroid/support/transition/ad;
.source "AutoTransitionPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/transition/ad;-><init>()V

    invoke-virtual {p0, v2}, Landroid/support/transition/b;->a(I)Landroid/support/transition/ad;

    new-instance v0, Landroid/support/transition/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/transition/j;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/transition/b;->a(Landroid/support/transition/y;)Landroid/support/transition/ad;

    move-result-object v0

    new-instance v1, Landroid/support/transition/f;

    invoke-direct {v1}, Landroid/support/transition/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/transition/ad;->a(Landroid/support/transition/y;)Landroid/support/transition/ad;

    move-result-object v0

    new-instance v1, Landroid/support/transition/j;

    invoke-direct {v1, v2}, Landroid/support/transition/j;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/transition/ad;->a(Landroid/support/transition/y;)Landroid/support/transition/ad;

    return-void
.end method
