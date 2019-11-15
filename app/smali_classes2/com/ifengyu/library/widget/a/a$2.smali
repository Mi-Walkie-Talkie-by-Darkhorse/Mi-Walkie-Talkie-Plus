.class Lcom/ifengyu/library/widget/a/a$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Lcom/ifengyu/library/widget/a/a$2;->a:Lcom/ifengyu/library/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a$2;->a:Lcom/ifengyu/library/widget/a/a;

    iget-object v0, v0, Lcom/ifengyu/library/widget/a/a;->c:Lcom/ifengyu/library/widget/a/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a$2;->a:Lcom/ifengyu/library/widget/a/a;

    iget-object v0, v0, Lcom/ifengyu/library/widget/a/a;->c:Lcom/ifengyu/library/widget/a/a$a;

    iget-object v1, p0, Lcom/ifengyu/library/widget/a/a$2;->a:Lcom/ifengyu/library/widget/a/a;

    invoke-interface {v0, v1}, Lcom/ifengyu/library/widget/a/a$a;->a(Lcom/ifengyu/library/widget/a/a;)V

    :cond_0
    return-void
.end method
