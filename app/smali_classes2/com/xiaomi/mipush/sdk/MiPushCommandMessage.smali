.class public Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;


# static fields
.field private static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final KEY_COMMAND:Ljava/lang/String; = "command"

.field private static final KEY_COMMAND_ARGUMENTS:Ljava/lang/String; = "commandArguments"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private category:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private commandArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reason:Ljava/lang/String;

.field private resultCode:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    .locals 4

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    const-string v1, "command"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->command:Ljava/lang/String;

    const-string v1, "resultCode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->resultCode:J

    const-string v1, "reason"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->reason:Ljava/lang/String;

    const-string v1, "commandArguments"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->commandArguments:Ljava/util/List;

    const-string v1, "category"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->category:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->commandArguments:Ljava/util/List;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->resultCode:J

    return-wide v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->category:Ljava/lang/String;

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->command:Ljava/lang/String;

    return-void
.end method

.method public setCommandArguments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->commandArguments:Ljava/util/List;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->reason:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->resultCode:J

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "command"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->command:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resultCode"

    iget-wide v2, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->resultCode:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "reason"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->reason:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->commandArguments:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v2, "commandArguments"

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->commandArguments:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string v0, "category"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, resultCode={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->resultCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, reason={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, category={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, commandArguments={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->commandArguments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
