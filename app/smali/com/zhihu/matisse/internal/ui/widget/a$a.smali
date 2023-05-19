.class Lcom/zhihu/matisse/internal/ui/widget/a$a;
.super Ljava/lang/Object;
.source "AlbumsSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/widget/a;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a$a;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a$a;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/zhihu/matisse/internal/ui/widget/a;->a(Lcom/zhihu/matisse/internal/ui/widget/a;Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a$a;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/widget/a;->b(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a$a;->a:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/widget/a;->b(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
