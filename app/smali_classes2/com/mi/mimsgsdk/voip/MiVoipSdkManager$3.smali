.class Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$3;
.super Ljava/lang/Object;
.source "MiVoipSdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->MiVoipEngineInit(Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$3;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$3;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$3;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$500(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mi/mimsgsdk/voip/EngineCallback;

    iget-object v3, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$3;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v3}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$600(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mi/mimsgsdk/voip/EngineCallback;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$700(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;Lio/agora/rtc/a;)V

    return-void
.end method
