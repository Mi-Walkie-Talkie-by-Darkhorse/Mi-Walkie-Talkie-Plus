.class Lcom/mi/mimsgsdk/MsgSdkManager$3;
.super Lcom/mi/mimsgsdk/service/aidl/ICustomCallback$Stub;
.source "MsgSdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/MsgSdkManager;->uploadImage(Ljava/lang/String;Lcom/mi/mimsgsdk/callback/UploadImageCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

.field final synthetic val$callback:Lcom/mi/mimsgsdk/callback/UploadImageCallback;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/MsgSdkManager;Lcom/mi/mimsgsdk/callback/UploadImageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$3;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iput-object p2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$3;->val$callback:Lcom/mi/mimsgsdk/callback/UploadImageCallback;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/service/aidl/ICustomCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$3;->val$callback:Lcom/mi/mimsgsdk/callback/UploadImageCallback;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/callback/UploadImageCallback;->onResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->upload:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_upload-code-%d-%d-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$3;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$100(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v2

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    iget v5, p1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    int-to-long v6, v5

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x2

    aput-wide v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    return-void
.end method
