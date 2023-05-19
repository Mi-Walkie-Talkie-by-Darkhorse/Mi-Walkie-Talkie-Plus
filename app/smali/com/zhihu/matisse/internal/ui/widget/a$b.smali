.class Lcom/zhihu/matisse/internal/ui/widget/a$b;
.super Ljava/lang/Object;
.source "AlbumsSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/widget/a;->h(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/matisse/internal/ui/widget/a;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/internal/ui/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a$b;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zhihu/matisse/R$dimen;->album_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a$b;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/widget/a;->d(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/a$b;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-static {v1}, Lcom/zhihu/matisse/internal/ui/widget/a;->c(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    mul-int/lit8 p1, p1, 0x6

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/a$b;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-static {v1}, Lcom/zhihu/matisse/internal/ui/widget/a;->c(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    mul-int p1, p1, v1

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->H(I)V

    .line 6
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a$b;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/widget/a;->d(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method
