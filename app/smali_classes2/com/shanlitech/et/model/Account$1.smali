.class Lcom/shanlitech/et/model/Account$1;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/model/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shanlitech/et/model/Account;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/model/Account;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/shanlitech/et/core/CoreService$a;

    .line 2
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-virtual {p2}, Lcom/shanlitech/et/core/CoreService$a;->a()Lcom/shanlitech/et/core/CoreService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shanlitech/et/model/Account;->access$002(Lcom/shanlitech/et/model/Account;Lcom/shanlitech/et/core/CoreService;)Lcom/shanlitech/et/core/CoreService;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-ge p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {p1}, Lcom/shanlitech/et/model/Account;->access$000(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/CoreService;

    move-result-object p1

    iget-object p2, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {p2}, Lcom/shanlitech/et/model/Account;->access$100(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/sl/model/IAccountOption;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shanlitech/et/core/CoreService;->b(Landroid/app/Notification;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    const-string p2, "CoreService connected success..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/model/Account;->access$200(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {p1}, Lcom/shanlitech/et/model/Account;->access$400(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/b;

    move-result-object p2

    const-string v0, "account"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shanlitech/et/model/Account;->access$302(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {p1}, Lcom/shanlitech/et/model/Account;->access$400(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/b;

    move-result-object p2

    const-string v0, "pwd"

    invoke-virtual {p2, v0, v1}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shanlitech/et/model/Account;->access$502(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {p1}, Lcom/shanlitech/et/model/Account;->access$400(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/b;

    move-result-object p1

    const-string p2, "auto_login"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {p1}, Lcom/shanlitech/et/model/Account;->access$300(Lcom/shanlitech/et/model/Account;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {p1}, Lcom/shanlitech/et/model/Account;->access$500(Lcom/shanlitech/et/model/Account;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {p1}, Lcom/shanlitech/et/model/Account;->access$300(Lcom/shanlitech/et/model/Account;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {v1}, Lcom/shanlitech/et/model/Account;->access$500(Lcom/shanlitech/et/model/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {v2}, Lcom/shanlitech/et/model/Account;->access$400(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/b;

    move-result-object v2

    const-string v3, "role"

    invoke-virtual {v2, v3, v0}, Lcom/shanlitech/et/core/b;->b(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    invoke-static {v3}, Lcom/shanlitech/et/model/Account;->access$400(Lcom/shanlitech/et/model/Account;)Lcom/shanlitech/et/core/b;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Lcom/shanlitech/et/core/b;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/shanlitech/et/model/Account;->login(Ljava/lang/String;Ljava/lang/String;II)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    const-string p2, "service>break login by <account or pwd is null>... "

    invoke-static {p1, p2}, Lcom/shanlitech/et/model/Account;->access$200(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    const-string p2, "service>break login by <auto_login is false>"

    invoke-static {p1, p2}, Lcom/shanlitech/et/model/Account;->access$200(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shanlitech/et/model/Account$1;->this$0:Lcom/shanlitech/et/model/Account;

    const-string v0, "service>disconnected..."

    invoke-static {p1, v0}, Lcom/shanlitech/et/model/Account;->access$200(Lcom/shanlitech/et/model/Account;Ljava/lang/String;)V

    return-void
.end method
