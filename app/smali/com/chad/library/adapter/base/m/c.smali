.class public final synthetic Lcom/chad/library/adapter/base/m/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/m/f;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/m/f;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/m/c;->a:Lcom/chad/library/adapter/base/m/f;

    iput-object p2, p0, Lcom/chad/library/adapter/base/m/c;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/m/c;->a:Lcom/chad/library/adapter/base/m/f;

    iget-object v1, p0, Lcom/chad/library/adapter/base/m/c;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v0, v1}, Lcom/chad/library/adapter/base/m/f;->p(Lcom/chad/library/adapter/base/m/f;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
