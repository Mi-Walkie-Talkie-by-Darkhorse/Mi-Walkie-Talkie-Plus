.class Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;
.super Lcom/ifengyu/intercom/a/b/d;
.source "SealSharkMcuUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;I)V
    .locals 3

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->a(Ljava/io/File;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    return-void
.end method
