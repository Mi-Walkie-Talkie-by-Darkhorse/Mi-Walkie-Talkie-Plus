.class Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;
.super Ljava/lang/Object;
.source "MiVoipSdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->enableAudioVolumeIndication(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

.field final synthetic val$interval:I

.field final synthetic val$smooth:I


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    iput p2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;->val$interval:I

    iput p3, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;->val$smooth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$800(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lio/agora/rtc/c;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;->val$interval:I

    iget v2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$11;->val$smooth:I

    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/c;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableAudioVolumeIndication called success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
