.class Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;
.super Ljava/lang/Object;
.source "MiVoipSdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->muteUser(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

.field final synthetic val$muted:Z

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    iput p2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;->val$uid:I

    iput-boolean p3, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;->val$muted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$800(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lio/agora/rtc/c;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;->val$uid:I

    iget-boolean v2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;->val$muted:Z

    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/c;->a(IZ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteUser uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;->val$uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$10;->val$muted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
