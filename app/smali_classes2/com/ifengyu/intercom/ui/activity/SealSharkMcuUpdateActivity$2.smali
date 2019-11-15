.class Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;
.super Ljava/lang/Object;
.source "SealSharkMcuUpdateActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-static {v2}, Lcom/ifengyu/intercom/b/w;->h(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/ifengyu/intercom/b/w;->k(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->k(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->f(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    goto :goto_0
.end method
