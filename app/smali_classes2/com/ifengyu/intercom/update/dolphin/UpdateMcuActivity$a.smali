.class Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;
.super Ljava/lang/Object;
.source "UpdateMcuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Z)Z

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Z)Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->e(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    return-void
.end method
