.class Lcom/ifengyu/intercom/ui/widget/dialog/a0$a$a;
.super Ljava/lang/Object;
.source "UpdateApkInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->d(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Lcom/ifengyu/intercom/update/dolphin/j;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;

    iget-object p2, p2, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->b(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->c(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p1, p2, v1, v1, v0}, Lcom/ifengyu/intercom/update/dolphin/j;->a(Landroid/app/Activity;IILcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    return-void
.end method
