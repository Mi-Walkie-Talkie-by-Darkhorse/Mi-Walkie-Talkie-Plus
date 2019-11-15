.class Lcom/ifengyu/library/widget/a/a$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/widget/a/a;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/widget/a/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/a/a$1;->a:Lcom/ifengyu/library/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a$1;->a:Lcom/ifengyu/library/widget/a/a;

    iget-object v0, v0, Lcom/ifengyu/library/widget/a/a;->b:Lcom/ifengyu/library/widget/a/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a$1;->a:Lcom/ifengyu/library/widget/a/a;

    iget-object v0, v0, Lcom/ifengyu/library/widget/a/a;->b:Lcom/ifengyu/library/widget/a/a$b;

    invoke-interface {v0, p2}, Lcom/ifengyu/library/widget/a/a$b;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
