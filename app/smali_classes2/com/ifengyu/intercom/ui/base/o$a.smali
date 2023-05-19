.class Lcom/ifengyu/intercom/ui/base/o$a;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/view/FixedEditText$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/base/o;->o3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/base/o;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/base/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/base/o;->n3(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/base/o;->g3(Lcom/ifengyu/intercom/ui/base/o;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o$a;->a:Lcom/ifengyu/intercom/ui/base/o;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/base/o;->A:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    :cond_0
    return-void
.end method
