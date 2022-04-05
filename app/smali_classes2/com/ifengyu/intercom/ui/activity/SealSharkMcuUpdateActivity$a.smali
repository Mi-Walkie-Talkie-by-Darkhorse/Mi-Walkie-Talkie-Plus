.class Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;
.super Lcom/ifengyu/intercom/g/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/g/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;I)V
    .locals 2

    const/4 p2, 0x3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->a(Ljava/io/File;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    return-void
.end method
