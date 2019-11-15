.class Landroid/support/transition/aa;
.super Landroid/support/transition/o;
.source "TransitionSetIcs.java"

# interfaces
.implements Landroid/support/transition/ab;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private c:Landroid/support/transition/ad;


# direct methods
.method public constructor <init>(Landroid/support/transition/q;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/transition/o;-><init>()V

    new-instance v0, Landroid/support/transition/ad;

    invoke-direct {v0}, Landroid/support/transition/ad;-><init>()V

    iput-object v0, p0, Landroid/support/transition/aa;->c:Landroid/support/transition/ad;

    iget-object v0, p0, Landroid/support/transition/aa;->c:Landroid/support/transition/ad;

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/aa;->a(Landroid/support/transition/q;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/transition/aa;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/aa;->c:Landroid/support/transition/ad;

    invoke-virtual {v0, p1}, Landroid/support/transition/ad;->a(I)Landroid/support/transition/ad;

    return-object p0
.end method

.method public a(Landroid/support/transition/p;)Landroid/support/transition/aa;
    .locals 2

    iget-object v0, p0, Landroid/support/transition/aa;->c:Landroid/support/transition/ad;

    check-cast p1, Landroid/support/transition/o;

    iget-object v1, p1, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    invoke-virtual {v0, v1}, Landroid/support/transition/ad;->a(Landroid/support/transition/y;)Landroid/support/transition/ad;

    return-object p0
.end method

.method public synthetic b(I)Landroid/support/transition/ab;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/transition/aa;->a(I)Landroid/support/transition/aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/support/transition/p;)Landroid/support/transition/ab;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/transition/aa;->a(Landroid/support/transition/p;)Landroid/support/transition/aa;

    move-result-object v0

    return-object v0
.end method
