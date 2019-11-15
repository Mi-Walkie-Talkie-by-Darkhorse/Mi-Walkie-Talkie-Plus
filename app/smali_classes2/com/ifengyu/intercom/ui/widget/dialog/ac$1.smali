.class Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;
.super Ljava/lang/Object;
.source "UpdateApkInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/ac;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const v2, 0x7f09020e

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->a(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->b(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->d(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Lcom/ifengyu/intercom/update/dolphin/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->b(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->c(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    move-result-object v2

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/ifengyu/intercom/update/dolphin/j;->a(Landroid/app/Activity;IILcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->b(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0900cc

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f09006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f0901fe

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto :goto_0
.end method
