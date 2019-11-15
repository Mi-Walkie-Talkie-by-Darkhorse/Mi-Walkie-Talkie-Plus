.class public Landroid/support/transition/t;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# static fields
.field private static a:Landroid/support/transition/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/support/transition/v;

    invoke-direct {v0}, Landroid/support/transition/v;-><init>()V

    sput-object v0, Landroid/support/transition/t;->a:Landroid/support/transition/w;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/transition/x;

    invoke-direct {v0}, Landroid/support/transition/x;-><init>()V

    sput-object v0, Landroid/support/transition/t;->a:Landroid/support/transition/w;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/transition/m;)V
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/transition/m;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v1, Landroid/support/transition/t;->a:Landroid/support/transition/w;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p0, v0}, Landroid/support/transition/w;->a(Landroid/view/ViewGroup;Landroid/support/transition/p;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    goto :goto_0
.end method
