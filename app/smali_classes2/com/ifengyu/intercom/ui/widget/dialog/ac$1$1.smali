.class Lcom/ifengyu/intercom/ui/widget/dialog/ac$1$1;
.super Ljava/lang/Object;
.source "UpdateApkInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->d(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Lcom/ifengyu/intercom/update/dolphin/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->b(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->c(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    move-result-object v2

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/ifengyu/intercom/update/dolphin/j;->a(Landroid/app/Activity;IILcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    return-void
.end method
