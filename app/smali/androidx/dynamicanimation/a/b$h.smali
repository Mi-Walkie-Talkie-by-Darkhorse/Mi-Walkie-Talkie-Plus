.class final Landroidx/dynamicanimation/a/b$h;
.super Landroidx/dynamicanimation/a/b$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/dynamicanimation/a/b$r;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/a/b$f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->F(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->e(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/a/b$h;->a(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/a/b$h;->a(Landroid/view/View;F)V

    return-void
.end method
