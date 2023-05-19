.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;
.super Lcom/ifengyu/intercom/o/c/c;
.source "SealSharkMcuUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->R(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/o/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Ljava/lang/String;

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

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->j(Ljava/io/File;I)V

    return-void
.end method

.method public j(Ljava/io/File;I)V
    .locals 2

    const/4 p2, 0x3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$a;->d:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V

    :goto_0
    return-void
.end method
