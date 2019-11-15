.class Landroid/support/transition/ad$1;
.super Landroid/support/transition/y$c;
.source "TransitionSetPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ad;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/y;

.field final synthetic b:Landroid/support/transition/ad;


# direct methods
.method constructor <init>(Landroid/support/transition/ad;Landroid/support/transition/y;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/ad$1;->b:Landroid/support/transition/ad;

    iput-object p2, p0, Landroid/support/transition/ad$1;->a:Landroid/support/transition/y;

    invoke-direct {p0}, Landroid/support/transition/y$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/y;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/ad$1;->a:Landroid/support/transition/y;

    invoke-virtual {v0}, Landroid/support/transition/y;->e()V

    invoke-virtual {p1, p0}, Landroid/support/transition/y;->b(Landroid/support/transition/y$b;)Landroid/support/transition/y;

    return-void
.end method
