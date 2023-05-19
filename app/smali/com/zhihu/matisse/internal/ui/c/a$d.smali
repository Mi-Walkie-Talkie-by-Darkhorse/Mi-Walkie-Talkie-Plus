.class Lcom/zhihu/matisse/internal/ui/c/a$d;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "AlbumMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/matisse/internal/ui/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    .line 2
    check-cast p1, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/c/a$d;->a:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    return-void
.end method

.method static synthetic a(Lcom/zhihu/matisse/internal/ui/c/a$d;)Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/c/a$d;->a:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    return-object p0
.end method
