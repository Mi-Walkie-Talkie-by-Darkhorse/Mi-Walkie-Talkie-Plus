.class Landroid/support/design/internal/b;
.super Landroid/support/design/internal/a;
.source "BottomNavigationAnimationHelperIcs.java"


# instance fields
.field private final a:Landroid/support/transition/z;


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/support/design/internal/a;-><init>()V

    new-instance v0, Landroid/support/transition/a;

    invoke-direct {v0}, Landroid/support/transition/a;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/transition/z;->a(I)Landroid/support/transition/z;

    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    const-wide/16 v2, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/support/transition/z;->a(J)Landroid/support/transition/m;

    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/transition/z;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/m;

    new-instance v0, Landroid/support/design/internal/d;

    invoke-direct {v0}, Landroid/support/design/internal/d;-><init>()V

    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    invoke-virtual {v1, v0}, Landroid/support/transition/z;->a(Landroid/support/transition/m;)Landroid/support/transition/z;

    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/z;

    invoke-static {p1, v0}, Landroid/support/transition/t;->a(Landroid/view/ViewGroup;Landroid/support/transition/m;)V

    return-void
.end method
