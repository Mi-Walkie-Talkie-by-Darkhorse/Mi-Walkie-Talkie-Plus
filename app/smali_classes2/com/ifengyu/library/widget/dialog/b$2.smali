.class Lcom/ifengyu/library/widget/dialog/b$2;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/widget/dialog/b;->d(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/widget/dialog/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/dialog/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/b$2;->a:Lcom/ifengyu/library/widget/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b$2;->a:Lcom/ifengyu/library/widget/dialog/b;

    iget-object v0, v0, Lcom/ifengyu/library/widget/dialog/b;->q:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b$2;->a:Lcom/ifengyu/library/widget/dialog/b;

    iget-object v0, v0, Lcom/ifengyu/library/widget/dialog/b;->q:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b$2;->a:Lcom/ifengyu/library/widget/dialog/b;

    iget-object v1, v1, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b$2;->a:Lcom/ifengyu/library/widget/dialog/b;

    iget-boolean v0, v0, Lcom/ifengyu/library/widget/dialog/b;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b$2;->a:Lcom/ifengyu/library/widget/dialog/b;

    iget-object v0, v0, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a;->dismiss()V

    :cond_1
    return-void
.end method
