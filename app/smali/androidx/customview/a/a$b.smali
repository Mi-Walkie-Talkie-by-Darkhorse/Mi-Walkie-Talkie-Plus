.class final Landroidx/customview/a/a$b;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/customview/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/customview/a/b$b<",
        "La/b/h<",
        "Landroidx/core/view/accessibility/b;",
        ">;",
        "Landroidx/core/view/accessibility/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/h<",
            "Landroidx/core/view/accessibility/b;",
            ">;)I"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, La/b/h;->a()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, La/b/h;

    invoke-virtual {p0, p1}, Landroidx/customview/a/a$b;->a(La/b/h;)I

    move-result p1

    return p1
.end method

.method public a(La/b/h;I)Landroidx/core/view/accessibility/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/h<",
            "Landroidx/core/view/accessibility/b;",
            ">;I)",
            "Landroidx/core/view/accessibility/b;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1, p2}, La/b/h;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/accessibility/b;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, La/b/h;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/a/a$b;->a(La/b/h;I)Landroidx/core/view/accessibility/b;

    move-result-object p1

    return-object p1
.end method
