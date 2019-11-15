.class Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$12;
.super Ljava/lang/Object;
.source "MiVoipSdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->destroy()V
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

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$12;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$12;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$800(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lio/agora/rtc/c;

    invoke-static {}, Lio/agora/rtc/c;->a()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$12;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$802(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Lio/agora/rtc/c;)Lio/agora/rtc/c;

    return-void
.end method
