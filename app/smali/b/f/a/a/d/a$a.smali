.class final Lb/f/a/a/d/a$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$b;
.source "WrapperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Lb/f/a/a/d/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Lb/f/a/a/d/a$b;

.field final synthetic f:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic g:Landroidx/recyclerview/widget/GridLayoutManager$b;


# direct methods
.method constructor <init>(Lb/f/a/a/d/a$b;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/a/a/d/a$a;->e:Lb/f/a/a/d/a$b;

    iput-object p2, p0, Lb/f/a/a/d/a$a;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lb/f/a/a/d/a$a;->g:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lb/f/a/a/d/a$a;->e:Lb/f/a/a/d/a$b;

    iget-object v1, p0, Lb/f/a/a/d/a$a;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lb/f/a/a/d/a$a;->g:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-interface {v0, v1, v2, p1}, Lb/f/a/a/d/a$b;->a(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$b;I)I

    move-result p1

    return p1
.end method
