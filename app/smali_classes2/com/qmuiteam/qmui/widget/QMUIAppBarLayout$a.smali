.class Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$a;
.super Landroidx/core/view/WindowInsetsCompat;
.source "QMUIAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout;->f(Landroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$a;->c:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method


# virtual methods
.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$a;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method