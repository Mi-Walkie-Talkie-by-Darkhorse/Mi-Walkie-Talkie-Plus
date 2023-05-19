.class public Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;
.super Ljava/lang/Object;
.source "MediaGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Landroid/graphics/drawable/Drawable;

.field c:Z

.field d:Landroidx/recyclerview/widget/RecyclerView$y;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ZLandroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->a:I

    .line 3
    iput-object p2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->b:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-boolean p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->c:Z

    .line 5
    iput-object p4, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$b;->d:Landroidx/recyclerview/widget/RecyclerView$y;

    return-void
.end method
