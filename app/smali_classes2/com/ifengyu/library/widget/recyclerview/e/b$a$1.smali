.class Lcom/ifengyu/library/widget/recyclerview/e/b$a$1;
.super Ljava/lang/Object;
.source "SimpleClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/ifengyu/library/widget/recyclerview/e/b$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/recyclerview/e/b$a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a$1;->b:Lcom/ifengyu/library/widget/recyclerview/e/b$a;

    iput-object p2, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a$1;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method
